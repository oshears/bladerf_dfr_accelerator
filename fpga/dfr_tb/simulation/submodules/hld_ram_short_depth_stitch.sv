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

//this layer is the top level for width/depth stitching algorithm originally developed for s10 m20k geometries
//depth stitch top and bottom, where top depth is a multiple of the max physical depth (for a10 limit this to 4k since 8k and 16k were already specially handled)

`default_nettype none

`include "acl_parameter_assert.svh"

module hld_ram_short_depth_stitch #(
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

    //sanity checks: for bits per enable to choose this module, need to minimize memory usage and use M10K or M20K
    `ACL_PARAMETER_ASSERT(MINIMIZE_MEMORY_USAGE)
    `ACL_PARAMETER_ASSERT_MESSAGE(RAM_BLOCK_TYPE == "M10K" || RAM_BLOCK_TYPE == "M20K", "RAM_BLOCK_TYPE must be \"M10K\" or \"M20K\"")

    //width / be_width must divide evenly with no remainder
    `ACL_PARAMETER_ASSERT(WIDTH % BE_WIDTH == 0)

    //bits per enable must be 10, which enforces that width is a multiple of 10
    `ACL_PARAMETER_ASSERT((WIDTH/BE_WIDTH) == 10)



    //////////////////////////
    //  Derived parameters  //
    //////////////////////////

    //rules for depth stitching
    localparam bit DEVICE_FAMILY_A10_OR_OLDER = (DEVICE_FAMILY == "Cyclone V" || DEVICE_FAMILY == "Arria V" || DEVICE_FAMILY == "Stratix V" || DEVICE_FAMILY == "Cyclone 10 GX" || DEVICE_FAMILY == "Arria 10");
    localparam int MAX_PHYSICAL_M20K_DEPTH = (DEVICE_FAMILY_A10_OR_OLDER) ? 8*MIN_PHYSICAL_DEPTH : 4*MIN_PHYSICAL_DEPTH;    //for a10 and older only allow 4k top, for s10 max physical depth is 2k
    localparam int COMPLETE_MULTIPLES_OF_MAX_DEPTH = DEPTH / MAX_PHYSICAL_M20K_DEPTH;                                       //how many multiples of max physical depth can we use without exceeding depth
    localparam int TOP_DEPTH = COMPLETE_MULTIPLES_OF_MAX_DEPTH * MAX_PHYSICAL_M20K_DEPTH;                                   //top depth uses as many multiples of max physical depth as possible without wastage
    localparam int BOT_DEPTH = DEPTH - TOP_DEPTH;                                                                           //leftover depth goes to the bottom

    //memory initialization file name modification
    localparam     TOP_MEM_INIT_NAME = {MEM_INIT_NAME, "t"};
    localparam     BOT_MEM_INIT_NAME = {MEM_INIT_NAME, "b"};

    //model how much of the physical width is actually used
    //no change to top, bottom only deals with depth up to 3.5k and in all cases where the 4k x 5 geometry is used at least 6 bits from every group of 10 will be used
    localparam int BOT_BITS_PER_ENABLE = 10;

    //avoid zero width signals
    localparam int TOP_ADDR = (TOP_DEPTH <= 1) ? 1 : $clog2(TOP_DEPTH);
    localparam int BOT_ADDR = (BOT_DEPTH <= 1) ? 1 : $clog2(BOT_DEPTH);



    ////////////////////
    //  Depth stitch  //
    ////////////////////

    //based the depths of the sections (some depths can be 0), determine which section the address targets
    //mask the write enable for all sections that the address does not target
    //keep this decoding information live so that later when the read data arrives, know which section to consume read data from

    logic top_a_write, top_b_write;
    logic bot_a_write, bot_b_write;
    logic [TOP_ADDR-1:0] top_a_address, top_b_address;
    logic [BOT_ADDR-1:0] bot_a_address, bot_b_address;
    logic [WIDTH-1:0] top_a_readdata, top_b_readdata;
    logic [WIDTH-1:0] bot_a_readdata, bot_b_readdata;

    hld_ram_generic_two_way_depth_stitch #(
        .TOP_DEPTH              (TOP_DEPTH),
        .BOT_DEPTH              (BOT_DEPTH),
        .WIDTH                  (WIDTH),
        .REGISTER_A_ADDRESS     (1),
        .REGISTER_B_ADDRESS     (REGISTER_B_ADDRESS),
        .REGISTER_A_READDATA    (REGISTER_A_READDATA),
        .REGISTER_B_READDATA    (REGISTER_B_READDATA)
    )
    hld_ram_generic_two_way_depth_stitch_inst
    (
        .clock                  (clock),
        .a_address              (a_address),
        .a_write                (a_write),
        .a_in_clock_en          (a_in_clock_en),
        .a_out_clock_en         (a_out_clock_en),
        .top_a_address          (top_a_address),
        .bot_a_address          (bot_a_address),
        .top_a_write            (top_a_write),
        .bot_a_write            (bot_a_write),
        .top_a_readdata         (top_a_readdata),
        .bot_a_readdata         (bot_a_readdata),
        .a_readdata             (a_readdata),
        .b_address              (b_address),
        .b_write                (b_write),
        .b_in_clock_en          (b_in_clock_en),
        .b_out_clock_en         (b_out_clock_en),
        .top_b_address          (top_b_address),
        .bot_b_address          (bot_b_address),
        .top_b_write            (top_b_write),
        .bot_b_write            (bot_b_write),
        .top_b_readdata         (top_b_readdata),
        .bot_b_readdata         (bot_b_readdata),
        .b_readdata             (b_readdata)
    );



    /////////////////////////////////////////////////
    //  Next layer in the instantiation hierarchy  //
    /////////////////////////////////////////////////

    //imitate the query functions in the software model
    // synthesis translate_off
    int NUM_PHYSICAL_M10K, NUM_PHYSICAL_M20K, NUM_PHYSICAL_MLAB;
    int TOP_NUM_PHYSICAL_M10K, TOP_NUM_PHYSICAL_M20K, TOP_NUM_PHYSICAL_MLAB;
    int BOT_NUM_PHYSICAL_M10K, BOT_NUM_PHYSICAL_M20K, BOT_NUM_PHYSICAL_MLAB;
    assign NUM_PHYSICAL_M10K = TOP_NUM_PHYSICAL_M10K + BOT_NUM_PHYSICAL_M10K;
    assign NUM_PHYSICAL_M20K = TOP_NUM_PHYSICAL_M20K + BOT_NUM_PHYSICAL_M20K;
    assign NUM_PHYSICAL_MLAB = TOP_NUM_PHYSICAL_MLAB + BOT_NUM_PHYSICAL_MLAB;
    // synthesis translate_on

    generate
    if (TOP_DEPTH) begin : GEN_TOP
        hld_ram_lower
        #(
            .DEPTH                  (TOP_DEPTH),                //changed
            .WIDTH                  (WIDTH),
            .BE_WIDTH               (BE_WIDTH),
            .MINIMIZE_MEMORY_USAGE  (MINIMIZE_MEMORY_USAGE),
            .BITS_PER_ENABLE        (BITS_PER_ENABLE),
            .MIN_PHYSICAL_DEPTH     (MIN_PHYSICAL_DEPTH),
            .USE_MEM_INIT_FILE      (USE_MEM_INIT_FILE),
            .ZERO_INITIALIZE_MEM    (ZERO_INITIALIZE_MEM),
            .MEM_INIT_NAME          (TOP_MEM_INIT_NAME),        //changed
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
            .a_address              (top_a_address),            //changed
            .a_write                (top_a_write),              //changed
            .a_writedata            (a_writedata),
            .a_byteenable           (a_byteenable),
            .a_readdata             (top_a_readdata),           //changed
            .a_in_clock_en          (a_in_clock_en),
            .a_out_clock_en         (a_out_clock_en),
            .b_address              (top_b_address),            //changed
            .b_write                (top_b_write),              //changed
            .b_writedata            (b_writedata),
            .b_byteenable           (b_byteenable),
            .b_readdata             (top_b_readdata),           //changed
            .b_in_clock_en          (b_in_clock_en),
            .b_out_clock_en         (b_out_clock_en)
        );

        // synthesis translate_off
        assign TOP_NUM_PHYSICAL_M10K = hld_ram_lower_inst.NUM_PHYSICAL_M10K;
        assign TOP_NUM_PHYSICAL_M20K = hld_ram_lower_inst.NUM_PHYSICAL_M20K;
        assign TOP_NUM_PHYSICAL_MLAB = hld_ram_lower_inst.NUM_PHYSICAL_MLAB;
        // synthesis translate_on
    end
    else begin : NO_TOP
        // synthesis translate_off
        assign TOP_NUM_PHYSICAL_M10K = 0;
        assign TOP_NUM_PHYSICAL_M20K = 0;
        assign TOP_NUM_PHYSICAL_MLAB = 0;
        // synthesis translate_on
    end
    endgenerate


    generate
    if (BOT_DEPTH) begin : GEN_BOT
        hld_ram_bottom_width_stitch
        #(
            .DEPTH                  (BOT_DEPTH),                //changed
            .WIDTH                  (WIDTH),
            .BE_WIDTH               (BE_WIDTH),
            .BITS_PER_ENABLE        (BOT_BITS_PER_ENABLE),
            .MINIMIZE_MEMORY_USAGE  (MINIMIZE_MEMORY_USAGE),
            .MIN_PHYSICAL_DEPTH     (MIN_PHYSICAL_DEPTH),
            .USE_MEM_INIT_FILE      (USE_MEM_INIT_FILE),
            .ZERO_INITIALIZE_MEM    (ZERO_INITIALIZE_MEM),
            .MEM_INIT_NAME          (BOT_MEM_INIT_NAME),        //changed
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
        hld_ram_bottom_width_stitch_inst
        (
            .clock                  (clock),
            .a_address              (bot_a_address),            //changed
            .a_write                (bot_a_write),              //changed
            .a_writedata            (a_writedata),
            .a_byteenable           (a_byteenable),
            .a_readdata             (bot_a_readdata),           //changed
            .a_in_clock_en          (a_in_clock_en),
            .a_out_clock_en         (a_out_clock_en),
            .b_address              (bot_b_address),            //changed
            .b_write                (bot_b_write),              //changed
            .b_writedata            (b_writedata),
            .b_byteenable           (b_byteenable),
            .b_readdata             (bot_b_readdata),           //changed
            .b_in_clock_en          (b_in_clock_en),
            .b_out_clock_en         (b_out_clock_en)
        );

        // synthesis translate_off
        assign BOT_NUM_PHYSICAL_M10K = hld_ram_bottom_width_stitch_inst.NUM_PHYSICAL_M10K;
        assign BOT_NUM_PHYSICAL_M20K = hld_ram_bottom_width_stitch_inst.NUM_PHYSICAL_M20K;
        assign BOT_NUM_PHYSICAL_MLAB = hld_ram_bottom_width_stitch_inst.NUM_PHYSICAL_MLAB;
        // synthesis translate_on
    end
    else begin : NO_BOT
        // synthesis translate_off
        assign BOT_NUM_PHYSICAL_M10K = 0;
        assign BOT_NUM_PHYSICAL_M20K = 0;
        assign BOT_NUM_PHYSICAL_MLAB = 0;
        // synthesis translate_on
    end
    endgenerate

endmodule

`default_nettype wire
