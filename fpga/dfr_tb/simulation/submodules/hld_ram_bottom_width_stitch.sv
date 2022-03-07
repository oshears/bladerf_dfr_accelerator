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

//now that top and bottom have already been depth stitched, bottom depth is limited to 3.5k
//complete groups of width 40 (and sometimes width 20) should depth stitch to minimize the number of physical memories
//leftover width is not wide enough to save physical memories, so don't depth stitch since that requires extra glue logic for the read data mux
//this layer splits the width into complete groups that will depth stitch, and the leftover width that will not depth stitch

`default_nettype none

`include "acl_parameter_assert.svh"

module hld_ram_bottom_width_stitch #(
    //geometry configuration
    parameter  int DEPTH,
    parameter  int WIDTH,
    parameter  int BE_WIDTH,
    parameter  int BITS_PER_ENABLE,

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

    //depth must be a multiple of min physical depth, and depth can only be up to 3.5k since everything else must have been allocated to the top
    `ACL_PARAMETER_ASSERT((DEPTH / MIN_PHYSICAL_DEPTH) * MIN_PHYSICAL_DEPTH == DEPTH)
    `ACL_PARAMETER_ASSERT(DEPTH <= 7*MIN_PHYSICAL_DEPTH)

    //width / be_width must divide evenly with no remainder
    `ACL_PARAMETER_ASSERT(WIDTH % BE_WIDTH == 0)

    //bits per enable must be 10, which enforces that width is a multiple of 10
    `ACL_PARAMETER_ASSERT((WIDTH/BE_WIDTH) == 10)



    ///////////////////////////////////
    //  Summary of the bottom rules  //
    ///////////////////////////////////

    //to understand how these rules were created, refer to: //depot/docs/hld/ip/hld_ram introduction algorithm convergence.pptx
    //if true dual port, then depth has been quantized to 1K, so TYPE will be even

    // DEPTH | TYPE | strategy
    // ------+------+-----------------------------------------------------------------------------------------------
    //  0.5K |   1  | none, this is a power of 2
    //    1K |   2  | none, this is a power of 2
    //  1.5K |   3  | every complete width of 40 uses depth 1K+0.5K, leftover width uses depth 2K
    //    2K |   4  | none, this is a power of 2
    //  2.5K |   5  | every complete width of 40 uses depth 2K+0.5K, if leftover width is 20 or 30 then also use this depth stitch, else use depth 4K
    //    3K |   6  | every complete width of 20 uses depth 2K+1K, leftover width uses depth 4K
    //  3.5K |   7  | every complete width of 40 uses depth 2K+1K+0.5K, leftover width uses depth 4K

    //this layer deals with the splitting of complete width groups vs leftover width
    //left side gets the full width groups and therefore implements the depth stitch
    //right side gets the leftover width and uses a power of 2 depth


    //////////////////////////
    //  Derived parameters  //
    //////////////////////////

    localparam int TYPE = DEPTH / MIN_PHYSICAL_DEPTH;

    //for each depth category, calculate how much width should be allocated to the right side
    localparam int RIGHT_WIDTH_TYPE_1_2_4 = WIDTH;                          //if bottom depth is a power of 2, right side gets all the width, don't use left side which implements the depth stitch
    localparam int RIGHT_WIDTH_TYPE_6     = WIDTH % 20;                     //if depth 3k, right side gets leftover width after extracting complete groups of 20
    localparam int RIGHT_WIDTH_TYPE_3_7   = WIDTH % 40;                     //if depth 1.5k or 3.5k, right side gets leftover width after extracting complete groups of 40
    localparam int RIGHT_WIDTH_TYPE_5     = ((WIDTH % 40) == 10) ? 10 : 0;  //if depth 5k, right side gets leftover width only if it is 10, else leftover width is 0, 20, or 30 so all width goes to left side depth stitch

    //right side gets the leftover width and uses a power of 2 depth, left side gets the full width groups and therefore implements the depth stitch
    localparam int RIGHT_WIDTH = (TYPE==1 || TYPE==2 || TYPE==4) ? RIGHT_WIDTH_TYPE_1_2_4 : (TYPE==6) ? RIGHT_WIDTH_TYPE_6 : (TYPE==3 || TYPE==7) ? RIGHT_WIDTH_TYPE_3_7 : RIGHT_WIDTH_TYPE_5;
    localparam int LEFT_WIDTH = WIDTH - RIGHT_WIDTH;

    //for next layer in the instantiation hierarchy
    localparam int RIGHT_BE_WIDTH = RIGHT_WIDTH / 10;
    localparam int LEFT_BE_WIDTH = BE_WIDTH - RIGHT_BE_WIDTH;
    localparam     RIGHT_MEM_INIT_NAME = {MEM_INIT_NAME, "r"};
    localparam     LEFT_MEM_INIT_NAME = {MEM_INIT_NAME, "l"};
    localparam int RIGHT_DEPTH = 1 << $clog2(DEPTH);          //round up to nearest power of 2



    /////////////////////////////////////////////////
    //  Next layer in the instantiation hierarchy  //
    /////////////////////////////////////////////////

    //imitate the query functions in the software model
    // synthesis translate_off
    int NUM_PHYSICAL_M10K, NUM_PHYSICAL_M20K, NUM_PHYSICAL_MLAB;
    int RIGHT_NUM_PHYSICAL_M10K, RIGHT_NUM_PHYSICAL_M20K, RIGHT_NUM_PHYSICAL_MLAB;
    int LEFT_NUM_PHYSICAL_M10K, LEFT_NUM_PHYSICAL_M20K, LEFT_NUM_PHYSICAL_MLAB;
    assign NUM_PHYSICAL_M10K = RIGHT_NUM_PHYSICAL_M10K + LEFT_NUM_PHYSICAL_M10K;
    assign NUM_PHYSICAL_M20K = RIGHT_NUM_PHYSICAL_M20K + LEFT_NUM_PHYSICAL_M20K;
    assign NUM_PHYSICAL_MLAB = RIGHT_NUM_PHYSICAL_MLAB + LEFT_NUM_PHYSICAL_MLAB;
    // synthesis translate_on

    generate
    if (RIGHT_WIDTH) begin : GEN_RIGHT
        //determine the range of the width to use for data and byte enable
        localparam int HI = RIGHT_WIDTH - 1;
        localparam int LO = 0;
        localparam int HI_BE = RIGHT_BE_WIDTH - 1;
        localparam int LO_BE = 0;

        hld_ram_lower
        #(
            .DEPTH                  (RIGHT_DEPTH),                  //changed, beware that left side does not change depth
            .WIDTH                  (RIGHT_WIDTH),                  //changed
            .BE_WIDTH               (RIGHT_BE_WIDTH),               //changed
            .BITS_PER_ENABLE        (BITS_PER_ENABLE),
            .MINIMIZE_MEMORY_USAGE  (MINIMIZE_MEMORY_USAGE),
            .MIN_PHYSICAL_DEPTH     (MIN_PHYSICAL_DEPTH),
            .USE_MEM_INIT_FILE      (USE_MEM_INIT_FILE),
            .ZERO_INITIALIZE_MEM    (ZERO_INITIALIZE_MEM),
            .MEM_INIT_NAME          (RIGHT_MEM_INIT_NAME),          //changed
            .RAM_BLOCK_TYPE         (RAM_BLOCK_TYPE),
            .RAM_OPERATION_MODE     (RAM_OPERATION_MODE),
            .DEVICE_FAMILY          (DEVICE_FAMILY),
            .READ_DURING_WRITE      (READ_DURING_WRITE),
            .REGISTER_A_READDATA    (REGISTER_A_READDATA),
            .REGISTER_B_ADDRESS     (REGISTER_B_ADDRESS),
            .REGISTER_B_READDATA    (REGISTER_B_READDATA),
            .USE_ENABLE             (USE_ENABLE),
            .COMMON_IN_CLOCK_EN     (COMMON_IN_CLOCK_EN),
            .COMMON_OUT_CLOCK_EN    (COMMON_OUT_CLOCK_EN)
        )
        hld_ram_lower_inst
        (
            .clock                  (clock),
            .a_address              (a_address),
            .a_write                (a_write),
            .a_writedata            (a_writedata[HI:LO]),           //changed
            .a_byteenable           (a_byteenable[HI_BE:LO_BE]),    //changed
            .a_readdata             (a_readdata[HI:LO]),            //changed
            .a_in_clock_en          (a_in_clock_en),
            .a_out_clock_en         (a_out_clock_en),
            .b_address              (b_address),
            .b_write                (b_write),
            .b_writedata            (b_writedata[HI:LO]),           //changed
            .b_byteenable           (b_byteenable[HI_BE:LO_BE]),    //changed
            .b_readdata             (b_readdata[HI:LO]),            //changed
            .b_in_clock_en          (b_in_clock_en),
            .b_out_clock_en         (b_out_clock_en)
        );

        // synthesis translate_off
        assign RIGHT_NUM_PHYSICAL_M10K = hld_ram_lower_inst.NUM_PHYSICAL_M10K;
        assign RIGHT_NUM_PHYSICAL_M20K = hld_ram_lower_inst.NUM_PHYSICAL_M20K;
        assign RIGHT_NUM_PHYSICAL_MLAB = hld_ram_lower_inst.NUM_PHYSICAL_MLAB;
        // synthesis translate_on
    end
    else begin : NO_RIGHT
        // synthesis translate_off
        assign RIGHT_NUM_PHYSICAL_M10K = 0;
        assign RIGHT_NUM_PHYSICAL_M20K = 0;
        assign RIGHT_NUM_PHYSICAL_MLAB = 0;
        // synthesis translate_on
    end
    endgenerate


    generate
    if (LEFT_WIDTH) begin : GEN_LEFT
        //determine the range of the width to use for data and byte enable
        localparam int HI = WIDTH - 1;
        localparam int LO = RIGHT_WIDTH;
        localparam int HI_BE = BE_WIDTH - 1;
        localparam int LO_BE = RIGHT_BE_WIDTH;

        hld_ram_bottom_depth_stitch
        #(
            .DEPTH                  (DEPTH),                        //unlike right side this does NOT change
            .WIDTH                  (LEFT_WIDTH),                   //changed
            .BE_WIDTH               (LEFT_BE_WIDTH),                //changed
            .BITS_PER_ENABLE        (BITS_PER_ENABLE),
            .MINIMIZE_MEMORY_USAGE  (MINIMIZE_MEMORY_USAGE),
            .MIN_PHYSICAL_DEPTH     (MIN_PHYSICAL_DEPTH),
            .USE_MEM_INIT_FILE      (USE_MEM_INIT_FILE),
            .ZERO_INITIALIZE_MEM    (ZERO_INITIALIZE_MEM),
            .MEM_INIT_NAME          (LEFT_MEM_INIT_NAME),           //changed
            .RAM_BLOCK_TYPE         (RAM_BLOCK_TYPE),
            .RAM_OPERATION_MODE     (RAM_OPERATION_MODE),
            .DEVICE_FAMILY          (DEVICE_FAMILY),
            .READ_DURING_WRITE      (READ_DURING_WRITE),
            .REGISTER_A_READDATA    (REGISTER_A_READDATA),
            .REGISTER_B_ADDRESS     (REGISTER_B_ADDRESS),
            .REGISTER_B_READDATA    (REGISTER_B_READDATA),
            .USE_ENABLE             (USE_ENABLE),
            .COMMON_IN_CLOCK_EN     (COMMON_IN_CLOCK_EN),
            .COMMON_OUT_CLOCK_EN    (COMMON_OUT_CLOCK_EN)
        )
        hld_ram_bottom_depth_stitch_inst
        (
            .clock                  (clock),
            .a_address              (a_address),
            .a_write                (a_write),
            .a_writedata            (a_writedata[HI:LO]),           //changed
            .a_byteenable           (a_byteenable[HI_BE:LO_BE]),    //changed
            .a_readdata             (a_readdata[HI:LO]),            //changed
            .a_in_clock_en          (a_in_clock_en),
            .a_out_clock_en         (a_out_clock_en),
            .b_address              (b_address),
            .b_write                (b_write),
            .b_writedata            (b_writedata[HI:LO]),           //changed
            .b_byteenable           (b_byteenable[HI_BE:LO_BE]),    //changed
            .b_readdata             (b_readdata[HI:LO]),            //changed
            .b_in_clock_en          (b_in_clock_en),
            .b_out_clock_en         (b_out_clock_en)
        );

        // synthesis translate_off
        assign LEFT_NUM_PHYSICAL_M10K = hld_ram_bottom_depth_stitch_inst.NUM_PHYSICAL_M10K;
        assign LEFT_NUM_PHYSICAL_M20K = hld_ram_bottom_depth_stitch_inst.NUM_PHYSICAL_M20K;
        assign LEFT_NUM_PHYSICAL_MLAB = hld_ram_bottom_depth_stitch_inst.NUM_PHYSICAL_MLAB;
        // synthesis translate_on
    end
    else begin : NO_LEFT
        // synthesis translate_off
        assign LEFT_NUM_PHYSICAL_M10K = 0;
        assign LEFT_NUM_PHYSICAL_M20K = 0;
        assign LEFT_NUM_PHYSICAL_MLAB = 0;
        // synthesis translate_on
    end
    endgenerate

endmodule

`default_nettype wire
