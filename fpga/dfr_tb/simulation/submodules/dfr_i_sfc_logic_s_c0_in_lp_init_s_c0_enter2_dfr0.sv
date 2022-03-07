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

// SystemVerilog created from i_sfc_logic_s_c0_in_lp_init_dfrs_c0_enter2_dfr0
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:29:59 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_i_sfc_logic_s_c0_in_lp_init_s_c0_enter2_dfr0 (
    input wire [63:0] in_unnamed_dfr1_dfr_avm_readdata,
    input wire [0:0] in_unnamed_dfr1_dfr_avm_writeack,
    input wire [0:0] in_unnamed_dfr1_dfr_avm_waitrequest,
    input wire [0:0] in_unnamed_dfr1_dfr_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_dfr6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_dfr6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    output wire [31:0] out_unnamed_dfr1_dfr_avm_address,
    output wire [0:0] out_unnamed_dfr1_dfr_avm_enable,
    output wire [0:0] out_unnamed_dfr1_dfr_avm_read,
    output wire [0:0] out_unnamed_dfr1_dfr_avm_write,
    output wire [63:0] out_unnamed_dfr1_dfr_avm_writedata,
    output wire [7:0] out_unnamed_dfr1_dfr_avm_byteenable,
    output wire [0:0] out_unnamed_dfr1_dfr_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_dfr2,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [3:0] c_i4_742_q;
    wire [4:0] c_i5_045_q;
    wire [4:0] c_i5_152_q;
    wire [63:0] c_i64_462970041693686988846_q;
    wire [5:0] c_i6_151_q;
    wire [5:0] c_i6_2349_q;
    wire [7:0] c_i8_048_q;
    wire [5:0] i_adder_dfr26_a;
    wire [5:0] i_adder_dfr26_b;
    logic [5:0] i_adder_dfr26_o;
    wire [5:0] i_adder_dfr26_q;
    wire [3:0] i_cleanups_shl22_dfr5_vt_join_q;
    wire [2:0] i_cleanups_shl22_dfr5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor24_dfr4_q;
    wire [6:0] i_fpga_indvars_iv_next5_dfr24_a;
    wire [6:0] i_fpga_indvars_iv_next5_dfr24_b;
    logic [6:0] i_fpga_indvars_iv_next5_dfr24_o;
    wire [6:0] i_fpga_indvars_iv_next5_dfr24_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_dfr6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_dfr6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_dfr6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_dfr6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_dfr6_out_pipeline_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups21_pop11_dfr2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups21_pop11_dfr2_out_feedback_stall_out_11;
    wire [3:0] i_llvm_fpga_pop_i4_initerations16_pop10_dfr7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations16_pop10_dfr7_out_feedback_stall_out_10;
    wire [4:0] i_llvm_fpga_pop_i5_index_pop9_dfr12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_index_pop9_dfr12_out_feedback_stall_out_9;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop8_dfr16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop8_dfr16_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration20_dfr11_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration20_dfr11_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond28_dfr20_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond28_dfr20_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i4_cleanups21_push11_dfr23_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i4_cleanups21_push11_dfr23_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i4_initerations16_push10_dfr9_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_initerations16_push10_dfr9_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i5_index_push9_dfr27_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i5_index_push9_dfr27_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv4_push8_dfr25_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv4_push8_dfr25_out_feedback_valid_out_8;
    wire [0:0] i_masked27_dfr28_qi;
    reg [0:0] i_masked27_dfr28_q;
    wire [0:0] i_next_cleanups26_dfr22_s;
    reg [3:0] i_next_cleanups26_dfr22_q;
    wire [3:0] i_next_initerations17_dfr8_vt_join_q;
    wire [2:0] i_next_initerations17_dfr8_vt_select_2_b;
    wire [0:0] i_notcmp14_dfr19_q;
    wire [0:0] i_or25_dfr21_q;
    wire [2:0] i_unnamed_dfr14_vt_const_2_q;
    wire [63:0] i_unnamed_dfr14_vt_join_q;
    wire [60:0] i_unnamed_dfr14_vt_select_63_b;
    wire [26:0] i_zext_dfr13_vt_const_31_q;
    wire [31:0] i_zext_dfr13_vt_join_q;
    wire [4:0] i_zext_dfr13_vt_select_4_b;
    wire [4:0] bgTrunc_i_adder_dfr26_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next5_dfr24_sel_x_b;
    wire [0:0] i_first_cleanup23_dfr3_sel_x_b;
    wire [0:0] i_last_initeration19_dfr10_sel_x_b;
    wire [31:0] i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_writedata;
    wire [8:0] i_unnamed_dfr0_add_x_a;
    wire [8:0] i_unnamed_dfr0_add_x_b;
    logic [8:0] i_unnamed_dfr0_add_x_o;
    wire [8:0] i_unnamed_dfr0_add_x_q;
    wire [63:0] i_unnamed_dfr0_append_upper_bits_x_q;
    wire [4:0] i_unnamed_dfr0_narrow_x_b;
    wire [7:0] i_unnamed_dfr0_shift_join_x_q;
    wire [7:0] i_unnamed_dfr0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_unnamed_dfr0_dupName_2_trunc_sel_x_b;
    wire [31:0] i_zext_dfr13_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    wire [0:0] i_exitcond6_dfr17_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid116_i_cleanups_shl22_dfr0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid116_i_cleanups_shl22_dfr0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid117_i_cleanups_shl22_dfr0_shift_x_q;
    wire [0:0] leftShiftStage0_uid119_i_cleanups_shl22_dfr0_shift_x_s;
    reg [3:0] leftShiftStage0_uid119_i_cleanups_shl22_dfr0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid123_i_next_initerations17_dfr0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid125_i_next_initerations17_dfr0_shift_x_q;
    wire [0:0] rightShiftStage0_uid127_i_next_initerations17_dfr0_shift_x_s;
    reg [3:0] rightShiftStage0_uid127_i_next_initerations17_dfr0_shift_x_q;
    wire [55:0] i_unnamed_dfr0_upper_bits_x_merged_bit_select_b;
    wire [7:0] i_unnamed_dfr0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together67_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist2_sync_together67_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together67_aunroll_x_in_i_valid_2_q;
    reg [4:0] redist4_i_llvm_fpga_pop_i5_index_pop9_dfr12_out_data_out_1_q;
    reg [0:0] redist5_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_1_q;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_2_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_3_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together67_aunroll_x_in_i_valid_1(DELAY,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together67_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together67_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together67_aunroll_x_in_i_valid_2(DELAY,132)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together67_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist3_sync_together67_aunroll_x_in_i_valid_2_q <= $unsigned(redist2_sync_together67_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist5_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_1(DELAY,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out);
        end
    end

    // redist6_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_2(DELAY,135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_2_q <= $unsigned(redist5_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid116_i_cleanups_shl22_dfr0_shift_x(BITSELECT,115)@3
    assign leftShiftStage0Idx1Rng1_uid116_i_cleanups_shl22_dfr0_shift_x_in = i_llvm_fpga_pop_i4_cleanups21_pop11_dfr2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid116_i_cleanups_shl22_dfr0_shift_x_b = leftShiftStage0Idx1Rng1_uid116_i_cleanups_shl22_dfr0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid117_i_cleanups_shl22_dfr0_shift_x(BITJOIN,116)@3
    assign leftShiftStage0Idx1_uid117_i_cleanups_shl22_dfr0_shift_x_q = {leftShiftStage0Idx1Rng1_uid116_i_cleanups_shl22_dfr0_shift_x_b, GND_q};

    // leftShiftStage0_uid119_i_cleanups_shl22_dfr0_shift_x(MUX,118)@3
    assign leftShiftStage0_uid119_i_cleanups_shl22_dfr0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid119_i_cleanups_shl22_dfr0_shift_x_s or i_llvm_fpga_pop_i4_cleanups21_pop11_dfr2_out_data_out or leftShiftStage0Idx1_uid117_i_cleanups_shl22_dfr0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid119_i_cleanups_shl22_dfr0_shift_x_s)
            1'b0 : leftShiftStage0_uid119_i_cleanups_shl22_dfr0_shift_x_q = i_llvm_fpga_pop_i4_cleanups21_pop11_dfr2_out_data_out;
            1'b1 : leftShiftStage0_uid119_i_cleanups_shl22_dfr0_shift_x_q = leftShiftStage0Idx1_uid117_i_cleanups_shl22_dfr0_shift_x_q;
            default : leftShiftStage0_uid119_i_cleanups_shl22_dfr0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl22_dfr5_vt_select_3(BITSELECT,30)@3
    assign i_cleanups_shl22_dfr5_vt_select_3_b = leftShiftStage0_uid119_i_cleanups_shl22_dfr0_shift_x_q[3:1];

    // i_cleanups_shl22_dfr5_vt_join(BITJOIN,29)@3
    assign i_cleanups_shl22_dfr5_vt_join_q = {i_cleanups_shl22_dfr5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor24_dfr4(LOGICAL,33)@3
    assign i_first_cleanup_xor24_dfr4_q = i_first_cleanup23_dfr3_sel_x_b ^ VCC_q;

    // i_notcmp14_dfr19(LOGICAL,52)@3
    assign i_notcmp14_dfr19_q = i_exitcond6_dfr17_cmp_nsign_q ^ VCC_q;

    // i_or25_dfr21(LOGICAL,53)@3
    assign i_or25_dfr21_q = i_notcmp14_dfr19_q | i_first_cleanup_xor24_dfr4_q;

    // i_next_cleanups26_dfr22(MUX,48)@3
    assign i_next_cleanups26_dfr22_s = i_or25_dfr21_q;
    always @(i_next_cleanups26_dfr22_s or i_llvm_fpga_pop_i4_cleanups21_pop11_dfr2_out_data_out or i_cleanups_shl22_dfr5_vt_join_q)
    begin
        unique case (i_next_cleanups26_dfr22_s)
            1'b0 : i_next_cleanups26_dfr22_q = i_llvm_fpga_pop_i4_cleanups21_pop11_dfr2_out_data_out;
            1'b1 : i_next_cleanups26_dfr22_q = i_cleanups_shl22_dfr5_vt_join_q;
            default : i_next_cleanups26_dfr22_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups21_push11_dfr23(BLACKBOX,43)@3
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    dfr_i_llvm_fpga_push_i4_cleanups21_push11_0 thei_llvm_fpga_push_i4_cleanups21_push11_dfr23 (
        .in_data_in(i_next_cleanups26_dfr22_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i4_cleanups21_pop11_dfr2_out_feedback_stall_out_11),
        .in_keep_going18(redist6_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together67_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i4_cleanups21_push11_dfr23_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i4_cleanups21_push11_dfr23_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist1_sync_together67_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together67_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together67_aunroll_x_in_c0_eni1_1_tpl_2_q <= $unsigned(redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_1_q);
        end
    end

    // c_i4_742(CONSTANT,18)
    assign c_i4_742_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups21_pop11_dfr2(BLACKBOX,37)@3
    // out out_feedback_stall_out_11@20000000
    dfr_i_llvm_fpga_pop_i4_cleanups21_pop11_0 thei_llvm_fpga_pop_i4_cleanups21_pop11_dfr2 (
        .in_data_in(c_i4_742_q),
        .in_dir(redist1_sync_together67_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_11(i_llvm_fpga_push_i4_cleanups21_push11_dfr23_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i4_cleanups21_push11_dfr23_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together67_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups21_pop11_dfr2_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i4_cleanups21_pop11_dfr2_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup23_dfr3_sel_x(BITSELECT,74)@3
    assign i_first_cleanup23_dfr3_sel_x_b = i_llvm_fpga_pop_i4_cleanups21_pop11_dfr2_out_data_out[0:0];

    // c_i6_151(CONSTANT,22)
    assign c_i6_151_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next5_dfr24(ADD,34)@3
    assign i_fpga_indvars_iv_next5_dfr24_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop8_dfr16_out_data_out};
    assign i_fpga_indvars_iv_next5_dfr24_b = {1'b0, c_i6_151_q};
    assign i_fpga_indvars_iv_next5_dfr24_o = $unsigned(i_fpga_indvars_iv_next5_dfr24_a) + $unsigned(i_fpga_indvars_iv_next5_dfr24_b);
    assign i_fpga_indvars_iv_next5_dfr24_q = i_fpga_indvars_iv_next5_dfr24_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next5_dfr24_sel_x(BITSELECT,67)@3
    assign bgTrunc_i_fpga_indvars_iv_next5_dfr24_sel_x_b = i_fpga_indvars_iv_next5_dfr24_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv4_push8_dfr25(BLACKBOX,46)@3
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    dfr_i_llvm_fpga_push_i6_fpga_indvars_iv4_push8_0 thei_llvm_fpga_push_i6_fpga_indvars_iv4_push8_dfr25 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next5_dfr24_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop8_dfr16_out_feedback_stall_out_8),
        .in_keep_going18(redist6_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together67_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i6_fpga_indvars_iv4_push8_dfr25_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i6_fpga_indvars_iv4_push8_dfr25_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2349(CONSTANT,23)
    assign c_i6_2349_q = $unsigned(6'b010111);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop8_dfr16(BLACKBOX,40)@3
    // out out_feedback_stall_out_8@20000000
    dfr_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop8_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv4_pop8_dfr16 (
        .in_data_in(c_i6_2349_q),
        .in_dir(redist1_sync_together67_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_8(i_llvm_fpga_push_i6_fpga_indvars_iv4_push8_dfr25_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i6_fpga_indvars_iv4_push8_dfr25_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together67_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop8_dfr16_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop8_dfr16_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond6_dfr17_cmp_nsign(LOGICAL,111)@3
    assign i_exitcond6_dfr17_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop8_dfr16_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond28_dfr20(BLACKBOX,42)@3
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    dfr_i_llvm_fpga_push_i1_notexitcond28_0 thei_llvm_fpga_push_i1_notexitcond28_dfr20 (
        .in_data_in(i_exitcond6_dfr17_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going18_dfr6_out_not_exitcond_stall_out),
        .in_first_cleanup23(i_first_cleanup23_dfr3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together67_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond28_dfr20_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond28_dfr20_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,99)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid123_i_next_initerations17_dfr0_shift_x(BITSELECT,122)@2
    assign rightShiftStage0Idx1Rng1_uid123_i_next_initerations17_dfr0_shift_x_b = i_llvm_fpga_pop_i4_initerations16_pop10_dfr7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid125_i_next_initerations17_dfr0_shift_x(BITJOIN,124)@2
    assign rightShiftStage0Idx1_uid125_i_next_initerations17_dfr0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid123_i_next_initerations17_dfr0_shift_x_b};

    // valid_fanout_reg1(REG,97)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,98)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i4_initerations16_push10_dfr9(BLACKBOX,44)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    dfr_i_llvm_fpga_push_i4_initerations16_push10_0 thei_llvm_fpga_push_i4_initerations16_push10_dfr9 (
        .in_data_in(i_next_initerations17_dfr8_vt_join_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_initerations16_pop10_dfr7_out_feedback_stall_out_10),
        .in_keep_going18(redist5_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_initerations16_push10_dfr9_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_initerations16_push10_dfr9_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations16_pop10_dfr7(BLACKBOX,38)@2
    // out out_feedback_stall_out_10@20000000
    dfr_i_llvm_fpga_pop_i4_initerations16_pop10_0 thei_llvm_fpga_pop_i4_initerations16_pop10_dfr7 (
        .in_data_in(c_i4_742_q),
        .in_dir(redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_initerations16_push10_dfr9_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_initerations16_push10_dfr9_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations16_pop10_dfr7_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_initerations16_pop10_dfr7_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid127_i_next_initerations17_dfr0_shift_x(MUX,126)@2
    assign rightShiftStage0_uid127_i_next_initerations17_dfr0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid127_i_next_initerations17_dfr0_shift_x_s or i_llvm_fpga_pop_i4_initerations16_pop10_dfr7_out_data_out or rightShiftStage0Idx1_uid125_i_next_initerations17_dfr0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid127_i_next_initerations17_dfr0_shift_x_s)
            1'b0 : rightShiftStage0_uid127_i_next_initerations17_dfr0_shift_x_q = i_llvm_fpga_pop_i4_initerations16_pop10_dfr7_out_data_out;
            1'b1 : rightShiftStage0_uid127_i_next_initerations17_dfr0_shift_x_q = rightShiftStage0Idx1_uid125_i_next_initerations17_dfr0_shift_x_q;
            default : rightShiftStage0_uid127_i_next_initerations17_dfr0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations17_dfr8_vt_select_2(BITSELECT,51)@2
    assign i_next_initerations17_dfr8_vt_select_2_b = rightShiftStage0_uid127_i_next_initerations17_dfr0_shift_x_q[2:0];

    // i_next_initerations17_dfr8_vt_join(BITJOIN,50)@2
    assign i_next_initerations17_dfr8_vt_join_q = {GND_q, i_next_initerations17_dfr8_vt_select_2_b};

    // i_last_initeration19_dfr10_sel_x(BITSELECT,75)@2
    assign i_last_initeration19_dfr10_sel_x_b = i_next_initerations17_dfr8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration20_dfr11(BLACKBOX,41)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    dfr_i_llvm_fpga_push_i1_lastiniteration20_0 thei_llvm_fpga_push_i1_lastiniteration20_dfr11 (
        .in_data_in(i_last_initeration19_dfr10_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going18_dfr6_out_initeration_stall_out),
        .in_keep_going18(redist5_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration20_dfr11_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration20_dfr11_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going18_dfr6(BLACKBOX,36)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    dfr_i_llvm_fpga_pipeline_keep_going18_0 thei_llvm_fpga_pipeline_keep_going18_dfr6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration20_dfr11_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration20_dfr11_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond28_dfr20_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond28_dfr20_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going18_dfr6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going18_dfr6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going18_dfr6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going18_dfr6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going18_dfr6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,26)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_dfr6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going18_dfr6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going18_dfr6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going18_dfr6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,63)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going18_dfr6_out_pipeline_valid_out;

    // c_i8_048(CONSTANT,24)
    assign c_i8_048_q = $unsigned(8'b00000000);

    // valid_fanout_reg5(REG,101)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together67_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i64_462970041693686988846(CONSTANT,21)
    assign c_i64_462970041693686988846_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_unnamed_dfr0_upper_bits_x_merged_bit_select(BITSELECT,128)@3
    assign i_unnamed_dfr0_upper_bits_x_merged_bit_select_b = c_i64_462970041693686988846_q[63:8];
    assign i_unnamed_dfr0_upper_bits_x_merged_bit_select_c = c_i64_462970041693686988846_q[7:0];

    // i_zext_dfr13_vt_const_31(CONSTANT,58)
    assign i_zext_dfr13_vt_const_31_q = $unsigned(27'b000000000000000000000000000);

    // valid_fanout_reg4(REG,100)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,102)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist2_sync_together67_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i5_152(CONSTANT,20)
    assign c_i5_152_q = $unsigned(5'b00001);

    // i_adder_dfr26(ADD,27)@3
    assign i_adder_dfr26_a = {1'b0, redist4_i_llvm_fpga_pop_i5_index_pop9_dfr12_out_data_out_1_q};
    assign i_adder_dfr26_b = {1'b0, c_i5_152_q};
    assign i_adder_dfr26_o = $unsigned(i_adder_dfr26_a) + $unsigned(i_adder_dfr26_b);
    assign i_adder_dfr26_q = i_adder_dfr26_o[5:0];

    // bgTrunc_i_adder_dfr26_sel_x(BITSELECT,66)@3
    assign bgTrunc_i_adder_dfr26_sel_x_b = i_adder_dfr26_q[4:0];

    // i_llvm_fpga_push_i5_index_push9_dfr27(BLACKBOX,45)@3
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    dfr_i_llvm_fpga_push_i5_index_push9_0 thei_llvm_fpga_push_i5_index_push9_dfr27 (
        .in_data_in(bgTrunc_i_adder_dfr26_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i5_index_pop9_dfr12_out_feedback_stall_out_9),
        .in_keep_going18(redist6_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i5_index_push9_dfr27_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i5_index_push9_dfr27_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_045(CONSTANT,19)
    assign c_i5_045_q = $unsigned(5'b00000);

    // i_llvm_fpga_pop_i5_index_pop9_dfr12(BLACKBOX,39)@2
    // out out_feedback_stall_out_9@20000000
    dfr_i_llvm_fpga_pop_i5_index_pop9_0 thei_llvm_fpga_pop_i5_index_pop9_dfr12 (
        .in_data_in(c_i5_045_q),
        .in_dir(redist0_sync_together67_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i5_index_push9_dfr27_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i5_index_push9_dfr27_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i5_index_pop9_dfr12_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i5_index_pop9_dfr12_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i5_index_pop9_dfr12_out_data_out_1(DELAY,133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i5_index_pop9_dfr12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i5_index_pop9_dfr12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i5_index_pop9_dfr12_out_data_out);
        end
    end

    // i_zext_dfr13_sel_x(BITSELECT,93)@3
    assign i_zext_dfr13_sel_x_b = {27'b000000000000000000000000000, redist4_i_llvm_fpga_pop_i5_index_pop9_dfr12_out_data_out_1_q[4:0]};

    // i_zext_dfr13_vt_select_4(BITSELECT,60)@3
    assign i_zext_dfr13_vt_select_4_b = i_zext_dfr13_sel_x_b[4:0];

    // i_zext_dfr13_vt_join(BITJOIN,59)@3
    assign i_zext_dfr13_vt_join_q = {i_zext_dfr13_vt_const_31_q, i_zext_dfr13_vt_select_4_b};

    // i_unnamed_dfr0_dupName_0_trunc_sel_x(BITSELECT,91)@3
    assign i_unnamed_dfr0_dupName_0_trunc_sel_x_b = i_zext_dfr13_vt_join_q[7:0];

    // i_unnamed_dfr0_narrow_x(BITSELECT,84)@3
    assign i_unnamed_dfr0_narrow_x_b = i_unnamed_dfr0_dupName_0_trunc_sel_x_b[4:0];

    // i_unnamed_dfr0_shift_join_x(BITJOIN,85)@3
    assign i_unnamed_dfr0_shift_join_x_q = {i_unnamed_dfr0_narrow_x_b, i_unnamed_dfr14_vt_const_2_q};

    // i_unnamed_dfr0_add_x(ADD,81)@3
    assign i_unnamed_dfr0_add_x_a = {1'b0, i_unnamed_dfr0_upper_bits_x_merged_bit_select_c};
    assign i_unnamed_dfr0_add_x_b = {1'b0, i_unnamed_dfr0_shift_join_x_q};
    assign i_unnamed_dfr0_add_x_o = $unsigned(i_unnamed_dfr0_add_x_a) + $unsigned(i_unnamed_dfr0_add_x_b);
    assign i_unnamed_dfr0_add_x_q = i_unnamed_dfr0_add_x_o[8:0];

    // i_unnamed_dfr0_dupName_2_trunc_sel_x(BITSELECT,92)@3
    assign i_unnamed_dfr0_dupName_2_trunc_sel_x_b = i_unnamed_dfr0_add_x_q[7:0];

    // i_unnamed_dfr0_append_upper_bits_x(BITJOIN,82)@3
    assign i_unnamed_dfr0_append_upper_bits_x_q = {i_unnamed_dfr0_upper_bits_x_merged_bit_select_b, i_unnamed_dfr0_dupName_2_trunc_sel_x_b};

    // i_unnamed_dfr14_vt_select_63(BITSELECT,56)@3
    assign i_unnamed_dfr14_vt_select_63_b = i_unnamed_dfr0_append_upper_bits_x_q[63:3];

    // i_unnamed_dfr14_vt_const_2(CONSTANT,54)
    assign i_unnamed_dfr14_vt_const_2_q = $unsigned(3'b000);

    // i_unnamed_dfr14_vt_join(BITJOIN,55)@3
    assign i_unnamed_dfr14_vt_join_q = {i_unnamed_dfr14_vt_select_63_b, i_unnamed_dfr14_vt_const_2_q};

    // i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x(BLACKBOX,76)@3
    // out out_o_stall@4
    // out out_o_valid@4
    // out out_unnamed_dfr1_dfr_avm_address@20000000
    // out out_unnamed_dfr1_dfr_avm_burstcount@20000000
    // out out_unnamed_dfr1_dfr_avm_byteenable@20000000
    // out out_unnamed_dfr1_dfr_avm_enable@20000000
    // out out_unnamed_dfr1_dfr_avm_read@20000000
    // out out_unnamed_dfr1_dfr_avm_write@20000000
    // out out_unnamed_dfr1_dfr_avm_writedata@20000000
    dfr_i_llvm_fpga_mem_unnamed_1_dfr0 thei_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_unnamed_dfr14_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor24_dfr4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .in_unnamed_dfr1_dfr_avm_readdata(in_unnamed_dfr1_dfr_avm_readdata),
        .in_unnamed_dfr1_dfr_avm_readdatavalid(in_unnamed_dfr1_dfr_avm_readdatavalid),
        .in_unnamed_dfr1_dfr_avm_waitrequest(in_unnamed_dfr1_dfr_avm_waitrequest),
        .in_unnamed_dfr1_dfr_avm_writeack(in_unnamed_dfr1_dfr_avm_writeack),
        .in_i_writedata_0_tpl(c_i8_048_q),
        .in_i_writedata_1_tpl(c_i8_048_q),
        .in_i_writedata_2_tpl(c_i8_048_q),
        .in_i_writedata_3_tpl(c_i8_048_q),
        .in_i_writedata_4_tpl(c_i8_048_q),
        .in_i_writedata_5_tpl(c_i8_048_q),
        .in_i_writedata_6_tpl(c_i8_048_q),
        .in_i_writedata_7_tpl(c_i8_048_q),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_dfr1_dfr_avm_address(i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_address),
        .out_unnamed_dfr1_dfr_avm_burstcount(i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_burstcount),
        .out_unnamed_dfr1_dfr_avm_byteenable(i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_byteenable),
        .out_unnamed_dfr1_dfr_avm_enable(i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_enable),
        .out_unnamed_dfr1_dfr_avm_read(i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_read),
        .out_unnamed_dfr1_dfr_avm_write(i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_write),
        .out_unnamed_dfr1_dfr_avm_writedata(i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,69)
    assign out_unnamed_dfr1_dfr_avm_address = i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_address;
    assign out_unnamed_dfr1_dfr_avm_enable = i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_enable;
    assign out_unnamed_dfr1_dfr_avm_read = i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_read;
    assign out_unnamed_dfr1_dfr_avm_write = i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_write;
    assign out_unnamed_dfr1_dfr_avm_writedata = i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_writedata;
    assign out_unnamed_dfr1_dfr_avm_byteenable = i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_byteenable;
    assign out_unnamed_dfr1_dfr_avm_burstcount = i_llvm_fpga_mem_unnamed_dfr1_dfr15_aunroll_x_out_unnamed_dfr1_dfr_avm_burstcount;

    // valid_fanout_reg0(REG,96)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together67_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_masked27_dfr28(LOGICAL,47)@3 + 1
    assign i_masked27_dfr28_qi = i_notcmp14_dfr19_q & i_first_cleanup23_dfr3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked27_dfr28_delay ( .xin(i_masked27_dfr28_qi), .xout(i_masked27_dfr28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_3(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_3_q <= $unsigned(redist6_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_2_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,94)@4
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist7_i_llvm_fpga_pipeline_keep_going18_dfr6_out_data_out_3_q;
    assign out_c0_exi2_2_tpl = i_masked27_dfr28_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_dfr2 = GND_q;

endmodule
