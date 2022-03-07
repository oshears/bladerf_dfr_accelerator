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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr1_data_fifo
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:29:59 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_i_llvm_fpga_sfc_exit_s_c0_out_lp_ini0000_exit_dfr1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc11_in;
    wire [0:0] adapt_scalar_trunc11_q;
    wire [0:0] adapt_scalar_trunc13_in;
    wire [0:0] adapt_scalar_trunc13_q;
    wire [0:0] adapt_scalar_trunc15_in;
    wire [0:0] adapt_scalar_trunc15_q;
    wire [6:0] c_i7_04_q;
    wire [23:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [23:0] i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_almost_full_bitsignaltemp;
    wire [23:0] i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect10_b;
    wire [0:0] ip_dsdk_adapt_bitselect12_b;
    wire [0:0] ip_dsdk_adapt_bitselect14_b;


    // c_i7_04(CONSTANT,5)
    assign c_i7_04_q = $unsigned(7'b0000000);

    // element_extension7(BITJOIN,11)
    assign element_extension7_q = {c_i7_04_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,10)
    assign element_extension5_q = {c_i7_04_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,9)
    assign element_extension3_q = {c_i7_04_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,8)
    assign dsdk_ip_adapt_bitjoin1_q = {element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0(EXTIFACE,12)
    assign i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(24)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,17)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_stall;

    // ip_dsdk_adapt_bitselect14(BITSELECT,15)
    assign ip_dsdk_adapt_bitselect14_b = i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_data[16:16];

    // adapt_scalar_trunc15(ROUND,4)
    assign adapt_scalar_trunc15_in = ip_dsdk_adapt_bitselect14_b;
    assign adapt_scalar_trunc15_q = adapt_scalar_trunc15_in[0:0];

    // ip_dsdk_adapt_bitselect12(BITSELECT,14)
    assign ip_dsdk_adapt_bitselect12_b = i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_data[8:8];

    // adapt_scalar_trunc13(ROUND,3)
    assign adapt_scalar_trunc13_in = ip_dsdk_adapt_bitselect12_b;
    assign adapt_scalar_trunc13_q = adapt_scalar_trunc13_in[0:0];

    // ip_dsdk_adapt_bitselect10(BITSELECT,13)
    assign ip_dsdk_adapt_bitselect10_b = i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_data[0:0];

    // adapt_scalar_trunc11(ROUND,2)
    assign adapt_scalar_trunc11_in = ip_dsdk_adapt_bitselect10_b;
    assign adapt_scalar_trunc11_q = adapt_scalar_trunc11_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,19)@20000003
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc11_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc13_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc15_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_lp_init_dfrs_c0_exit_dfr0_o_valid;

endmodule
