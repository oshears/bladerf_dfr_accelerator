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

// SystemVerilog created from bb_dfr_B3_start
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:29:59 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_bb_B3_start (
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [15:0] in_i_data,
    input wire [0:0] in_iord_bl_call_dfr_i_fifodata,
    input wire [0:0] in_iord_bl_call_dfr_i_fifovalid,
    input wire [15:0] in_q_data,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [25:0] out_intel_reserved_ffwd_0_0,
    output wire [25:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_iord_bl_call_dfr_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_dfr_o_fifoready,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_dfr_B3_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_dfr1_exiting_stall_out;
    wire [0:0] bb_dfr_B3_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_dfr1_exiting_valid_out;
    wire [0:0] bb_dfr_B3_start_stall_region_out_feedback_stall_out_1;
    wire [25:0] bb_dfr_B3_start_stall_region_out_intel_reserved_ffwd_0_0;
    wire [25:0] bb_dfr_B3_start_stall_region_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_dfr_B3_start_stall_region_out_iord_bl_call_dfr_o_fifoalmost_full;
    wire [0:0] bb_dfr_B3_start_stall_region_out_iord_bl_call_dfr_o_fifoready;
    wire [0:0] bb_dfr_B3_start_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_dfr_B3_start_stall_region_out_stall_out;
    wire [0:0] bb_dfr_B3_start_stall_region_out_valid_out;
    wire [0:0] dfr_B3_start_branch_out_stall_out;
    wire [0:0] dfr_B3_start_branch_out_valid_out_0;
    wire [0:0] dfr_B3_start_merge_out_stall_out_0;
    wire [0:0] dfr_B3_start_merge_out_stall_out_1;
    wire [0:0] dfr_B3_start_merge_out_valid_out;


    // dfr_B3_start_merge(BLACKBOX,4)
    dfr_B3_start_merge thedfr_B3_start_merge (
        .in_stall_in(bb_dfr_B3_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(dfr_B3_start_merge_out_stall_out_0),
        .out_stall_out_1(dfr_B3_start_merge_out_stall_out_1),
        .out_valid_out(dfr_B3_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dfr_B3_start_branch(BLACKBOX,3)
    dfr_B3_start_branch thedfr_B3_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_dfr_B3_start_stall_region_out_valid_out),
        .out_stall_out(dfr_B3_start_branch_out_stall_out),
        .out_valid_out_0(dfr_B3_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_dfr_B3_start_stall_region(BLACKBOX,2)
    dfr_bb_B3_start_stall_region thebb_dfr_B3_start_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_i_data(in_i_data),
        .in_iord_bl_call_dfr_i_fifodata(in_iord_bl_call_dfr_i_fifodata),
        .in_iord_bl_call_dfr_i_fifovalid(in_iord_bl_call_dfr_i_fifovalid),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_q_data(in_q_data),
        .in_stall_in(dfr_B3_start_branch_out_stall_out),
        .in_valid_in(dfr_B3_start_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_dfr1_exiting_stall_out(bb_dfr_B3_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_dfr1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_dfr1_exiting_valid_out(bb_dfr_B3_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_dfr1_exiting_valid_out),
        .out_feedback_stall_out_1(bb_dfr_B3_start_stall_region_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_dfr_B3_start_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_dfr_B3_start_stall_region_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_dfr_o_fifoalmost_full(bb_dfr_B3_start_stall_region_out_iord_bl_call_dfr_o_fifoalmost_full),
        .out_iord_bl_call_dfr_o_fifoready(bb_dfr_B3_start_stall_region_out_iord_bl_call_dfr_o_fifoready),
        .out_pipeline_valid_out(bb_dfr_B3_start_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_dfr_B3_start_stall_region_out_stall_out),
        .out_valid_out(bb_dfr_B3_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,6)
    assign out_feedback_stall_out_1 = bb_dfr_B3_start_stall_region_out_feedback_stall_out_1;

    // out_exiting_stall_out(GPOUT,15)
    assign out_exiting_stall_out = bb_dfr_B3_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_dfr1_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,16)
    assign out_exiting_valid_out = bb_dfr_B3_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going12_dfr1_exiting_valid_out;

    // out_intel_reserved_ffwd_0_0(GPOUT,17)
    assign out_intel_reserved_ffwd_0_0 = bb_dfr_B3_start_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,18)
    assign out_intel_reserved_ffwd_1_0 = bb_dfr_B3_start_stall_region_out_intel_reserved_ffwd_1_0;

    // out_iord_bl_call_dfr_o_fifoalmost_full(GPOUT,19)
    assign out_iord_bl_call_dfr_o_fifoalmost_full = bb_dfr_B3_start_stall_region_out_iord_bl_call_dfr_o_fifoalmost_full;

    // out_iord_bl_call_dfr_o_fifoready(GPOUT,20)
    assign out_iord_bl_call_dfr_o_fifoready = bb_dfr_B3_start_stall_region_out_iord_bl_call_dfr_o_fifoready;

    // out_stall_out_0(GPOUT,21)
    assign out_stall_out_0 = dfr_B3_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,22)
    assign out_stall_out_1 = dfr_B3_start_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,23)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,24)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,25)
    assign out_valid_out_0 = dfr_B3_start_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,27)
    assign out_pipeline_valid_out = bb_dfr_B3_start_stall_region_out_pipeline_valid_out;

endmodule
