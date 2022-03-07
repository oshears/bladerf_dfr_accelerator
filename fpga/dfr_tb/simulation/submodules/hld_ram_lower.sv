//// (c) 1992-2021 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 


//see hld_ram.sv for a description of the parameters, ports, and general functionality of all the hld_ram layers

//this is the top level for the bottom layers of hld_ram
//the upper layers deal with value-added features like width/depth stitching to minimize physical memory usage
//the lower layers deal with hiding the complexity of Quartus IP and adding soft logic when hardened logic lacks functionality
//this layer selects which of the specific Quartus IP wrappers to use, and it models how much physical memory will be used

`default_nettype none

`include "acl_parameter_assert.svh"

module hld_ram_lower #(
    //geometry configuration
    parameter  int DEPTH,
    parameter  int WIDTH,
    parameter  int BE_WIDTH,
    parameter  int BITS_PER_ENABLE, //this is for modelling the number of physical memories used, created at the bits per enable layer, adjusted as fewer geometries are allowed as we go down the layers

    //geometry constants
    parameter  bit MINIMIZE_MEMORY_USAGE,
    parameter  int MIN_PHYSICAL_DEPTH,

    //memory initialization
    parameter  bit USE_MEM_INIT_FILE,
    parameter  bit ZERO_INITIALIZE_MEM,
    parameter      MEM_INIT_NAME,

    //memory configuration
    parameter      RAM_BLOCK_TYPE,
    parameter      RAM_OPERATION_MODE,
    parameter      DEVICE_FAMILY,
    parameter      READ_DURING_WRITE,
    parameter  bit REGISTER_A_READDATA,
    parameter  bit REGISTER_B_ADDRESS,
    parameter  bit REGISTER_B_READDATA,

    //try to use memory hardened logic
    parameter  bit USE_ENABLE,
    parameter  bit COMMON_IN_CLOCK_EN,
    parameter  bit COMMON_OUT_CLOCK_EN,

    //this should be a localparam but Quartus standard doesn't support it, leave as a parameter but don't override when instantiating
    parameter  int ADDR = $clog2(DEPTH)
) (
    input  wire                 clock,
    //no reset

    //port a
    input  wire      [ADDR-1:0] a_address,
    input  wire                 a_write,
    input  wire     [WIDTH-1:0] a_writedata,
    input  wire  [BE_WIDTH-1:0] a_byteenable,
    output logic    [WIDTH-1:0] a_readdata,
    input  wire                 a_in_clock_en,
    input  wire                 a_out_clock_en,

    //port b
    input  wire      [ADDR-1:0] b_address,
    input  wire                 b_write,
    input  wire     [WIDTH-1:0] b_writedata,
    input  wire  [BE_WIDTH-1:0] b_byteenable,
    output logic    [WIDTH-1:0] b_readdata,
    input  wire                 b_in_clock_en,
    input  wire                 b_out_clock_en
);

    ///////////////////////
    //  Legality checks  //
    ///////////////////////

    //ensure ADDR value is as expected (supposed to be a localparam but Quartus standard doesn't support it)
    `ACL_PARAMETER_ASSERT(ADDR == $clog2(DEPTH))

    //check for non-trivial dimensions
    `ACL_PARAMETER_ASSERT(WIDTH >= 1)
    `ACL_PARAMETER_ASSERT(DEPTH >= 2)
    `ACL_PARAMETER_ASSERT(BE_WIDTH >= 1)

    //width / be_width must divide evenly with no remainder
    `ACL_PARAMETER_ASSERT(WIDTH % BE_WIDTH == 0)

    //if using byte enables, bits per enable must be physically supported
    `ACL_PARAMETER_ASSERT(BE_WIDTH == 1 || (WIDTH/BE_WIDTH) == 10)

    //depth must be a multiple of min physical depth
    `ACL_PARAMETER_ASSERT(DEPTH % MIN_PHYSICAL_DEPTH == 0)



    //////////////////////////
    //  Derived parameters  //
    //////////////////////////

    //finish constructing the memory initialization file name by appending the .mif extension after the name modification done by upper layers
    localparam     MEM_INIT_FILE_NAME = {MEM_INIT_NAME, ".mif"};

    //device specific geometries
    localparam bit DEVICE_FAMILY_A10_OR_OLDER = (DEVICE_FAMILY == "Cyclone V" || DEVICE_FAMILY == "Arria V" || DEVICE_FAMILY == "Stratix V" || DEVICE_FAMILY == "Cyclone 10 GX" || DEVICE_FAMILY == "Arria 10");
    localparam bit DEVICE_FAMILY_SUPPORTS_MLAB_64_DEEP = (DEVICE_FAMILY == "Stratix V");

    //limit the max physical depth used by altera_syncram, e.g. if we want 8k x 10, better to build it from 4k x 5 (tiled as 2x2) instead of 8k x 2 (tiled as 1x5)
    localparam int MAXIMUM_DEPTH = (MINIMIZE_MEMORY_USAGE && DEVICE_FAMILY_A10_OR_OLDER) ? 8*MIN_PHYSICAL_DEPTH : 0;  //if trying to minimize memory usage, altera_syncram physical depth should not exceed 4k

    //maximum physical depth
    localparam int M20K_MAX_PHYSICAL_DEPTH = (MAXIMUM_DEPTH) ? MAXIMUM_DEPTH : (DEVICE_FAMILY_A10_OR_OLDER) ? 32*MIN_PHYSICAL_DEPTH : 4*MIN_PHYSICAL_DEPTH;
    localparam int MLAB_MAX_PHYSICAL_DEPTH = (DEVICE_FAMILY_SUPPORTS_MLAB_64_DEEP) ? 2*MIN_PHYSICAL_DEPTH : MIN_PHYSICAL_DEPTH;
    localparam int MAX_PHYSICAL_DEPTH = (RAM_BLOCK_TYPE == "MLAB") ? MLAB_MAX_PHYSICAL_DEPTH : M20K_MAX_PHYSICAL_DEPTH;



    ///////////////////////////////////////////////////
    //  Model how many physical memories are needed  //
    ///////////////////////////////////////////////////

    // How Quartus stitches physical memories together to make one logical memory. This is consistent between Quartus standard and pro, as well as between altera_syncram and altdpram.
    //
    // Stage 1: deal with complete multiples of maximum physical depth
    // - for example on Arria 10 the max physical depth is 16k, so if the user wants a memory of depth 51k, then 3 groups of 16k can be extract leaving a remaining depth of 3k
    // - for wide memories, hld_ram can do better by using 4k x 5 depth stitched 4 times instead of 16k x 1 width stitched 5 times
    //
    // Stage 2: use the shortest physical memory that covers all of the remaining depth
    // - continuing the above example, the remaining depth of 3k is implemented with a 4k deep memory
    // - for some geometries, hld_ram can do better by depth stitching 2k and 1k
    //
    // The maximum physical depth on Stratix 10 is 2k, so altera_syncram implements a 3k deep memory as 2k depth stitched with 1k on Stratix 10 whereas it uses 4k depth on Arria 10.
    // In other words, the smaller max physical depth of Stratix 10 enables it to enter stage 1 whereas this does not happen on Arria 10 (stage 1 in Arria 10 requires user depth of at least 16k).

    //geometry of the portion made of complete multiples of max physical depth, hereby referred to as the "top" section
    localparam int TOP_DEPTH = (DEPTH / MAX_PHYSICAL_DEPTH) * MAX_PHYSICAL_DEPTH;
    localparam int TOP_PHYSICAL_DEPTH = MAX_PHYSICAL_DEPTH;
    localparam int TOP_M20K_PHYSICAL_WIDTH = (TOP_PHYSICAL_DEPTH == MIN_PHYSICAL_DEPTH) ? 40 :  //if true dual port, depth was quantized to 2 * min physical depth, so width limited to 20
                                             (TOP_PHYSICAL_DEPTH == 2*MIN_PHYSICAL_DEPTH) ? 20 :
                                             (TOP_PHYSICAL_DEPTH == 4*MIN_PHYSICAL_DEPTH) ? 10 :
                                             (TOP_PHYSICAL_DEPTH == 8*MIN_PHYSICAL_DEPTH) ? 5 :
                                             (TOP_PHYSICAL_DEPTH == 16*MIN_PHYSICAL_DEPTH) ? 2 : 1;
    localparam int TOP_MLAB_PHYSICAL_WIDTH = (TOP_PHYSICAL_DEPTH == MIN_PHYSICAL_DEPTH) ? 20 : 10;
    localparam int TOP_PHYSICAL_WIDTH = (RAM_BLOCK_TYPE == "MLAB") ? TOP_MLAB_PHYSICAL_WIDTH : TOP_M20K_PHYSICAL_WIDTH;

    //determine how much of the top width is actually used
    //the reason this exists is because e.g. at depth 4k the physical width is 5 yet altera_syncram does not allow 5 bits per enable, so pad the data to 10 bits per enable as a workaround
    //the byte enable group size can be found by rounding up to the nearest multiple of 10, e.g. if bits per enable is 32 then we only need a memory backing for every 35 out of 40 bits of width
    localparam int TOP_PHYSICAL_ENABLE_SIZE = (RAM_BLOCK_TYPE == "MLAB") ? (TOP_PHYSICAL_WIDTH / 2) : (TOP_PHYSICAL_WIDTH < 10) ? TOP_PHYSICAL_WIDTH : 10;  //this is 5 in the example above
    localparam int TOP_LOGICAL_ENABLES_PER_PHYSICAL_ENABLE = (BITS_PER_ENABLE + TOP_PHYSICAL_ENABLE_SIZE - 1) / TOP_PHYSICAL_ENABLE_SIZE;   //for 32 bits of user data, we need 7 groups of size 5
    localparam int TOP_MEMORY_PER_LOGICAL_ENABLE = TOP_LOGICAL_ENABLES_PER_PHYSICAL_ENABLE * TOP_PHYSICAL_ENABLE_SIZE;          //since we need 7 groups of size 5, then 35 bits of memory backing are implemented
    localparam int TOP_WIDTH_PER_LOGICAL_ENABLE = ((TOP_MEMORY_PER_LOGICAL_ENABLE + 9) / 10) * 10;                              //round up to nearest multiple of 10, this is 40 in the example above
    localparam int TOP_NUM_LOGICAL_ENABLE_GROUPS = (WIDTH + TOP_WIDTH_PER_LOGICAL_ENABLE - 1) / TOP_WIDTH_PER_LOGICAL_ENABLE;   //e.g. if width is 120 then there are 3 groups (each of size 40)
    localparam int TOP_WIDTH_UTILIZATION = TOP_NUM_LOGICAL_ENABLE_GROUPS * TOP_MEMORY_PER_LOGICAL_ENABLE;                       //e.g. given 3 groups that each need 35 bits of memory, width utilization is 105

    //how many physical copies are tiled in the x and y directions to cover the width and depth of the top portion
    localparam int TOP_DEPTH_PHYSICAL_TILING = (TOP_DEPTH + TOP_PHYSICAL_DEPTH - 1) / TOP_PHYSICAL_DEPTH;
    localparam int TOP_WIDTH_PHYSICAL_TILING = (TOP_WIDTH_UTILIZATION + TOP_PHYSICAL_WIDTH - 1) / TOP_PHYSICAL_WIDTH;
    localparam int TOP_RAM_UTILIZATION = TOP_DEPTH_PHYSICAL_TILING * TOP_WIDTH_PHYSICAL_TILING;

    //geometry of the portion made of remaining depth after complete multiples of max physical depth have been removed, hereby referred to as the "bottom" section
    localparam int BOTTOM_DEPTH = DEPTH - TOP_DEPTH;
    localparam int BOTTOM_PHYSICAL_DEPTH = (BOTTOM_DEPTH <= MIN_PHYSICAL_DEPTH) ? MIN_PHYSICAL_DEPTH :
                                           (BOTTOM_DEPTH <= 2*MIN_PHYSICAL_DEPTH) ? 2*MIN_PHYSICAL_DEPTH :
                                           (BOTTOM_DEPTH <= 4*MIN_PHYSICAL_DEPTH) ? 4*MIN_PHYSICAL_DEPTH :
                                           (BOTTOM_DEPTH <= 8*MIN_PHYSICAL_DEPTH) ? 8*MIN_PHYSICAL_DEPTH :
                                           (BOTTOM_DEPTH <= 16*MIN_PHYSICAL_DEPTH) ? 16*MIN_PHYSICAL_DEPTH : 32*MIN_PHYSICAL_DEPTH;
    localparam int BOTTOM_M20K_PHYSICAL_WIDTH = (BOTTOM_PHYSICAL_DEPTH == MIN_PHYSICAL_DEPTH) ? 40 :
                                                (BOTTOM_PHYSICAL_DEPTH == 2*MIN_PHYSICAL_DEPTH) ? 20 :
                                                (BOTTOM_PHYSICAL_DEPTH == 4*MIN_PHYSICAL_DEPTH) ? 10 :
                                                (BOTTOM_PHYSICAL_DEPTH == 8*MIN_PHYSICAL_DEPTH) ? 5 :
                                                (BOTTOM_PHYSICAL_DEPTH == 16*MIN_PHYSICAL_DEPTH) ? 2 : 1;
    localparam int BOTTOM_MLAB_PHYSICAL_WIDTH = (BOTTOM_PHYSICAL_DEPTH == MIN_PHYSICAL_DEPTH) ? 20 : 10;
    localparam int BOTTOM_PHYSICAL_WIDTH = (RAM_BLOCK_TYPE == "MLAB") ? BOTTOM_MLAB_PHYSICAL_WIDTH : BOTTOM_M20K_PHYSICAL_WIDTH;

    //determine how much of the bottom width is actually used
    localparam int BOTTOM_PHYSICAL_ENABLE_SIZE = (RAM_BLOCK_TYPE == "MLAB") ? (BOTTOM_PHYSICAL_WIDTH / 2) : (BOTTOM_PHYSICAL_WIDTH < 10) ? BOTTOM_PHYSICAL_WIDTH : 10;
    localparam int BOTTOM_LOGICAL_ENABLES_PER_PHYSICAL_ENABLE = (BITS_PER_ENABLE + BOTTOM_PHYSICAL_ENABLE_SIZE - 1) / BOTTOM_PHYSICAL_ENABLE_SIZE;
    localparam int BOTTOM_MEMORY_PER_LOGICAL_ENABLE = BOTTOM_LOGICAL_ENABLES_PER_PHYSICAL_ENABLE * BOTTOM_PHYSICAL_ENABLE_SIZE;
    localparam int BOTTOM_WIDTH_PER_LOGICAL_ENABLE = ((BOTTOM_MEMORY_PER_LOGICAL_ENABLE + 9) / 10) * 10;
    localparam int BOTTOM_NUM_LOGICAL_ENABLE_GROUPS = (WIDTH + BOTTOM_WIDTH_PER_LOGICAL_ENABLE - 1) / BOTTOM_WIDTH_PER_LOGICAL_ENABLE;
    localparam int BOTTOM_WIDTH_UTILIZATION = BOTTOM_NUM_LOGICAL_ENABLE_GROUPS * BOTTOM_MEMORY_PER_LOGICAL_ENABLE;

    //how many physical copies are tiled in the x and y directions to cover the width and depth of the bottom portion
    localparam int BOTTOM_DEPTH_PHYSICAL_TILING = (BOTTOM_DEPTH + BOTTOM_PHYSICAL_DEPTH - 1) / BOTTOM_PHYSICAL_DEPTH;
    localparam int BOTTOM_WIDTH_PHYSICAL_TILING = (BOTTOM_WIDTH_UTILIZATION + BOTTOM_PHYSICAL_WIDTH - 1) / BOTTOM_PHYSICAL_WIDTH;
    localparam int BOTTOM_RAM_UTILIZATION = BOTTOM_DEPTH_PHYSICAL_TILING * BOTTOM_WIDTH_PHYSICAL_TILING;

    //resource usage
    localparam int TOTAL_RAM_UTILIZATION = TOP_RAM_UTILIZATION + BOTTOM_RAM_UTILIZATION;
    localparam int NUM_PHYSICAL_M10K = (RAM_BLOCK_TYPE == "M10K") ? TOTAL_RAM_UTILIZATION : 0;
    localparam int NUM_PHYSICAL_M20K = (RAM_BLOCK_TYPE == "M20K") ? TOTAL_RAM_UTILIZATION : 0;
    localparam int NUM_PHYSICAL_MLAB = (RAM_BLOCK_TYPE == "MLAB") ? TOTAL_RAM_UTILIZATION : 0;

    //the layers above consume these localparam values by assigning them to an integer, intended for simulation only



    /////////////////////////////////////////////////
    //  Next layer in the instantiation hierarchy  //
    /////////////////////////////////////////////////

    generate
    if ((RAM_BLOCK_TYPE == "M10K" || RAM_BLOCK_TYPE == "M20K") && RAM_OPERATION_MODE == "TRUE_DUAL_PORT") begin : M20K_TDP
        hld_ram_lower_m20k_true_dual_port
        #(
            .DEPTH                  (DEPTH),
            .WIDTH                  (WIDTH),
            .BE_WIDTH               (BE_WIDTH),
            .MAXIMUM_DEPTH          (MAXIMUM_DEPTH),
            .DEVICE_FAMILY          (DEVICE_FAMILY),
            .READ_DURING_WRITE      (READ_DURING_WRITE),
            .USE_ENABLE             (USE_ENABLE),
            .COMMON_IN_CLOCK_EN     (COMMON_IN_CLOCK_EN),
            .COMMON_OUT_CLOCK_EN    (COMMON_OUT_CLOCK_EN),
            .REGISTER_A_READDATA    (REGISTER_A_READDATA),
            .REGISTER_B_READDATA    (REGISTER_B_READDATA),
            .USE_MEM_INIT_FILE      (USE_MEM_INIT_FILE),
            .ZERO_INITIALIZE_MEM    (ZERO_INITIALIZE_MEM),
            .MEM_INIT_FILE_NAME     (MEM_INIT_FILE_NAME)
        )
        hld_ram_lower_m20k_true_dual_port_inst
        (
            .clock                  (clock),
            .a_address              (a_address),
            .a_write                (a_write),
            .a_writedata            (a_writedata),
            .a_byteenable           (a_byteenable),
            .a_readdata             (a_readdata),
            .a_in_clock_en          (a_in_clock_en),
            .a_out_clock_en         (a_out_clock_en),
            .b_address              (b_address),
            .b_write                (b_write),
            .b_writedata            (b_writedata),
            .b_byteenable           (b_byteenable),
            .b_readdata             (b_readdata),
            .b_in_clock_en          (b_in_clock_en),
            .b_out_clock_en         (b_out_clock_en)
        );
    end
    if ((RAM_BLOCK_TYPE == "M10K" || RAM_BLOCK_TYPE == "M20K") && RAM_OPERATION_MODE == "SIMPLE_DUAL_PORT") begin : M20K_SDP
        hld_ram_lower_m20k_simple_dual_port
        #(
            .DEPTH                  (DEPTH),
            .WIDTH                  (WIDTH),
            .BE_WIDTH               (BE_WIDTH),
            .MAXIMUM_DEPTH          (MAXIMUM_DEPTH),
            .DEVICE_FAMILY          (DEVICE_FAMILY),
            .READ_DURING_WRITE      (READ_DURING_WRITE),
            .USE_ENABLE             (USE_ENABLE),
            .COMMON_IN_CLOCK_EN     (COMMON_IN_CLOCK_EN),
            .REGISTER_B_READDATA    (REGISTER_B_READDATA),
            .USE_MEM_INIT_FILE      (USE_MEM_INIT_FILE),
            .ZERO_INITIALIZE_MEM    (ZERO_INITIALIZE_MEM),
            .MEM_INIT_FILE_NAME     (MEM_INIT_FILE_NAME)
        )
        hld_ram_lower_m20k_simple_dual_port_inst
        (
            .clock                  (clock),
            .a_address              (a_address),
            .a_write                (a_write),
            .a_writedata            (a_writedata),
            .a_byteenable           (a_byteenable),
            .a_in_clock_en          (a_in_clock_en),
            .b_address              (b_address),
            .b_readdata             (b_readdata),
            .b_in_clock_en          (b_in_clock_en),
            .b_out_clock_en         (b_out_clock_en)
        );
        assign a_readdata = '0;
    end
    if (RAM_BLOCK_TYPE == "MLAB" && RAM_OPERATION_MODE == "SIMPLE_DUAL_PORT") begin : MLAB
        hld_ram_lower_mlab_simple_dual_port
        #(
            .DEPTH                  (DEPTH),
            .WIDTH                  (WIDTH),
            .BE_WIDTH               (BE_WIDTH),
            .DEVICE_FAMILY          (DEVICE_FAMILY),
            .READ_DURING_WRITE      (READ_DURING_WRITE),
            .REGISTER_B_ADDRESS     (REGISTER_B_ADDRESS),
            .REGISTER_B_READDATA    (REGISTER_B_READDATA),
            .USE_MEM_INIT_FILE      (USE_MEM_INIT_FILE),
            .MEM_INIT_FILE_NAME     (MEM_INIT_FILE_NAME)
        )
        hld_ram_lower_mlab_simple_dual_port_inst
        (
            .clock                  (clock),
            .a_address              (a_address),
            .a_write                (a_write),
            .a_writedata            (a_writedata),
            .a_byteenable           (a_byteenable),
            .a_in_clock_en          (a_in_clock_en),
            .b_address              (b_address),
            .b_readdata             (b_readdata),
            .b_in_clock_en          (b_in_clock_en),
            .b_out_clock_en         (b_out_clock_en)
        );
        assign a_readdata = '0;
    end
    endgenerate

endmodule

`default_nettype wire
