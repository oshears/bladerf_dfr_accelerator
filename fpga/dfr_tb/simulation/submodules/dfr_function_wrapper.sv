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

// SystemVerilog created from dfr_function_wrapper
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:30:00 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_function_wrapper (
    input wire [63:0] avm_memcoalesce_load_dfr_fpgaunique_63_dfr_readdata,
    input wire [0:0] avm_memcoalesce_load_dfr_fpgaunique_63_dfr_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_dfr_fpgaunique_63_dfr_waitrequest,
    input wire [0:0] avm_memcoalesce_load_dfr_fpgaunique_63_dfr_writeack,
    input wire [63:0] avm_memdep_2_dfr_readdata,
    input wire [0:0] avm_memdep_2_dfr_readdatavalid,
    input wire [0:0] avm_memdep_2_dfr_waitrequest,
    input wire [0:0] avm_memdep_2_dfr_writeack,
    input wire [63:0] avm_unnamed_dfr1_dfr_readdata,
    input wire [0:0] avm_unnamed_dfr1_dfr_readdatavalid,
    input wire [0:0] avm_unnamed_dfr1_dfr_waitrequest,
    input wire [0:0] avm_unnamed_dfr1_dfr_writeack,
    input wire [0:0] avst_iord_bl_call_dfr_data,
    input wire [0:0] avst_iord_bl_call_dfr_valid,
    input wire [0:0] avst_iowr_nb_return_dfr_almostfull,
    input wire [15:0] i_data,
    input wire [15:0] q_data,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memcoalesce_load_dfr_fpgaunique_63_dfr_address,
    output wire [0:0] avm_memcoalesce_load_dfr_fpgaunique_63_dfr_burstcount,
    output wire [7:0] avm_memcoalesce_load_dfr_fpgaunique_63_dfr_byteenable,
    output wire [0:0] avm_memcoalesce_load_dfr_fpgaunique_63_dfr_enable,
    output wire [0:0] avm_memcoalesce_load_dfr_fpgaunique_63_dfr_read,
    output wire [0:0] avm_memcoalesce_load_dfr_fpgaunique_63_dfr_write,
    output wire [63:0] avm_memcoalesce_load_dfr_fpgaunique_63_dfr_writedata,
    output wire [31:0] avm_memdep_2_dfr_address,
    output wire [0:0] avm_memdep_2_dfr_burstcount,
    output wire [7:0] avm_memdep_2_dfr_byteenable,
    output wire [0:0] avm_memdep_2_dfr_enable,
    output wire [0:0] avm_memdep_2_dfr_read,
    output wire [0:0] avm_memdep_2_dfr_write,
    output wire [63:0] avm_memdep_2_dfr_writedata,
    output wire [31:0] avm_unnamed_dfr1_dfr_address,
    output wire [0:0] avm_unnamed_dfr1_dfr_burstcount,
    output wire [7:0] avm_unnamed_dfr1_dfr_byteenable,
    output wire [0:0] avm_unnamed_dfr1_dfr_enable,
    output wire [0:0] avm_unnamed_dfr1_dfr_read,
    output wire [0:0] avm_unnamed_dfr1_dfr_write,
    output wire [63:0] avm_unnamed_dfr1_dfr_writedata,
    output wire [0:0] avst_iord_bl_call_dfr_almost_full,
    output wire [0:0] avst_iord_bl_call_dfr_ready,
    output wire [25:0] avst_iowr_nb_return_dfr_data,
    output wire [0:0] avst_iowr_nb_return_dfr_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [25:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [0:0] dfr_function_out_iord_bl_call_dfr_o_fifoalmost_full;
    wire [0:0] dfr_function_out_iord_bl_call_dfr_o_fifoready;
    wire [25:0] dfr_function_out_iowr_nb_return_dfr_o_fifodata;
    wire [0:0] dfr_function_out_iowr_nb_return_dfr_o_fifovalid;
    wire [31:0] dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_address;
    wire [0:0] dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_burstcount;
    wire [7:0] dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_byteenable;
    wire [0:0] dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_enable;
    wire [0:0] dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_read;
    wire [0:0] dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_write;
    wire [63:0] dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writedata;
    wire [31:0] dfr_function_out_memdep_2_dfr_avm_address;
    wire [0:0] dfr_function_out_memdep_2_dfr_avm_burstcount;
    wire [7:0] dfr_function_out_memdep_2_dfr_avm_byteenable;
    wire [0:0] dfr_function_out_memdep_2_dfr_avm_enable;
    wire [0:0] dfr_function_out_memdep_2_dfr_avm_read;
    wire [0:0] dfr_function_out_memdep_2_dfr_avm_write;
    wire [63:0] dfr_function_out_memdep_2_dfr_avm_writedata;
    wire [31:0] dfr_function_out_unnamed_dfr1_dfr_avm_address;
    wire [0:0] dfr_function_out_unnamed_dfr1_dfr_avm_burstcount;
    wire [7:0] dfr_function_out_unnamed_dfr1_dfr_avm_byteenable;
    wire [0:0] dfr_function_out_unnamed_dfr1_dfr_avm_enable;
    wire [0:0] dfr_function_out_unnamed_dfr1_dfr_avm_read;
    wire [0:0] dfr_function_out_unnamed_dfr1_dfr_avm_write;
    wire [63:0] dfr_function_out_unnamed_dfr1_dfr_avm_writedata;
    wire [0:0] not_ready_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // dfr_function(BLACKBOX,7)
    dfr_function thedfr_function (
        .in_arg_call(call_const_q),
        .in_arg_i_data(i_data),
        .in_arg_q_data(q_data),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_dfr_i_fifodata(avst_iord_bl_call_dfr_data),
        .in_iord_bl_call_dfr_i_fifovalid(start),
        .in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_readdata(avm_memcoalesce_load_dfr_fpgaunique_63_dfr_readdata),
        .in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_readdatavalid(avm_memcoalesce_load_dfr_fpgaunique_63_dfr_readdatavalid),
        .in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_waitrequest(avm_memcoalesce_load_dfr_fpgaunique_63_dfr_waitrequest),
        .in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writeack(avm_memcoalesce_load_dfr_fpgaunique_63_dfr_writeack),
        .in_memdep_2_dfr_avm_readdata(avm_memdep_2_dfr_readdata),
        .in_memdep_2_dfr_avm_readdatavalid(avm_memdep_2_dfr_readdatavalid),
        .in_memdep_2_dfr_avm_waitrequest(avm_memdep_2_dfr_waitrequest),
        .in_memdep_2_dfr_avm_writeack(avm_memdep_2_dfr_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_dfr1_dfr_avm_readdata(avm_unnamed_dfr1_dfr_readdata),
        .in_unnamed_dfr1_dfr_avm_readdatavalid(avm_unnamed_dfr1_dfr_readdatavalid),
        .in_unnamed_dfr1_dfr_avm_waitrequest(avm_unnamed_dfr1_dfr_waitrequest),
        .in_unnamed_dfr1_dfr_avm_writeack(avm_unnamed_dfr1_dfr_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_dfr_o_fifoalmost_full(dfr_function_out_iord_bl_call_dfr_o_fifoalmost_full),
        .out_iord_bl_call_dfr_o_fifoready(dfr_function_out_iord_bl_call_dfr_o_fifoready),
        .out_iowr_nb_return_dfr_o_fifodata(dfr_function_out_iowr_nb_return_dfr_o_fifodata),
        .out_iowr_nb_return_dfr_o_fifovalid(dfr_function_out_iowr_nb_return_dfr_o_fifovalid),
        .out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_address(dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_address),
        .out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_burstcount(dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_burstcount),
        .out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_byteenable(dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_byteenable),
        .out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_enable(dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_enable),
        .out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_read(dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_read),
        .out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_write(dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_write),
        .out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writedata(dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writedata),
        .out_memdep_2_dfr_avm_address(dfr_function_out_memdep_2_dfr_avm_address),
        .out_memdep_2_dfr_avm_burstcount(dfr_function_out_memdep_2_dfr_avm_burstcount),
        .out_memdep_2_dfr_avm_byteenable(dfr_function_out_memdep_2_dfr_avm_byteenable),
        .out_memdep_2_dfr_avm_enable(dfr_function_out_memdep_2_dfr_avm_enable),
        .out_memdep_2_dfr_avm_read(dfr_function_out_memdep_2_dfr_avm_read),
        .out_memdep_2_dfr_avm_write(dfr_function_out_memdep_2_dfr_avm_write),
        .out_memdep_2_dfr_avm_writedata(dfr_function_out_memdep_2_dfr_avm_writedata),
        .out_stall_out(),
        .out_unnamed_dfr1_dfr_avm_address(dfr_function_out_unnamed_dfr1_dfr_avm_address),
        .out_unnamed_dfr1_dfr_avm_burstcount(dfr_function_out_unnamed_dfr1_dfr_avm_burstcount),
        .out_unnamed_dfr1_dfr_avm_byteenable(dfr_function_out_unnamed_dfr1_dfr_avm_byteenable),
        .out_unnamed_dfr1_dfr_avm_enable(dfr_function_out_unnamed_dfr1_dfr_avm_enable),
        .out_unnamed_dfr1_dfr_avm_read(dfr_function_out_unnamed_dfr1_dfr_avm_read),
        .out_unnamed_dfr1_dfr_avm_write(dfr_function_out_unnamed_dfr1_dfr_avm_write),
        .out_unnamed_dfr1_dfr_avm_writedata(dfr_function_out_unnamed_dfr1_dfr_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memcoalesce_load_dfr_fpgaunique_63_dfr_address(GPOUT,29)
    assign avm_memcoalesce_load_dfr_fpgaunique_63_dfr_address = dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_address;

    // avm_memcoalesce_load_dfr_fpgaunique_63_dfr_burstcount(GPOUT,30)
    assign avm_memcoalesce_load_dfr_fpgaunique_63_dfr_burstcount = dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_burstcount;

    // avm_memcoalesce_load_dfr_fpgaunique_63_dfr_byteenable(GPOUT,31)
    assign avm_memcoalesce_load_dfr_fpgaunique_63_dfr_byteenable = dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_byteenable;

    // avm_memcoalesce_load_dfr_fpgaunique_63_dfr_enable(GPOUT,32)
    assign avm_memcoalesce_load_dfr_fpgaunique_63_dfr_enable = dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_enable;

    // avm_memcoalesce_load_dfr_fpgaunique_63_dfr_read(GPOUT,33)
    assign avm_memcoalesce_load_dfr_fpgaunique_63_dfr_read = dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_read;

    // avm_memcoalesce_load_dfr_fpgaunique_63_dfr_write(GPOUT,34)
    assign avm_memcoalesce_load_dfr_fpgaunique_63_dfr_write = dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_write;

    // avm_memcoalesce_load_dfr_fpgaunique_63_dfr_writedata(GPOUT,35)
    assign avm_memcoalesce_load_dfr_fpgaunique_63_dfr_writedata = dfr_function_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writedata;

    // avm_memdep_2_dfr_address(GPOUT,36)
    assign avm_memdep_2_dfr_address = dfr_function_out_memdep_2_dfr_avm_address;

    // avm_memdep_2_dfr_burstcount(GPOUT,37)
    assign avm_memdep_2_dfr_burstcount = dfr_function_out_memdep_2_dfr_avm_burstcount;

    // avm_memdep_2_dfr_byteenable(GPOUT,38)
    assign avm_memdep_2_dfr_byteenable = dfr_function_out_memdep_2_dfr_avm_byteenable;

    // avm_memdep_2_dfr_enable(GPOUT,39)
    assign avm_memdep_2_dfr_enable = dfr_function_out_memdep_2_dfr_avm_enable;

    // avm_memdep_2_dfr_read(GPOUT,40)
    assign avm_memdep_2_dfr_read = dfr_function_out_memdep_2_dfr_avm_read;

    // avm_memdep_2_dfr_write(GPOUT,41)
    assign avm_memdep_2_dfr_write = dfr_function_out_memdep_2_dfr_avm_write;

    // avm_memdep_2_dfr_writedata(GPOUT,42)
    assign avm_memdep_2_dfr_writedata = dfr_function_out_memdep_2_dfr_avm_writedata;

    // avm_unnamed_dfr1_dfr_address(GPOUT,43)
    assign avm_unnamed_dfr1_dfr_address = dfr_function_out_unnamed_dfr1_dfr_avm_address;

    // avm_unnamed_dfr1_dfr_burstcount(GPOUT,44)
    assign avm_unnamed_dfr1_dfr_burstcount = dfr_function_out_unnamed_dfr1_dfr_avm_burstcount;

    // avm_unnamed_dfr1_dfr_byteenable(GPOUT,45)
    assign avm_unnamed_dfr1_dfr_byteenable = dfr_function_out_unnamed_dfr1_dfr_avm_byteenable;

    // avm_unnamed_dfr1_dfr_enable(GPOUT,46)
    assign avm_unnamed_dfr1_dfr_enable = dfr_function_out_unnamed_dfr1_dfr_avm_enable;

    // avm_unnamed_dfr1_dfr_read(GPOUT,47)
    assign avm_unnamed_dfr1_dfr_read = dfr_function_out_unnamed_dfr1_dfr_avm_read;

    // avm_unnamed_dfr1_dfr_write(GPOUT,48)
    assign avm_unnamed_dfr1_dfr_write = dfr_function_out_unnamed_dfr1_dfr_avm_write;

    // avm_unnamed_dfr1_dfr_writedata(GPOUT,49)
    assign avm_unnamed_dfr1_dfr_writedata = dfr_function_out_unnamed_dfr1_dfr_avm_writedata;

    // avst_iord_bl_call_dfr_almost_full(GPOUT,50)
    assign avst_iord_bl_call_dfr_almost_full = dfr_function_out_iord_bl_call_dfr_o_fifoalmost_full;

    // avst_iord_bl_call_dfr_ready(GPOUT,51)
    assign avst_iord_bl_call_dfr_ready = dfr_function_out_iord_bl_call_dfr_o_fifoready;

    // avst_iowr_nb_return_dfr_data(GPOUT,52)
    assign avst_iowr_nb_return_dfr_data = dfr_function_out_iowr_nb_return_dfr_o_fifodata;

    // avst_iowr_nb_return_dfr_valid(GPOUT,53)
    assign avst_iowr_nb_return_dfr_valid = dfr_function_out_iowr_nb_return_dfr_o_fifovalid;

    // not_ready(LOGICAL,28)
    assign not_ready_q = ~ (dfr_function_out_iord_bl_call_dfr_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,58)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,57)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,54)
    assign busy = busy_or_q;

    // done(GPOUT,55)
    assign done = dfr_function_out_iowr_nb_return_dfr_o_fifovalid;

    // returndata(GPOUT,56)
    assign returndata = dfr_function_out_iowr_nb_return_dfr_o_fifodata;

endmodule
