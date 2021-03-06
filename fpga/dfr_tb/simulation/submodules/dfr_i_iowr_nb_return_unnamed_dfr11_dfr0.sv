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

// SystemVerilog created from i_iowr_nb_return_dfr_unnamed_dfr11_dfr0
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:30:00 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_i_iowr_nb_return_unnamed_dfr11_dfr0 (
    output wire [25:0] out_iowr_nb_return_dfr_o_fifodata,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_iowr_nb_return_dfr_o_fifovalid,
    output wire [0:0] out_o_ack,
    output wire [0:0] out_o_valid,
    input wire [25:0] in_i_data_0_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [25:0] bit_select_in_b;
    wire [31:0] c32_0_q;
    wire [5:0] c_i6_010_q;
    wire [31:0] dsdk_ip_adapt_bitjoin1_q;
    wire [31:0] dsdk_ip_adapt_bitjoin3_q;
    wire [31:0] dsdk_ip_adapt_bitjoin5_q;
    wire [31:0] dsdk_ip_adapt_bitjoin7_q;
    wire [31:0] element_extension9_q;
    wire [25:0] iowr_nb_i_data;
    wire [0:0] iowr_nb_i_endofpacket;
    wire iowr_nb_i_endofpacket_bitsignaltemp;
    wire [0:0] iowr_nb_i_fifoready;
    wire iowr_nb_i_fifoready_bitsignaltemp;
    wire [31:0] iowr_nb_i_fifosize;
    wire [31:0] iowr_nb_i_packetempty;
    wire [0:0] iowr_nb_i_predicate;
    wire iowr_nb_i_predicate_bitsignaltemp;
    wire [0:0] iowr_nb_i_stall;
    wire iowr_nb_i_stall_bitsignaltemp;
    wire [0:0] iowr_nb_i_startofpacket;
    wire iowr_nb_i_startofpacket_bitsignaltemp;
    wire [0:0] iowr_nb_i_valid;
    wire iowr_nb_i_valid_bitsignaltemp;
    wire [0:0] iowr_nb_o_ack;
    wire iowr_nb_o_ack_bitsignaltemp;
    wire [25:0] iowr_nb_o_fifodata;
    wire [0:0] iowr_nb_o_fifoempty;
    wire [0:0] iowr_nb_o_fifovalid;
    wire iowr_nb_o_fifovalid_bitsignaltemp;
    wire [0:0] iowr_nb_o_stall;
    wire iowr_nb_o_stall_bitsignaltemp;
    wire [0:0] iowr_nb_o_valid;
    wire iowr_nb_o_valid_bitsignaltemp;
    wire [31:0] iowr_nb_profile_total_fifo_size_incr;


    // c32_0(CONSTANT,7)
    assign c32_0_q = $unsigned(32'b00000000000000000000000000000000);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i6_010(CONSTANT,9)
    assign c_i6_010_q = $unsigned(6'b000000);

    // element_extension9(BITJOIN,15)
    assign element_extension9_q = {c_i6_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin7(BITJOIN,14)
    assign dsdk_ip_adapt_bitjoin7_q = element_extension9_q;

    // dsdk_ip_adapt_bitjoin5(BITJOIN,13)
    assign dsdk_ip_adapt_bitjoin5_q = dsdk_ip_adapt_bitjoin7_q;

    // dsdk_ip_adapt_bitjoin3(BITJOIN,12)
    assign dsdk_ip_adapt_bitjoin3_q = dsdk_ip_adapt_bitjoin5_q;

    // dsdk_ip_adapt_bitjoin1(BITJOIN,11)
    assign dsdk_ip_adapt_bitjoin1_q = dsdk_ip_adapt_bitjoin3_q;

    // bit_select_in(BITSELECT,5)
    assign bit_select_in_b = dsdk_ip_adapt_bitjoin1_q[25:0];

    // iowr_nb(EXTIFACE,16)
    assign iowr_nb_i_data = bit_select_in_b;
    assign iowr_nb_i_endofpacket = GND_q;
    assign iowr_nb_i_fifoready = VCC_q;
    assign iowr_nb_i_fifosize = c32_0_q;
    assign iowr_nb_i_packetempty = c32_0_q;
    assign iowr_nb_i_predicate = GND_q;
    assign iowr_nb_i_stall = in_i_stall;
    assign iowr_nb_i_startofpacket = GND_q;
    assign iowr_nb_i_valid = in_i_valid;
    assign iowr_nb_i_endofpacket_bitsignaltemp = iowr_nb_i_endofpacket[0];
    assign iowr_nb_i_fifoready_bitsignaltemp = iowr_nb_i_fifoready[0];
    assign iowr_nb_i_predicate_bitsignaltemp = iowr_nb_i_predicate[0];
    assign iowr_nb_i_stall_bitsignaltemp = iowr_nb_i_stall[0];
    assign iowr_nb_i_startofpacket_bitsignaltemp = iowr_nb_i_startofpacket[0];
    assign iowr_nb_i_valid_bitsignaltemp = iowr_nb_i_valid[0];
    assign iowr_nb_o_ack[0] = iowr_nb_o_ack_bitsignaltemp;
    assign iowr_nb_o_fifovalid[0] = iowr_nb_o_fifovalid_bitsignaltemp;
    assign iowr_nb_o_stall[0] = iowr_nb_o_stall_bitsignaltemp;
    assign iowr_nb_o_valid[0] = iowr_nb_o_valid_bitsignaltemp;
    hld_iowr #(
        .ALMOST_FULL_CUTOFF_SIDEPATH(0),
        .CAPACITY_FROM_CHANNEL(0),
        .DISCONNECT_DOWNSTREAM(0),
        .INTER_KERNEL_PIPELINING(0),
        .USE_STALL_LATENCY_SIDEPATH(0),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(1),
        .CUTPATHS(0),
        .DATA_WIDTH(26),
        .EMPTY_WIDTH(0),
        .ENABLED(0),
        .NON_BLOCKING(1),
        .NO_PREDICATION(1),
        .SYNCHRONIZE_RESET(0)
    ) theiowr_nb (
        .i_data(bit_select_in_b),
        .i_endofpacket(iowr_nb_i_endofpacket_bitsignaltemp),
        .i_fifoready(iowr_nb_i_fifoready_bitsignaltemp),
        .i_fifosize(c32_0_q),
        .i_packetempty(c32_0_q),
        .i_predicate(iowr_nb_i_predicate_bitsignaltemp),
        .i_stall(iowr_nb_i_stall_bitsignaltemp),
        .i_startofpacket(iowr_nb_i_startofpacket_bitsignaltemp),
        .i_valid(iowr_nb_i_valid_bitsignaltemp),
        .o_ack(iowr_nb_o_ack_bitsignaltemp),
        .o_fifodata(iowr_nb_o_fifodata),
        .o_fifoempty(),
        .o_fifovalid(iowr_nb_o_fifovalid_bitsignaltemp),
        .o_stall(iowr_nb_o_stall_bitsignaltemp),
        .o_valid(iowr_nb_o_valid_bitsignaltemp),
        .profile_total_fifo_size_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,17)
    assign out_iowr_nb_return_dfr_o_fifodata = iowr_nb_o_fifodata;

    // sync_out(GPOUT,19)@20000000
    assign out_o_stall = iowr_nb_o_stall;

    // dupName_0_regfree_osync_x(GPOUT,21)
    assign out_iowr_nb_return_dfr_o_fifovalid = iowr_nb_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,22)@1
    assign out_o_ack = iowr_nb_o_ack;
    assign out_o_valid = iowr_nb_o_valid;

endmodule
