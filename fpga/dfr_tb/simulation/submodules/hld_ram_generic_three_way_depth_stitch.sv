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


//when hld_ram needs to perform a depth stitch, this module is used to decode whether the address targets the top, middle or bottom sections of memory
//a 3:1 depth stitch is decomposed into two 2:1 depth stitches, see comments inside hld_ram_generic_two_way_depth_stitch for the inner workings

`default_nettype none

`include "acl_parameter_assert.svh"

module hld_ram_generic_three_way_depth_stitch #(
    parameter int TOP_DEPTH,                            //the depth of the top section of memory, this can be zero but the total depth cannot be zero
    parameter int MID_DEPTH,                            //the depth of the middle section of memory, this can be zero but the total depth cannot be zero
    parameter int BOT_DEPTH,                            //the depth of the bottom section of memory, this can be zero but the total depth cannot be zero
    parameter int WIDTH,                                //width of the readdata signals
    parameter bit REGISTER_A_ADDRESS,                   //these 4 parameters controls the read latency, see comments inside hld_ram_generic_two_way_depth_stitch
    parameter bit REGISTER_B_ADDRESS,
    parameter bit REGISTER_A_READDATA,
    parameter bit REGISTER_B_READDATA,

    //these should be a localparam but Quartus standard doesn't support it, leave as a parameter but don't override when instantiating
    parameter int DEPTH = TOP_DEPTH + MID_DEPTH + BOT_DEPTH,    //total depth
    parameter int ADDR = (DEPTH <= 1) ? 1 : $clog2(DEPTH),      //avoid zero width signals
    parameter int TOP_ADDR = (TOP_DEPTH <= 1) ? 1 : $clog2(TOP_DEPTH),
    parameter int MID_ADDR = (MID_DEPTH <= 1) ? 1 : $clog2(MID_DEPTH),
    parameter int BOT_ADDR = (BOT_DEPTH <= 1) ? 1 : $clog2(BOT_DEPTH)
) (
    input  wire                     clock,

    //port a
    input  wire          [ADDR-1:0] a_address,          //logical address
    input  wire                     a_write,            //logical write enable
    input  wire                     a_in_clock_en,      //logical input clock enable
    input  wire                     a_out_clock_en,     //logical output clock enable
    output logic     [TOP_ADDR-1:0] top_a_address,      //physical address for top memory
    output logic     [MID_ADDR-1:0] mid_a_address,      //physical address for middle memory
    output logic     [BOT_ADDR-1:0] bot_a_address,      //physical address for bottom memory
    output logic                    top_a_write,        //physical write enable for top memory
    output logic                    mid_a_write,        //physical write enable for middle memory
    output logic                    bot_a_write,        //physical write enable for bottom memory
    input  wire         [WIDTH-1:0] top_a_readdata,     //physical read data from the top memory
    input  wire         [WIDTH-1:0] mid_a_readdata,     //physical read data from the middle memory
    input  wire         [WIDTH-1:0] bot_a_readdata,     //physical read data from the bottom memory
    output logic        [WIDTH-1:0] a_readdata,         //logical read data

    //port b
    input  wire          [ADDR-1:0] b_address,
    input  wire                     b_write,
    input  wire                     b_in_clock_en,
    input  wire                     b_out_clock_en,
    output logic     [TOP_ADDR-1:0] top_b_address,
    output logic     [MID_ADDR-1:0] mid_b_address,
    output logic     [BOT_ADDR-1:0] bot_b_address,
    output logic                    top_b_write,
    output logic                    mid_b_write,
    output logic                    bot_b_write,
    input  wire         [WIDTH-1:0] top_b_readdata,
    input  wire         [WIDTH-1:0] mid_b_readdata,
    input  wire         [WIDTH-1:0] bot_b_readdata,
    output logic        [WIDTH-1:0] b_readdata
);

    ///////////////////////
    //  Legality checks  //
    ///////////////////////

    //ensure consistent values for what should be localparam but was left as parameter as a workaround for Quartus standard
    `ACL_PARAMETER_ASSERT(DEPTH == (TOP_DEPTH + MID_DEPTH + BOT_DEPTH))
    `ACL_PARAMETER_ASSERT(ADDR == ((DEPTH <= 1) ? 1 : $clog2(DEPTH)))
    `ACL_PARAMETER_ASSERT(TOP_ADDR == ((TOP_DEPTH <= 1) ? 1 : $clog2(TOP_DEPTH)))
    `ACL_PARAMETER_ASSERT(MID_ADDR == ((MID_DEPTH <= 1) ? 1 : $clog2(MID_DEPTH)))
    `ACL_PARAMETER_ASSERT(BOT_ADDR == ((BOT_DEPTH <= 1) ? 1 : $clog2(BOT_DEPTH)))



    localparam int MB_DEPTH = MID_DEPTH + BOT_DEPTH;                    //depth of the middle and bottom combined
    localparam int MB_ADDR = (MB_DEPTH <= 1) ? 1 : $clog2(MB_DEPTH);    //avoid zero width signals

    logic [MB_ADDR-1:0] mb_a_address, mb_b_address;
    logic mb_a_write, mb_b_write;
    logic [WIDTH-1:0] mb_a_readdata, mb_b_readdata;



    hld_ram_generic_two_way_depth_stitch #(
        .TOP_DEPTH              (TOP_DEPTH),
        .BOT_DEPTH              (MB_DEPTH),
        .WIDTH                  (WIDTH),
        .REGISTER_A_ADDRESS     (REGISTER_A_ADDRESS),
        .REGISTER_B_ADDRESS     (REGISTER_B_ADDRESS),
        .REGISTER_A_READDATA    (REGISTER_A_READDATA),
        .REGISTER_B_READDATA    (REGISTER_B_READDATA)
    )
    top_inst
    (
        .clock                  (clock),
        .a_address              (a_address),
        .a_write                (a_write),
        .a_in_clock_en          (a_in_clock_en),
        .a_out_clock_en         (a_out_clock_en),
        .top_a_address          (top_a_address),
        .bot_a_address          (mb_a_address),
        .top_a_write            (top_a_write),
        .bot_a_write            (mb_a_write),
        .top_a_readdata         (top_a_readdata),
        .bot_a_readdata         (mb_a_readdata),
        .a_readdata             (a_readdata),
        .b_address              (b_address),
        .b_write                (b_write),
        .b_in_clock_en          (b_in_clock_en),
        .b_out_clock_en         (b_out_clock_en),
        .top_b_address          (top_b_address),
        .bot_b_address          (mb_b_address),
        .top_b_write            (top_b_write),
        .bot_b_write            (mb_b_write),
        .top_b_readdata         (top_b_readdata),
        .bot_b_readdata         (mb_b_readdata),
        .b_readdata             (b_readdata)
    );

    hld_ram_generic_two_way_depth_stitch #(
        .TOP_DEPTH              (MID_DEPTH),
        .BOT_DEPTH              (BOT_DEPTH),
        .WIDTH                  (WIDTH),
        .REGISTER_A_ADDRESS     (REGISTER_A_ADDRESS),
        .REGISTER_B_ADDRESS     (REGISTER_B_ADDRESS),
        .REGISTER_A_READDATA    (REGISTER_A_READDATA),
        .REGISTER_B_READDATA    (REGISTER_B_READDATA)
    )
    bottom_inst
    (
        .clock                  (clock),
        .a_address              (mb_a_address),
        .a_write                (mb_a_write),
        .a_in_clock_en          (a_in_clock_en),
        .a_out_clock_en         (a_out_clock_en),
        .top_a_address          (mid_a_address),
        .bot_a_address          (bot_a_address),
        .top_a_write            (mid_a_write),
        .bot_a_write            (bot_a_write),
        .top_a_readdata         (mid_a_readdata),
        .bot_a_readdata         (bot_a_readdata),
        .a_readdata             (mb_a_readdata),
        .b_address              (mb_b_address),
        .b_write                (mb_b_write),
        .b_in_clock_en          (b_in_clock_en),
        .b_out_clock_en         (b_out_clock_en),
        .top_b_address          (mid_b_address),
        .bot_b_address          (bot_b_address),
        .top_b_write            (mid_b_write),
        .bot_b_write            (bot_b_write),
        .top_b_readdata         (mid_b_readdata),
        .bot_b_readdata         (bot_b_readdata),
        .b_readdata             (mb_b_readdata)
    );

endmodule

`default_nettype wire
