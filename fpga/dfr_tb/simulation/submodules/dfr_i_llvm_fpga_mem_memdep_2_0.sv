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

// SystemVerilog created from i_llvm_fpga_mem_memdep_2_dfr0
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:29:59 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_i_llvm_fpga_mem_memdep_2_0 (
    input wire [63:0] in_memdep_2_dfr_avm_readdata,
    input wire [0:0] in_memdep_2_dfr_avm_writeack,
    input wire [0:0] in_memdep_2_dfr_avm_waitrequest,
    input wire [0:0] in_memdep_2_dfr_avm_readdatavalid,
    output wire [31:0] out_memdep_2_dfr_avm_address,
    output wire [0:0] out_memdep_2_dfr_avm_enable,
    output wire [0:0] out_memdep_2_dfr_avm_read,
    output wire [0:0] out_memdep_2_dfr_avm_write,
    output wire [63:0] out_memdep_2_dfr_avm_writedata,
    output wire [7:0] out_memdep_2_dfr_avm_byteenable,
    output wire [0:0] out_memdep_2_dfr_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_o_writeack,
    input wire [63:0] in_i_address,
    input wire [0:0] in_i_predicate,
    input wire [0:0] in_i_valid,
    input wire [31:0] in_i_writedata_0_tpl,
    input wire [31:0] in_i_writedata_1_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_i32_02_q;
    wire [2:0] c_i3_09_q;
    wire [63:0] c_i64_010_q;
    wire [7:0] c_i8_15_q;
    wire [63:0] dsdk_ip_adapt_bitjoin3_q;
    wire [63:0] i_llvm_fpga_mem_memdep_2_dfr1_avm_readdata;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_avm_readdatavalid;
    wire i_llvm_fpga_mem_memdep_2_dfr1_avm_readdatavalid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_avm_waitrequest;
    wire i_llvm_fpga_mem_memdep_2_dfr1_avm_waitrequest_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_avm_writeack;
    wire i_llvm_fpga_mem_memdep_2_dfr1_avm_writeack_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_clock2x;
    wire i_llvm_fpga_mem_memdep_2_dfr1_clock2x_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_flush;
    wire i_llvm_fpga_mem_memdep_2_dfr1_flush_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memdep_2_dfr1_i_address;
    wire [2:0] i_llvm_fpga_mem_memdep_2_dfr1_i_atomic_op;
    wire [31:0] i_llvm_fpga_mem_memdep_2_dfr1_i_bitwiseor;
    wire [7:0] i_llvm_fpga_mem_memdep_2_dfr1_i_byteenable;
    wire [63:0] i_llvm_fpga_mem_memdep_2_dfr1_i_cmpdata;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_i_predicate;
    wire i_llvm_fpga_mem_memdep_2_dfr1_i_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_i_stall;
    wire i_llvm_fpga_mem_memdep_2_dfr1_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_i_valid;
    wire i_llvm_fpga_mem_memdep_2_dfr1_i_valid_bitsignaltemp;
    wire [63:0] i_llvm_fpga_mem_memdep_2_dfr1_i_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_2_dfr1_stream_base_addr;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_stream_reset;
    wire i_llvm_fpga_mem_memdep_2_dfr1_stream_reset_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memdep_2_dfr1_stream_size;
    wire [31:0] i_llvm_fpga_mem_memdep_2_dfr1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_avm_burstcount;
    wire i_llvm_fpga_mem_memdep_2_dfr1_avm_burstcount_bitsignaltemp;
    wire [7:0] i_llvm_fpga_mem_memdep_2_dfr1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_avm_enable;
    wire i_llvm_fpga_mem_memdep_2_dfr1_avm_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_avm_read;
    wire i_llvm_fpga_mem_memdep_2_dfr1_avm_read_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_avm_write;
    wire i_llvm_fpga_mem_memdep_2_dfr1_avm_write_bitsignaltemp;
    wire [63:0] i_llvm_fpga_mem_memdep_2_dfr1_avm_writedata;
    wire [4:0] i_llvm_fpga_mem_memdep_2_dfr1_o_input_fifo_depth;
    wire [63:0] i_llvm_fpga_mem_memdep_2_dfr1_o_readdata;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_o_stall;
    wire i_llvm_fpga_mem_memdep_2_dfr1_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_o_valid;
    wire i_llvm_fpga_mem_memdep_2_dfr1_o_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr1_o_writeack;
    wire i_llvm_fpga_mem_memdep_2_dfr1_o_writeack_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memdep_2_dfr1_profile_avm_burstcount_total_incr;
    wire [31:0] i_llvm_fpga_mem_memdep_2_dfr1_profile_bw_incr;
    wire [31:0] addr_trunc_sel_x_b;


    // dsdk_ip_adapt_bitjoin3(BITJOIN,10)@220
    assign dsdk_ip_adapt_bitjoin3_q = {in_i_writedata_1_tpl, in_i_writedata_0_tpl};

    // c_i64_010(CONSTANT,8)
    assign c_i64_010_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // c_i8_15(CONSTANT,9)
    assign c_i8_15_q = $unsigned(8'b11111111);

    // c_i32_02(CONSTANT,4)
    assign c_i32_02_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i3_09(CONSTANT,7)
    assign c_i3_09_q = $unsigned(3'b000);

    // addr_trunc_sel_x(BITSELECT,17)@220
    assign addr_trunc_sel_x_b = in_i_address[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_memdep_2_dfr1(EXTIFACE,13)@220 + 1
    assign i_llvm_fpga_mem_memdep_2_dfr1_avm_readdata = in_memdep_2_dfr_avm_readdata;
    assign i_llvm_fpga_mem_memdep_2_dfr1_avm_readdatavalid = in_memdep_2_dfr_avm_readdatavalid;
    assign i_llvm_fpga_mem_memdep_2_dfr1_avm_waitrequest = in_memdep_2_dfr_avm_waitrequest;
    assign i_llvm_fpga_mem_memdep_2_dfr1_avm_writeack = in_memdep_2_dfr_avm_writeack;
    assign i_llvm_fpga_mem_memdep_2_dfr1_clock2x = GND_q;
    assign i_llvm_fpga_mem_memdep_2_dfr1_flush = in_flush;
    assign i_llvm_fpga_mem_memdep_2_dfr1_i_address = addr_trunc_sel_x_b;
    assign i_llvm_fpga_mem_memdep_2_dfr1_i_atomic_op = c_i3_09_q;
    assign i_llvm_fpga_mem_memdep_2_dfr1_i_bitwiseor = c_i32_02_q;
    assign i_llvm_fpga_mem_memdep_2_dfr1_i_byteenable = c_i8_15_q;
    assign i_llvm_fpga_mem_memdep_2_dfr1_i_cmpdata = c_i64_010_q;
    assign i_llvm_fpga_mem_memdep_2_dfr1_i_predicate = in_i_predicate;
    assign i_llvm_fpga_mem_memdep_2_dfr1_i_stall = in_i_stall;
    assign i_llvm_fpga_mem_memdep_2_dfr1_i_valid = in_i_valid;
    assign i_llvm_fpga_mem_memdep_2_dfr1_i_writedata = dsdk_ip_adapt_bitjoin3_q;
    assign i_llvm_fpga_mem_memdep_2_dfr1_stream_base_addr = c_i32_02_q;
    assign i_llvm_fpga_mem_memdep_2_dfr1_stream_reset = GND_q;
    assign i_llvm_fpga_mem_memdep_2_dfr1_stream_size = c_i32_02_q;
    assign i_llvm_fpga_mem_memdep_2_dfr1_avm_readdatavalid_bitsignaltemp = i_llvm_fpga_mem_memdep_2_dfr1_avm_readdatavalid[0];
    assign i_llvm_fpga_mem_memdep_2_dfr1_avm_waitrequest_bitsignaltemp = i_llvm_fpga_mem_memdep_2_dfr1_avm_waitrequest[0];
    assign i_llvm_fpga_mem_memdep_2_dfr1_avm_writeack_bitsignaltemp = i_llvm_fpga_mem_memdep_2_dfr1_avm_writeack[0];
    assign i_llvm_fpga_mem_memdep_2_dfr1_clock2x_bitsignaltemp = i_llvm_fpga_mem_memdep_2_dfr1_clock2x[0];
    assign i_llvm_fpga_mem_memdep_2_dfr1_flush_bitsignaltemp = i_llvm_fpga_mem_memdep_2_dfr1_flush[0];
    assign i_llvm_fpga_mem_memdep_2_dfr1_i_predicate_bitsignaltemp = i_llvm_fpga_mem_memdep_2_dfr1_i_predicate[0];
    assign i_llvm_fpga_mem_memdep_2_dfr1_i_stall_bitsignaltemp = i_llvm_fpga_mem_memdep_2_dfr1_i_stall[0];
    assign i_llvm_fpga_mem_memdep_2_dfr1_i_valid_bitsignaltemp = i_llvm_fpga_mem_memdep_2_dfr1_i_valid[0];
    assign i_llvm_fpga_mem_memdep_2_dfr1_stream_reset_bitsignaltemp = i_llvm_fpga_mem_memdep_2_dfr1_stream_reset[0];
    assign i_llvm_fpga_mem_memdep_2_dfr1_avm_burstcount[0] = i_llvm_fpga_mem_memdep_2_dfr1_avm_burstcount_bitsignaltemp;
    assign i_llvm_fpga_mem_memdep_2_dfr1_avm_enable[0] = i_llvm_fpga_mem_memdep_2_dfr1_avm_enable_bitsignaltemp;
    assign i_llvm_fpga_mem_memdep_2_dfr1_avm_read[0] = i_llvm_fpga_mem_memdep_2_dfr1_avm_read_bitsignaltemp;
    assign i_llvm_fpga_mem_memdep_2_dfr1_avm_write[0] = i_llvm_fpga_mem_memdep_2_dfr1_avm_write_bitsignaltemp;
    assign i_llvm_fpga_mem_memdep_2_dfr1_o_stall[0] = i_llvm_fpga_mem_memdep_2_dfr1_o_stall_bitsignaltemp;
    assign i_llvm_fpga_mem_memdep_2_dfr1_o_valid[0] = i_llvm_fpga_mem_memdep_2_dfr1_o_valid_bitsignaltemp;
    assign i_llvm_fpga_mem_memdep_2_dfr1_o_writeack[0] = i_llvm_fpga_mem_memdep_2_dfr1_o_writeack_bitsignaltemp;
    lsu_top #(
        .ABITS_PER_LMEM_BANK(8),
        .ADDRSPACE(64),
        .ALIGNMENT_BYTES(8),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(1),
        .ATOMIC(0),
        .ATOMIC_WIDTH(3),
        .AVM_READ_DATA_LATENESS(0),
        .AVM_WRITE_DATA_LATENESS(0),
        .AWIDTH(32),
        .BURSTCOUNT_WIDTH(1),
        .ENABLE_BANKED_MEMORY(0),
        .FORCE_NOP_SUPPORT(1),
        .HIGH_FMAX(1),
        .INPUTFIFO_USEDW_MAXBITS(5),
        .KERNEL_SIDE_MEM_LATENCY(1),
        .LMEM_ADDR_PERMUTATION_STYLE(0),
        .MEMORY_SIDE_MEM_LATENCY(0),
        .MWIDTH_BYTES(8),
        .NUMBER_BANKS(1),
        .PROFILE_ADDR_TOGGLE(0),
        .READ(0),
        .STALLFREE(1),
        .STYLE("PIPELINED"),
        .SYNCHRONIZE_RESET(0),
        .USECACHING(0),
        .USEINPUTFIFO(0),
        .USEOUTPUTFIFO(0),
        .USE_BYTE_EN(0),
        .USE_STALL_LATENCY(0),
        .USE_WRITE_ACK(0),
        .WIDE_DATA_SLICING(0),
        .WIDTH_BYTES(8),
        .WRITEDATAWIDTH_BYTES(8)
    ) thei_llvm_fpga_mem_memdep_2_dfr1 (
        .avm_readdata(in_memdep_2_dfr_avm_readdata),
        .avm_readdatavalid(i_llvm_fpga_mem_memdep_2_dfr1_avm_readdatavalid_bitsignaltemp),
        .avm_waitrequest(i_llvm_fpga_mem_memdep_2_dfr1_avm_waitrequest_bitsignaltemp),
        .avm_writeack(i_llvm_fpga_mem_memdep_2_dfr1_avm_writeack_bitsignaltemp),
        .clock2x(i_llvm_fpga_mem_memdep_2_dfr1_clock2x_bitsignaltemp),
        .flush(i_llvm_fpga_mem_memdep_2_dfr1_flush_bitsignaltemp),
        .i_address(addr_trunc_sel_x_b),
        .i_atomic_op(c_i3_09_q),
        .i_bitwiseor(c_i32_02_q),
        .i_byteenable(c_i8_15_q),
        .i_cmpdata(c_i64_010_q),
        .i_predicate(i_llvm_fpga_mem_memdep_2_dfr1_i_predicate_bitsignaltemp),
        .i_stall(i_llvm_fpga_mem_memdep_2_dfr1_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_mem_memdep_2_dfr1_i_valid_bitsignaltemp),
        .i_writedata(dsdk_ip_adapt_bitjoin3_q),
        .stream_base_addr(c_i32_02_q),
        .stream_reset(i_llvm_fpga_mem_memdep_2_dfr1_stream_reset_bitsignaltemp),
        .stream_size(c_i32_02_q),
        .avm_address(i_llvm_fpga_mem_memdep_2_dfr1_avm_address),
        .avm_burstcount(i_llvm_fpga_mem_memdep_2_dfr1_avm_burstcount_bitsignaltemp),
        .avm_byteenable(i_llvm_fpga_mem_memdep_2_dfr1_avm_byteenable),
        .avm_enable(i_llvm_fpga_mem_memdep_2_dfr1_avm_enable_bitsignaltemp),
        .avm_read(i_llvm_fpga_mem_memdep_2_dfr1_avm_read_bitsignaltemp),
        .avm_write(i_llvm_fpga_mem_memdep_2_dfr1_avm_write_bitsignaltemp),
        .avm_writedata(i_llvm_fpga_mem_memdep_2_dfr1_avm_writedata),
        .o_input_fifo_depth(),
        .o_readdata(),
        .o_stall(i_llvm_fpga_mem_memdep_2_dfr1_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_mem_memdep_2_dfr1_o_valid_bitsignaltemp),
        .o_writeack(i_llvm_fpga_mem_memdep_2_dfr1_o_writeack_bitsignaltemp),
        .profile_avm_burstcount_total_incr(),
        .profile_bw_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,12)
    assign out_memdep_2_dfr_avm_address = i_llvm_fpga_mem_memdep_2_dfr1_avm_address;
    assign out_memdep_2_dfr_avm_enable = i_llvm_fpga_mem_memdep_2_dfr1_avm_enable;
    assign out_memdep_2_dfr_avm_read = i_llvm_fpga_mem_memdep_2_dfr1_avm_read;
    assign out_memdep_2_dfr_avm_write = i_llvm_fpga_mem_memdep_2_dfr1_avm_write;
    assign out_memdep_2_dfr_avm_writedata = i_llvm_fpga_mem_memdep_2_dfr1_avm_writedata;
    assign out_memdep_2_dfr_avm_byteenable = i_llvm_fpga_mem_memdep_2_dfr1_avm_byteenable;
    assign out_memdep_2_dfr_avm_burstcount = i_llvm_fpga_mem_memdep_2_dfr1_avm_burstcount;

    // sync_out(GPOUT,16)@221
    assign out_o_stall = i_llvm_fpga_mem_memdep_2_dfr1_o_stall;

    // dupName_0_sync_out_x(GPOUT,18)@221
    assign out_o_valid = i_llvm_fpga_mem_memdep_2_dfr1_o_valid;
    assign out_o_writeack = i_llvm_fpga_mem_memdep_2_dfr1_o_writeack;

endmodule
