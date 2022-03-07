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

// SystemVerilog created from i_sfc_logic_s_c1_in_wt_entry_dfrs_c1_enter_dfr0
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:29:59 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_dfr0 (
    output wire [25:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_dfr2,
    output wire [0:0] out_unnamed_dfr6_0_tpl,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [0:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [25:0] i_llvm_fpga_ffwd_source_i26_unnamed_dfr5_dfr3_out_intel_reserved_ffwd_0_0;
    wire [31:0] c_i32_06_recast_x_q;
    wire [25:0] i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i460_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i460_dfr1_x_out_primWireOut;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    reg [0:0] redist0_sync_together7_aunroll_x_in_c1_eni1_1_tpl_16_q;
    reg [0:0] redist1_sync_together7_aunroll_x_in_i_valid_15_q;
    reg [0:0] redist2_sync_together7_aunroll_x_in_i_valid_73_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together7_aunroll_x_in_i_valid_15(DELAY,14)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together7_aunroll_x_in_i_valid_15 ( .xin(in_i_valid), .xout(redist1_sync_together7_aunroll_x_in_i_valid_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg1(REG,12)@17 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist1_sync_together7_aunroll_x_in_i_valid_15_q);
        end
    end

    // c_i32_06_recast_x(CONSTANT,6)
    assign c_i32_06_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i460_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i460_dfr1_x(BLACKBOX,7)@18
    dfr_flt_i_llvm_fpga_vpfp_cast_from_fixed0000f0cd16ol0cd06cj0qfzo thei_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i460_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i460_dfr1_x (
        .in_0(c_i32_06_recast_x_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i460_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i460_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist0_sync_together7_aunroll_x_in_c1_eni1_1_tpl_16(DELAY,13)
    dspba_delay_ver #( .width(1), .depth(16), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together7_aunroll_x_in_c1_eni1_1_tpl_16 ( .xin(in_c1_eni1_1_tpl), .xout(redist0_sync_together7_aunroll_x_in_c1_eni1_1_tpl_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i26_unnamed_dfr5_dfr3(BLACKBOX,3)@18
    // out out_intel_reserved_ffwd_0_0@20000000
    dfr_i_llvm_fpga_ffwd_source_i26_unnamed_5_dfr0 thei_llvm_fpga_ffwd_source_i26_unnamed_dfr5_dfr3 (
        .in_i_dependence(redist0_sync_together7_aunroll_x_in_c1_eni1_1_tpl_16_q),
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i460_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i460_dfr1_x_out_primWireOut),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_i26_unnamed_dfr5_dfr3_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,4)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_i26_unnamed_dfr5_dfr3_out_intel_reserved_ffwd_0_0;

    // redist2_sync_together7_aunroll_x_in_i_valid_73(DELAY,15)
    dspba_delay_ver #( .width(1), .depth(58), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together7_aunroll_x_in_i_valid_73 ( .xin(redist1_sync_together7_aunroll_x_in_i_valid_15_q), .xout(redist2_sync_together7_aunroll_x_in_i_valid_73_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,11)@75 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together7_aunroll_x_in_i_valid_73_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,9)@76
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_dfr2 = GND_q;
    assign out_unnamed_dfr6_0_tpl = GND_q;

endmodule
