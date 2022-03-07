// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.4 (Release Build #53.1)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from bb_dfr_B2_runOnce
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:29:59 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_bb_B2_runOnce (
    output wire [0:0] out_feedback_out_0,
    input wire [0:0] in_feedback_stall_in_0,
    output wire [0:0] out_feedback_valid_out_0,
    input wire [15:0] in_i_data,
    input wire [15:0] in_q_data,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_dfr_B2_runOnce_stall_region_out_feedback_out_0;
    wire [0:0] bb_dfr_B2_runOnce_stall_region_out_feedback_valid_out_0;
    wire [0:0] bb_dfr_B2_runOnce_stall_region_out_stall_out;
    wire [0:0] bb_dfr_B2_runOnce_stall_region_out_valid_out;
    wire [0:0] dfr_B2_runOnce_branch_out_stall_out;
    wire [0:0] dfr_B2_runOnce_branch_out_valid_out_0;
    wire [0:0] dfr_B2_runOnce_merge_out_stall_out_0;
    wire [0:0] dfr_B2_runOnce_merge_out_valid_out;


    // dfr_B2_runOnce_merge(BLACKBOX,4)
    dfr_B2_runOnce_merge thedfr_B2_runOnce_merge (
        .in_stall_in(bb_dfr_B2_runOnce_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(dfr_B2_runOnce_merge_out_stall_out_0),
        .out_valid_out(dfr_B2_runOnce_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dfr_B2_runOnce_branch(BLACKBOX,3)
    dfr_B2_runOnce_branch thedfr_B2_runOnce_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_dfr_B2_runOnce_stall_region_out_valid_out),
        .out_stall_out(dfr_B2_runOnce_branch_out_stall_out),
        .out_valid_out_0(dfr_B2_runOnce_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dfr_B2_runOnce_stall_region(BLACKBOX,2)
    dfr_bb_B2_runOnce_stall_region thebb_dfr_B2_runOnce_stall_region (
        .in_feedback_stall_in_0(in_feedback_stall_in_0),
        .in_stall_in(dfr_B2_runOnce_branch_out_stall_out),
        .in_valid_in(dfr_B2_runOnce_merge_out_valid_out),
        .out_feedback_out_0(bb_dfr_B2_runOnce_stall_region_out_feedback_out_0),
        .out_feedback_valid_out_0(bb_dfr_B2_runOnce_stall_region_out_feedback_valid_out_0),
        .out_stall_out(bb_dfr_B2_runOnce_stall_region_out_stall_out),
        .out_valid_out(bb_dfr_B2_runOnce_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_0_sync(GPOUT,5)
    assign out_feedback_out_0 = bb_dfr_B2_runOnce_stall_region_out_feedback_out_0;

    // feedback_valid_out_0_sync(GPOUT,7)
    assign out_feedback_valid_out_0 = bb_dfr_B2_runOnce_stall_region_out_feedback_valid_out_0;

    // out_stall_out_0(GPOUT,12)
    assign out_stall_out_0 = dfr_B2_runOnce_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,13)
    assign out_valid_out_0 = dfr_B2_runOnce_branch_out_valid_out_0;

endmodule
