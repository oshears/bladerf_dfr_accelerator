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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_dfrs_c0_enter363_dfr0
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:30:00 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_i_sfc_logic_s_c0_in_for_body_s_c0_enter363_dfr0 (
    input wire [63:0] in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_readdata,
    input wire [0:0] in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writeack,
    input wire [0:0] in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dfr6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dfr6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [25:0] in_intel_reserved_ffwd_0_0,
    input wire [25:0] in_intel_reserved_ffwd_1_0,
    output wire [25:0] out_intel_reserved_ffwd_2_0,
    input wire [63:0] in_memdep_2_dfr_avm_readdata,
    input wire [0:0] in_memdep_2_dfr_avm_writeack,
    input wire [0:0] in_memdep_2_dfr_avm_waitrequest,
    input wire [0:0] in_memdep_2_dfr_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_address,
    output wire [0:0] out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_enable,
    output wire [0:0] out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_read,
    output wire [0:0] out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_write,
    output wire [63:0] out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writedata,
    output wire [7:0] out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_burstcount,
    output wire [31:0] out_memdep_2_dfr_avm_address,
    output wire [0:0] out_memdep_2_dfr_avm_enable,
    output wire [0:0] out_memdep_2_dfr_avm_read,
    output wire [0:0] out_memdep_2_dfr_avm_write,
    output wire [63:0] out_memdep_2_dfr_avm_writedata,
    output wire [7:0] out_memdep_2_dfr_avm_byteenable,
    output wire [0:0] out_memdep_2_dfr_avm_burstcount,
    output wire [0:0] out_c0_exi239_0_tpl,
    output wire [0:0] out_c0_exi239_1_tpl,
    output wire [0:0] out_c0_exi239_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_dfr2,
    input wire [0:0] in_c0_eni135_0_tpl,
    input wire [0:0] in_c0_eni135_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_dfr_ZZ3dfrssE9reservoir_static_pmem_q;
    wire [25:0] c_i26_undef265_q;
    wire [31:0] c_i32_0377_q;
    wire [31:0] c_i32_1382_q;
    wire [31:0] c_i32_2270_q;
    wire [31:0] c_i32_3380_q;
    wire [31:0] c_i32_4379_q;
    wire [31:0] c_i32_48385_q;
    wire [31:0] c_i32_49384_q;
    wire [31:0] c_i32_5383_q;
    wire [31:0] c_i32_6378_q;
    wire [31:0] c_i32_7387_q;
    wire [3:0] c_i4_7262_q;
    wire [63:0] c_i64_4566670446731198464304_q;
    wire [63:0] c_i64_4567927017785786368300_q;
    wire [63:0] c_i64_4570639112775663616289_q;
    wire [63:0] c_i64_4572504793779535872310_q;
    wire [63:0] c_i64_4573537256781905920314_q;
    wire [63:0] c_i64_4574207783301283840293_q;
    wire [63:0] c_i64_4574496109877002240297_q;
    wire [63:0] c_i64_4574993709048791040290_q;
    wire [63:0] c_i64_4575364372418789376281_q;
    wire [63:0] c_i64_4576067923190218752307_q;
    wire [63:0] c_i64_4578732572443410432274_q;
    wire [63:0] c_i64_4579107545737592832280_q;
    wire [63:0] c_i64_4579409278221156352318_q;
    wire [63:0] c_i64_4580309323485282304317_q;
    wire [63:0] c_i64_4584052599969284096322_q;
    wire [63:0] c_i64_4585146200356814848302_q;
    wire [63:0] c_i64_4586226050949709824316_q;
    wire [63:0] c_i64_4587642048449871872312_q;
    wire [63:0] c_i64_4588337872620224512287_q;
    wire [63:0] c_i64_4588505341683040256313_q;
    wire [63:0] c_i64_4588583769581027328294_q;
    wire [63:0] c_i64_4591321835391418368315_q;
    wire [63:0] c_i64_4591785808981131264296_q;
    wire [63:0] c_i64_4592021588559265792284_q;
    wire [63:0] c_i64_4592226967503241216275_q;
    wire [63:0] c_i64_4593218949054726144292_q;
    wire [63:0] c_i64_4595959475176734720278_q;
    wire [63:0] c_i64_4597680138665066496273_q;
    wire [63:0] c_i64_4618495171881705472306_q;
    wire [63:0] c_i64_4620958142920377032333_q;
    wire [63:0] c_i64_4621630350130484910366_q;
    wire [63:0] c_i64_4621748285601026878372_q;
    wire [63:0] c_i64_4622328079211860956363_q;
    wire [63:0] c_i64_4622593651689176224356_q;
    wire [63:0] c_i64_4622763659939795274337_q;
    wire [63:0] c_i64_4623373111882354566329_q;
    wire [63:0] c_i64_4623400411886565032370_q;
    wire [63:0] c_i64_4624269310775249156364_q;
    wire [63:0] c_i64_4624287368398568514359_q;
    wire [63:0] c_i64_4624848098348049492367_q;
    wire [63:0] c_i64_4625005314219196666375_q;
    wire [63:0] c_i64_4626951280394440864361_q;
    wire [63:0] c_i64_4628299511403768820371_q;
    wire [63:0] c_i64_4629344098196011112357_q;
    wire [63:0] c_i64_4631829851413803440365_q;
    wire [63:0] c_i64_4632557922030970040341_q;
    wire [63:0] c_i64_4633319770795327952350_q;
    wire [63:0] c_i64_4634618658257228928353_q;
    wire [63:0] c_i64_4636054364303677248369_q;
    wire [63:0] c_i64_4637453113555967136346_q;
    wire [63:0] c_i64_4655282754735974656344_q;
    wire [63:0] c_i64_4676056019505479680351_q;
    wire [5:0] c_i6_1391_q;
    wire [5:0] c_i6_23389_q;
    wire [0:0] comparator_qi;
    reg [0:0] comparator_q;
    wire [1:0] i_arrayidx10_12_dfr167_vt_const_1_q;
    wire [63:0] i_arrayidx10_12_dfr167_vt_join_q;
    wire [61:0] i_arrayidx10_12_dfr167_vt_select_63_b;
    wire [3:0] i_cleanups_shl_dfr5_vt_join_q;
    wire [2:0] i_cleanups_shl_dfr5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_dfr4_q;
    wire [6:0] i_fpga_indvars_iv_next_dfr239_a;
    wire [6:0] i_fpga_indvars_iv_next_dfr239_b;
    logic [6:0] i_fpga_indvars_iv_next_dfr239_o;
    wire [6:0] i_fpga_indvars_iv_next_dfr239_q;
    wire [63:0] i_idxprom9_1_dfr166_vt_join_q;
    wire [31:0] i_idxprom9_1_dfr166_vt_select_31_b;
    wire [32:0] i_inc_1_dfr229_a;
    wire [32:0] i_inc_1_dfr229_b;
    logic [32:0] i_inc_1_dfr229_o;
    wire [32:0] i_inc_1_dfr229_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v1i32_s_case_assign_struct_dfr_fpgaunique_21s_case_stmt134_dfr200_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v1i32_s_case_assign_struct_dfr_fpgaunique_21s_case_stmt40_dfr158_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt101_dfr194_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt_dfr152_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt107_dfr195_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt113_dfr196_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt119_dfr197_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt125_dfr198_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt131_dfr199_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt13_dfr153_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt151_dfr217_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt157_dfr218_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt163_dfr219_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt169_dfr220_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt175_dfr221_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt181_dfr222_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt19_dfr154_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt25_dfr155_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt31_dfr156_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt37_dfr157_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt56_dfr182_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt62_dfr183_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt68_dfr184_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt74_dfr185_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt80_dfr186_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt86_dfr187_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt190_dfr225_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt95_dfr190_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt144_dfr202_q;
    reg [25:0] i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt49_dfr161_q;
    wire [25:0] i_llvm_fpga_ffwd_dest_i26_result_i_i2768_dfr15_out_dest_data_out_1_0;
    wire [25:0] i_llvm_fpga_ffwd_dest_i26_result_i_i4607_dfr12_out_dest_data_out_0_0;
    wire [25:0] i_llvm_fpga_ffwd_source_i26_unnamed_dfr9_dfr241_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dfr6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dfr6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dfr6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dfr6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_dfr6_out_pipeline_valid_out;
    wire [25:0] i_llvm_fpga_pop_i26_retval_sroa_0_sroa_0_pm_1_off0_pop13_dfr13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i26_retval_sroa_0_sroa_0_pm_1_off0_pop13_dfr13_out_feedback_stall_out_13;
    wire [31:0] i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_feedback_stall_out_14;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_feedback_stall_out_16;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop15_dfr7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop15_dfr7_out_feedback_stall_out_15;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_dfr231_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_dfr231_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_dfr11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_dfr11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_dfr235_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_dfr235_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i26_retval_sroa_0_sroa_0_pm_1_off0_push13_dfr228_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i26_retval_sroa_0_sroa_0_pm_1_off0_push13_dfr228_out_feedback_valid_out_13;
    wire [31:0] i_llvm_fpga_push_i32_node_idx_01431_push14_dfr230_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_node_idx_01431_push14_dfr230_out_feedback_valid_out_14;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push16_dfr238_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push16_dfr238_out_feedback_valid_out_16;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push15_dfr9_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push15_dfr9_out_feedback_valid_out_15;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push12_dfr240_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push12_dfr240_out_feedback_valid_out_12;
    wire [0:0] i_masked_dfr242_qi;
    reg [0:0] i_masked_dfr242_q;
    wire [63:0] i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q;
    wire [61:0] i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_select_63_b;
    wire [0:0] i_next_cleanups_dfr237_s;
    reg [3:0] i_next_cleanups_dfr237_q;
    wire [3:0] i_next_initerations_dfr8_vt_join_q;
    wire [2:0] i_next_initerations_dfr8_vt_select_2_b;
    wire [0:0] i_notcmp_dfr234_q;
    wire [0:0] i_or_dfr236_q;
    wire [5:0] i_pms_cs2190_dfr213_vt_const_31_q;
    wire [31:0] i_pms_cs2190_dfr213_vt_join_q;
    wire [25:0] i_pms_cs2190_dfr213_vt_select_25_b;
    wire [31:0] i_pms_cs2195_dfr179_vt_join_q;
    wire [25:0] i_pms_cs2195_dfr179_vt_select_25_b;
    wire [0:0] i_retval_sroa_0_sroa_0_pm_1_off0_replace_phi_dfr14_s;
    reg [25:0] i_retval_sroa_0_sroa_0_pm_1_off0_replace_phi_dfr14_q;
    wire [31:0] i_sel_bits146_dfr216_q;
    wire [28:0] i_sel_bits146_dfr216_vt_const_31_q;
    wire [31:0] i_sel_bits146_dfr216_vt_join_q;
    wire [1:0] i_sel_bits146_dfr216_vt_select_2_b;
    wire [31:0] i_sel_bits51_dfr181_q;
    wire [31:0] i_sel_bits51_dfr181_vt_join_q;
    wire [2:0] i_sel_bits51_dfr181_vt_select_2_b;
    wire [31:0] i_sel_bits97_dfr193_vt_join_q;
    wire [1:0] i_sel_bits97_dfr193_vt_select_2_b;
    wire [31:0] i_sel_bits_dfr151_q;
    wire [31:0] i_sel_bits_dfr151_vt_join_q;
    wire [1:0] i_sel_bits_dfr151_vt_select_2_b;
    wire [2:0] i_sel_shr182_dfr223_vt_const_31_q;
    wire [31:0] i_sel_shr182_dfr223_vt_join_q;
    wire [28:0] i_sel_shr182_dfr223_vt_select_28_b;
    wire [31:0] i_sel_shr87_dfr188_vt_join_q;
    wire [28:0] i_sel_shr87_dfr188_vt_select_28_b;
    wire [31:0] i_sel_shr_dfr159_vt_join_q;
    wire [28:0] i_sel_shr_dfr159_vt_select_28_b;
    wire [32:0] i_sub_1_dfr165_a;
    wire [32:0] i_sub_1_dfr165_b;
    logic [32:0] i_sub_1_dfr165_o;
    wire [32:0] i_sub_1_dfr165_q;
    wire [32:0] i_sub_dfr164_a;
    wire [32:0] i_sub_dfr164_b;
    logic [32:0] i_sub_dfr164_o;
    wire [32:0] i_sub_dfr164_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_dfr239_sel_x_b;
    wire [31:0] bgTrunc_i_inc_1_dfr229_sel_x_b;
    wire [31:0] bgTrunc_i_sub_1_dfr165_sel_x_b;
    wire [31:0] bgTrunc_i_sub_dfr164_sel_x_b;
    wire [31:0] c_i32_10268_recast_x_q;
    wire [0:0] dupName_0_comparator_x_qi;
    reg [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_qi;
    reg [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_qi;
    reg [0:0] dupName_2_comparator_x_q;
    wire [0:0] dupName_23_comparator_x_qi;
    reg [0:0] dupName_23_comparator_x_q;
    wire [0:0] dupName_24_comparator_x_qi;
    reg [0:0] dupName_24_comparator_x_q;
    wire [0:0] dupName_25_comparator_x_qi;
    reg [0:0] dupName_25_comparator_x_q;
    wire [0:0] dupName_26_comparator_x_qi;
    reg [0:0] dupName_26_comparator_x_q;
    wire [0:0] dupName_27_comparator_x_qi;
    reg [0:0] dupName_27_comparator_x_q;
    wire [0:0] dupName_28_comparator_x_qi;
    reg [0:0] dupName_28_comparator_x_q;
    wire [0:0] dupName_29_comparator_x_qi;
    reg [0:0] dupName_29_comparator_x_q;
    wire [0:0] dupName_30_comparator_x_qi;
    reg [0:0] dupName_30_comparator_x_q;
    wire [0:0] dupName_31_comparator_x_qi;
    reg [0:0] dupName_31_comparator_x_q;
    wire [0:0] dupName_32_comparator_x_qi;
    reg [0:0] dupName_32_comparator_x_q;
    wire [0:0] dupName_33_comparator_x_qi;
    reg [0:0] dupName_33_comparator_x_q;
    wire [0:0] dupName_54_comparator_x_qi;
    reg [0:0] dupName_54_comparator_x_q;
    wire [0:0] dupName_55_comparator_x_qi;
    reg [0:0] dupName_55_comparator_x_q;
    wire [0:0] dupName_56_comparator_x_qi;
    reg [0:0] dupName_56_comparator_x_q;
    wire [0:0] dupName_57_comparator_x_qi;
    reg [0:0] dupName_57_comparator_x_q;
    wire [0:0] dupName_58_comparator_x_qi;
    reg [0:0] dupName_58_comparator_x_q;
    wire [0:0] dupName_59_comparator_x_qi;
    reg [0:0] dupName_59_comparator_x_q;
    wire [0:0] dupName_60_comparator_x_qi;
    reg [0:0] dupName_60_comparator_x_q;
    wire [0:0] dupName_61_comparator_x_qi;
    reg [0:0] dupName_61_comparator_x_q;
    wire [0:0] dupName_62_comparator_x_qi;
    reg [0:0] dupName_62_comparator_x_q;
    wire [0:0] dupName_63_comparator_x_qi;
    reg [0:0] dupName_63_comparator_x_q;
    wire [0:0] dupName_91_comparator_x_qi;
    reg [0:0] dupName_91_comparator_x_q;
    wire [0:0] dupName_92_comparator_x_qi;
    reg [0:0] dupName_92_comparator_x_q;
    wire [0:0] dupName_93_comparator_x_qi;
    reg [0:0] dupName_93_comparator_x_q;
    wire [0:0] dupName_94_comparator_x_qi;
    reg [0:0] dupName_94_comparator_x_q;
    wire [0:0] dupName_115_comparator_x_qi;
    reg [0:0] dupName_115_comparator_x_q;
    wire [0:0] dupName_116_comparator_x_qi;
    reg [0:0] dupName_116_comparator_x_q;
    wire [0:0] dupName_117_comparator_x_qi;
    reg [0:0] dupName_117_comparator_x_q;
    wire [0:0] dupName_118_comparator_x_qi;
    reg [0:0] dupName_118_comparator_x_q;
    wire [0:0] dupName_119_comparator_x_qi;
    reg [0:0] dupName_119_comparator_x_q;
    wire [0:0] dupName_120_comparator_x_qi;
    reg [0:0] dupName_120_comparator_x_q;
    wire [8:0] i_arrayidx10_12_dfr0_add_x_a;
    wire [8:0] i_arrayidx10_12_dfr0_add_x_b;
    logic [8:0] i_arrayidx10_12_dfr0_add_x_o;
    wire [8:0] i_arrayidx10_12_dfr0_add_x_q;
    wire [63:0] i_arrayidx10_12_dfr0_append_upper_bits_x_q;
    wire [5:0] i_arrayidx10_12_dfr0_narrow_x_b;
    wire [7:0] i_arrayidx10_12_dfr0_shift_join_x_q;
    wire [7:0] i_arrayidx10_12_dfr0_dupName_0_trunc_sel_x_b;
    wire [7:0] i_arrayidx10_12_dfr0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_dfr3_sel_x_b;
    wire [63:0] i_idxprom9_1_dfr166_sel_x_b;
    wire [0:0] i_last_initeration_dfr10_sel_x_b;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_read;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_write;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writedata;
    wire [25:0] i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_o_readdata_0_tpl;
    wire [25:0] i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_o_readdata_1_tpl;
    wire [31:0] i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_writedata;
    wire [25:0] i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_1_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr0_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr1_x_out_primWireOut;
    wire [31:0] i_pms_cs2190_dfr213_sel_x_b;
    wire [31:0] i_pms_cs2195_dfr179_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [63:0] i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_vpfp_cast_inputx_x_b_const_q;
    wire [0:0] i_exitcond_dfr232_cmp_nsign_q;
    wire [1:0] i_sel_bits97_dfr193_BitSelect_for_a_b;
    wire [31:0] i_sel_bits97_dfr193_join_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid949_i_cleanups_shl_dfr0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid949_i_cleanups_shl_dfr0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid950_i_cleanups_shl_dfr0_shift_x_q;
    wire [0:0] leftShiftStage0_uid952_i_cleanups_shl_dfr0_shift_x_s;
    reg [3:0] leftShiftStage0_uid952_i_cleanups_shl_dfr0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid956_i_next_initerations_dfr0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid958_i_next_initerations_dfr0_shift_x_q;
    wire [0:0] rightShiftStage0_uid960_i_next_initerations_dfr0_shift_x_s;
    reg [3:0] rightShiftStage0_uid960_i_next_initerations_dfr0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid964_i_sel_shr182_dfr0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid966_i_sel_shr182_dfr0_shift_x_q;
    wire [0:0] rightShiftStage0_uid968_i_sel_shr182_dfr0_shift_x_s;
    reg [31:0] rightShiftStage0_uid968_i_sel_shr182_dfr0_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid969_i_sel_shr182_dfr0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid971_i_sel_shr182_dfr0_shift_x_q;
    wire [0:0] rightShiftStage1_uid973_i_sel_shr182_dfr0_shift_x_s;
    reg [31:0] rightShiftStage1_uid973_i_sel_shr182_dfr0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid977_i_sel_shr87_dfr0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid979_i_sel_shr87_dfr0_shift_x_q;
    wire [0:0] rightShiftStage0_uid981_i_sel_shr87_dfr0_shift_x_s;
    reg [31:0] rightShiftStage0_uid981_i_sel_shr87_dfr0_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid982_i_sel_shr87_dfr0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid984_i_sel_shr87_dfr0_shift_x_q;
    wire [0:0] rightShiftStage1_uid986_i_sel_shr87_dfr0_shift_x_s;
    reg [31:0] rightShiftStage1_uid986_i_sel_shr87_dfr0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid990_i_sel_shr_dfr0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid992_i_sel_shr_dfr0_shift_x_q;
    wire [0:0] rightShiftStage0_uid994_i_sel_shr_dfr0_shift_x_s;
    reg [31:0] rightShiftStage0_uid994_i_sel_shr_dfr0_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid995_i_sel_shr_dfr0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid997_i_sel_shr_dfr0_shift_x_q;
    wire [0:0] rightShiftStage1_uid999_i_sel_shr_dfr0_shift_x_s;
    reg [31:0] rightShiftStage1_uid999_i_sel_shr_dfr0_shift_x_q;
    wire [55:0] i_arrayidx10_12_dfr0_upper_bits_x_merged_bit_select_b;
    wire [7:0] i_arrayidx10_12_dfr0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together410_aunroll_x_in_c0_eni135_1_tpl_42_q;
    reg [0:0] redist1_sync_together410_aunroll_x_in_c0_eni135_1_tpl_44_q;
    reg [0:0] redist1_sync_together410_aunroll_x_in_c0_eni135_1_tpl_44_delay_0;
    reg [0:0] redist2_sync_together410_aunroll_x_in_c0_eni135_1_tpl_50_q;
    reg [0:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_q;
    reg [0:0] redist4_sync_together410_aunroll_x_in_i_valid_28_q;
    reg [0:0] redist5_sync_together410_aunroll_x_in_i_valid_41_q;
    reg [0:0] redist6_sync_together410_aunroll_x_in_i_valid_43_q;
    reg [0:0] redist6_sync_together410_aunroll_x_in_i_valid_43_delay_0;
    reg [0:0] redist7_sync_together410_aunroll_x_in_i_valid_44_q;
    reg [0:0] redist8_sync_together410_aunroll_x_in_i_valid_50_q;
    reg [0:0] redist9_sync_together410_aunroll_x_in_i_valid_51_q;
    reg [0:0] redist10_sync_together410_aunroll_x_in_i_valid_218_q;
    reg [0:0] redist11_sync_together410_aunroll_x_in_i_valid_227_q;
    reg [0:0] redist12_sync_together410_aunroll_x_in_i_valid_271_q;
    reg [25:0] redist13_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr0_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist14_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist15_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist16_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist17_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist18_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist20_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist21_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist22_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist23_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist24_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist25_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist26_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist27_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist28_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist29_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist30_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist31_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist32_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist33_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_2_q;
    reg [25:0] redist34_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist35_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist36_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist37_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist38_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist39_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist40_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist41_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist42_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_2_q;
    reg [25:0] redist43_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist44_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist45_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist46_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_2_q;
    reg [25:0] redist47_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist48_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist49_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist50_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist51_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist52_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist53_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist54_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist55_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist56_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist57_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist58_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist59_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist60_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist61_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist62_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist63_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist64_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist65_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist66_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist67_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist68_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist69_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist70_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist71_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist72_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist73_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist74_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist75_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist76_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist77_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist78_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist79_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist80_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist81_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist82_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist83_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist84_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist85_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist86_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist87_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist88_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist89_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist90_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist91_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist92_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist93_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist94_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist95_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist96_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist97_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist98_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist99_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist100_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist101_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist102_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist103_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist104_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist105_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist106_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist107_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist108_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist109_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist110_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist111_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist112_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist113_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist114_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist115_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist116_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist117_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist118_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist119_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist120_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_2_q;
    reg [25:0] redist121_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist122_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist123_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist124_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist125_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist126_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist127_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist128_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist129_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist130_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist131_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist132_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist133_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist134_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist135_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist136_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist137_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist138_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist139_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist140_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist141_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist142_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist143_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist144_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist146_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist148_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist149_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr1_x_out_primWireOut_1_q;
    reg [5:0] redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_q;
    reg [5:0] redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_0;
    reg [5:0] redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_1;
    reg [5:0] redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_2;
    reg [5:0] redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_3;
    reg [0:0] redist151_dupName_120_comparator_x_q_174_q;
    reg [0:0] redist152_dupName_119_comparator_x_q_174_q;
    reg [0:0] redist153_dupName_118_comparator_x_q_174_q;
    reg [0:0] redist154_dupName_117_comparator_x_q_174_q;
    reg [0:0] redist155_dupName_116_comparator_x_q_174_q;
    reg [0:0] redist156_dupName_115_comparator_x_q_174_q;
    reg [0:0] redist157_dupName_59_comparator_x_q_174_q;
    reg [0:0] redist158_dupName_58_comparator_x_q_174_q;
    reg [0:0] redist159_dupName_57_comparator_x_q_174_q;
    reg [0:0] redist160_dupName_56_comparator_x_q_174_q;
    reg [0:0] redist161_dupName_55_comparator_x_q_174_q;
    reg [0:0] redist162_dupName_54_comparator_x_q_174_q;
    reg [31:0] redist163_bgTrunc_i_sub_1_dfr165_sel_x_b_1_q;
    reg [28:0] redist164_i_sel_shr87_dfr188_vt_select_28_b_1_q;
    reg [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_q;
    reg [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_q;
    reg [0:0] redist168_i_masked_dfr242_q_221_q;
    reg [5:0] redist169_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_dfr231_out_data_out_1_q;
    reg [3:0] redist170_i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_data_out_1_q;
    reg [31:0] redist171_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_1_q;
    reg [31:0] redist172_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_2_q;
    reg [0:0] redist173_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_7_q;
    reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_q;
    reg [0:0] redist175_i_first_cleanup_xor_dfr4_q_168_q;
    reg [0:0] redist176_i_first_cleanup_xor_dfr4_q_221_q;
    reg [25:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_inputreg0_q;
    reg [25:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_outputreg0_q;
    wire redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_reset0;
    wire [25:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_ia;
    wire [4:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_aa;
    wire [4:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_ab;
    wire [25:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_iq;
    wire [25:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_q;
    wire [4:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_q;
    (* preserve *) reg [4:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_i;
    (* preserve *) reg redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_eq;
    reg [4:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_wraddr_q;
    wire [5:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_last_q;
    wire [5:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_cmp_b;
    wire [0:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_cmp_q;
    (* dont_merge *) reg [0:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_cmpReg_q;
    wire [0:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_notEnable_q;
    wire [0:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_nor_q;
    (* dont_merge *) reg [0:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_sticky_ena_q;
    wire [0:0] redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_enaAnd_q;
    reg [25:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_inputreg0_q;
    reg [25:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_outputreg0_q;
    wire redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_reset0;
    wire [25:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_ia;
    wire [6:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_aa;
    wire [6:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_ab;
    wire [25:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_iq;
    wire [25:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_q;
    wire [6:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_q;
    (* preserve *) reg [6:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_i;
    (* preserve *) reg redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_eq;
    reg [6:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_wraddr_q;
    wire [7:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_last_q;
    wire [7:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_cmp_b;
    wire [0:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_cmp_q;
    reg [0:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_cmpReg_q;
    wire [0:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_notEnable_q;
    wire [0:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_nor_q;
    reg [0:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_sticky_ena_q;
    wire [0:0] redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_enaAnd_q;
    reg [25:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_inputreg0_q;
    reg [25:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_outputreg0_q;
    wire redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_reset0;
    wire [25:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_ia;
    wire [6:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_aa;
    wire [6:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_ab;
    wire [25:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_iq;
    wire [25:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_q;
    wire [6:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_q;
    (* preserve *) reg [6:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_i;
    (* preserve *) reg redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_eq;
    reg [6:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_wraddr_q;
    wire [7:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_last_q;
    wire [7:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_cmp_b;
    wire [0:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_cmp_q;
    reg [0:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_cmpReg_q;
    wire [0:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_notEnable_q;
    wire [0:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_nor_q;
    reg [0:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_sticky_ena_q;
    wire [0:0] redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_enaAnd_q;
    reg [5:0] redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_inputreg0_q;
    reg [63:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_inputreg0_q;
    reg [63:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_outputreg0_q;
    wire redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_reset0;
    wire [63:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_ia;
    wire [7:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_aa;
    wire [7:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_ab;
    wire [63:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_iq;
    wire [63:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_q;
    wire [7:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_q;
    (* preserve *) reg [7:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_i;
    (* preserve *) reg redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_eq;
    reg [7:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_wraddr_q;
    wire [8:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_last_q;
    wire [8:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_cmp_b;
    wire [0:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_cmp_q;
    reg [0:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_cmpReg_q;
    wire [0:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_notEnable_q;
    wire [0:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_nor_q;
    reg [0:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_sticky_ena_q;
    wire [0:0] redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_enaAnd_q;
    reg [0:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_inputreg0_q;
    reg [0:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_outputreg0_q;
    wire redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_reset0;
    wire [0:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_ia;
    wire [4:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_aa;
    wire [4:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_ab;
    wire [0:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_iq;
    wire [0:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_q;
    wire [4:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_i;
    (* preserve *) reg redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_eq;
    reg [4:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_wraddr_q;
    wire [5:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_last_q;
    wire [5:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_cmp_b;
    wire [0:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_cmpReg_q;
    wire [0:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_notEnable_q;
    wire [0:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_sticky_ena_q;
    wire [0:0] redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_enaAnd_q;
    reg [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_inputreg0_q;
    reg [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_outputreg0_q;
    wire redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_reset0;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_ia;
    wire [4:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_aa;
    wire [4:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_ab;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_iq;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_q;
    wire [4:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_i;
    (* preserve *) reg redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_eq;
    reg [4:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_wraddr_q;
    wire [5:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_last_q;
    wire [5:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmp_b;
    wire [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmpReg_q;
    wire [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_notEnable_q;
    wire [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_sticky_ena_q;
    wire [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_enaAnd_q;
    reg [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_inputreg0_q;
    reg [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_outputreg0_q;
    wire redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_reset0;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_ia;
    wire [4:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_aa;
    wire [4:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_ab;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_iq;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_q;
    (* dont_merge *) reg [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_cmpReg_q;
    wire [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_nor_q;
    (* dont_merge *) reg [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_sticky_ena_q;
    wire [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_enaAnd_q;
    reg [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_inputreg0_q;
    reg [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_outputreg0_q;
    wire redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_reset0;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_ia;
    wire [4:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_aa;
    wire [4:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_ab;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_iq;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_q;
    (* dont_merge *) reg [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_cmpReg_q;
    wire [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_nor_q;
    (* dont_merge *) reg [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_sticky_ena_q;
    wire [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_enaAnd_q;
    reg [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_inputreg0_q;
    reg [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_outputreg0_q;
    wire redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_reset0;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_ia;
    wire [4:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_aa;
    wire [4:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_ab;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_iq;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_q;
    (* dont_merge *) reg [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_cmpReg_q;
    wire [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_nor_q;
    (* dont_merge *) reg [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_sticky_ena_q;
    wire [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_enaAnd_q;
    reg [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_inputreg0_q;
    reg [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_outputreg0_q;
    wire redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_reset0;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_ia;
    wire [4:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_aa;
    wire [4:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_ab;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_iq;
    wire [2:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_q;
    (* dont_merge *) reg [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_cmpReg_q;
    wire [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_nor_q;
    (* dont_merge *) reg [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_sticky_ena_q;
    wire [0:0] redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_enaAnd_q;
    reg [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_inputreg0_q;
    reg [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_outputreg0_q;
    wire redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_reset0;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_ia;
    wire [4:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_aa;
    wire [4:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_ab;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_iq;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_q;
    wire [4:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_i;
    (* preserve *) reg redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_eq;
    reg [4:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_wraddr_q;
    wire [5:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_last_q;
    wire [5:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmp_b;
    wire [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmpReg_q;
    wire [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_notEnable_q;
    wire [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_sticky_ena_q;
    wire [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_enaAnd_q;
    reg [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_inputreg0_q;
    reg [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_outputreg0_q;
    wire redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_reset0;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_ia;
    wire [4:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_aa;
    wire [4:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_ab;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_iq;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_q;
    (* dont_merge *) reg [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_cmpReg_q;
    wire [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_nor_q;
    (* dont_merge *) reg [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_sticky_ena_q;
    wire [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_enaAnd_q;
    reg [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_inputreg0_q;
    reg [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_outputreg0_q;
    wire redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_reset0;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_ia;
    wire [4:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_aa;
    wire [4:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_ab;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_iq;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_q;
    (* dont_merge *) reg [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_cmpReg_q;
    wire [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_nor_q;
    (* dont_merge *) reg [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_sticky_ena_q;
    wire [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_enaAnd_q;
    reg [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_inputreg0_q;
    reg [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_outputreg0_q;
    wire redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_reset0;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_ia;
    wire [4:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_aa;
    wire [4:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_ab;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_iq;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_q;
    (* dont_merge *) reg [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_cmpReg_q;
    wire [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_nor_q;
    (* dont_merge *) reg [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_sticky_ena_q;
    wire [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_enaAnd_q;
    reg [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_inputreg0_q;
    reg [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_outputreg0_q;
    wire redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_reset0;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_ia;
    wire [4:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_aa;
    wire [4:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_ab;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_iq;
    wire [1:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_q;
    (* dont_merge *) reg [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_cmpReg_q;
    wire [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_nor_q;
    (* dont_merge *) reg [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_sticky_ena_q;
    wire [0:0] redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_enaAnd_q;
    reg [0:0] redist168_i_masked_dfr242_q_221_split_0_inputreg0_q;
    reg [0:0] redist168_i_masked_dfr242_q_221_split_0_outputreg0_q;
    wire redist168_i_masked_dfr242_q_221_split_0_mem_reset0;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_0_mem_ia;
    wire [4:0] redist168_i_masked_dfr242_q_221_split_0_mem_aa;
    wire [4:0] redist168_i_masked_dfr242_q_221_split_0_mem_ab;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_0_mem_iq;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_0_mem_q;
    wire [4:0] redist168_i_masked_dfr242_q_221_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist168_i_masked_dfr242_q_221_split_0_rdcnt_i;
    (* preserve *) reg redist168_i_masked_dfr242_q_221_split_0_rdcnt_eq;
    reg [4:0] redist168_i_masked_dfr242_q_221_split_0_wraddr_q;
    wire [5:0] redist168_i_masked_dfr242_q_221_split_0_mem_last_q;
    wire [5:0] redist168_i_masked_dfr242_q_221_split_0_cmp_b;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist168_i_masked_dfr242_q_221_split_0_cmpReg_q;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_0_notEnable_q;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist168_i_masked_dfr242_q_221_split_0_sticky_ena_q;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_0_enaAnd_q;
    reg [0:0] redist168_i_masked_dfr242_q_221_split_1_inputreg0_q;
    reg [0:0] redist168_i_masked_dfr242_q_221_split_1_outputreg0_q;
    wire redist168_i_masked_dfr242_q_221_split_1_mem_reset0;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_1_mem_ia;
    wire [4:0] redist168_i_masked_dfr242_q_221_split_1_mem_aa;
    wire [4:0] redist168_i_masked_dfr242_q_221_split_1_mem_ab;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_1_mem_iq;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_1_mem_q;
    (* dont_merge *) reg [0:0] redist168_i_masked_dfr242_q_221_split_1_cmpReg_q;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_1_nor_q;
    (* dont_merge *) reg [0:0] redist168_i_masked_dfr242_q_221_split_1_sticky_ena_q;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_1_enaAnd_q;
    reg [0:0] redist168_i_masked_dfr242_q_221_split_2_inputreg0_q;
    reg [0:0] redist168_i_masked_dfr242_q_221_split_2_outputreg0_q;
    wire redist168_i_masked_dfr242_q_221_split_2_mem_reset0;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_2_mem_ia;
    wire [4:0] redist168_i_masked_dfr242_q_221_split_2_mem_aa;
    wire [4:0] redist168_i_masked_dfr242_q_221_split_2_mem_ab;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_2_mem_iq;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_2_mem_q;
    (* dont_merge *) reg [0:0] redist168_i_masked_dfr242_q_221_split_2_cmpReg_q;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_2_nor_q;
    (* dont_merge *) reg [0:0] redist168_i_masked_dfr242_q_221_split_2_sticky_ena_q;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_2_enaAnd_q;
    reg [0:0] redist168_i_masked_dfr242_q_221_split_3_inputreg0_q;
    reg [0:0] redist168_i_masked_dfr242_q_221_split_3_outputreg0_q;
    wire redist168_i_masked_dfr242_q_221_split_3_mem_reset0;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_3_mem_ia;
    wire [4:0] redist168_i_masked_dfr242_q_221_split_3_mem_aa;
    wire [4:0] redist168_i_masked_dfr242_q_221_split_3_mem_ab;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_3_mem_iq;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_3_mem_q;
    (* dont_merge *) reg [0:0] redist168_i_masked_dfr242_q_221_split_3_cmpReg_q;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_3_nor_q;
    (* dont_merge *) reg [0:0] redist168_i_masked_dfr242_q_221_split_3_sticky_ena_q;
    wire [0:0] redist168_i_masked_dfr242_q_221_split_3_enaAnd_q;
    reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_inputreg0_q;
    reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_outputreg0_q;
    wire redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_reset0;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_ia;
    wire [4:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_aa;
    wire [4:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_ab;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_iq;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_q;
    wire [4:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_i;
    (* preserve *) reg redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_eq;
    reg [4:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_wraddr_q;
    wire [5:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_last_q;
    wire [5:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmp_b;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmpReg_q;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_notEnable_q;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_sticky_ena_q;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_enaAnd_q;
    reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_inputreg0_q;
    reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_outputreg0_q;
    wire redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_reset0;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_ia;
    wire [4:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_aa;
    wire [4:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_ab;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_iq;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_q;
    (* dont_merge *) reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_cmpReg_q;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_nor_q;
    (* dont_merge *) reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_sticky_ena_q;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_enaAnd_q;
    reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_inputreg0_q;
    reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_outputreg0_q;
    wire redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_reset0;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_ia;
    wire [4:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_aa;
    wire [4:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_ab;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_iq;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_q;
    (* dont_merge *) reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_cmpReg_q;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_nor_q;
    (* dont_merge *) reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_sticky_ena_q;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_enaAnd_q;
    reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_inputreg0_q;
    reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_outputreg0_q;
    wire redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_reset0;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_ia;
    wire [4:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_aa;
    wire [4:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_ab;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_iq;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_q;
    (* dont_merge *) reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_cmpReg_q;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_nor_q;
    (* dont_merge *) reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_sticky_ena_q;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_enaAnd_q;
    reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_inputreg0_q;
    reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_outputreg0_q;
    wire redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_reset0;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_ia;
    wire [4:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_aa;
    wire [4:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_ab;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_iq;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_q;
    (* dont_merge *) reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_cmpReg_q;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_nor_q;
    (* dont_merge *) reg [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_sticky_ena_q;
    wire [0:0] redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist4_sync_together410_aunroll_x_in_i_valid_28(DELAY,1005)
    dspba_delay_ver #( .width(1), .depth(28), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist4_sync_together410_aunroll_x_in_i_valid_28 ( .xin(in_i_valid), .xout(redist4_sync_together410_aunroll_x_in_i_valid_28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_sync_together410_aunroll_x_in_i_valid_41(DELAY,1006)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_sync_together410_aunroll_x_in_i_valid_41 ( .xin(redist4_sync_together410_aunroll_x_in_i_valid_28_q), .xout(redist5_sync_together410_aunroll_x_in_i_valid_41_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_sync_together410_aunroll_x_in_i_valid_43(DELAY,1007)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together410_aunroll_x_in_i_valid_43_delay_0 <= '0;
            redist6_sync_together410_aunroll_x_in_i_valid_43_q <= '0;
        end
        else
        begin
            redist6_sync_together410_aunroll_x_in_i_valid_43_delay_0 <= $unsigned(redist5_sync_together410_aunroll_x_in_i_valid_41_q);
            redist6_sync_together410_aunroll_x_in_i_valid_43_q <= redist6_sync_together410_aunroll_x_in_i_valid_43_delay_0;
        end
    end

    // redist7_sync_together410_aunroll_x_in_i_valid_44(DELAY,1008)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together410_aunroll_x_in_i_valid_44_q <= '0;
        end
        else
        begin
            redist7_sync_together410_aunroll_x_in_i_valid_44_q <= $unsigned(redist6_sync_together410_aunroll_x_in_i_valid_43_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist8_sync_together410_aunroll_x_in_i_valid_50(DELAY,1009)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_sync_together410_aunroll_x_in_i_valid_50 ( .xin(redist7_sync_together410_aunroll_x_in_i_valid_44_q), .xout(redist8_sync_together410_aunroll_x_in_i_valid_50_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_sync_together410_aunroll_x_in_i_valid_51(DELAY,1010)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together410_aunroll_x_in_i_valid_51_q <= '0;
        end
        else
        begin
            redist9_sync_together410_aunroll_x_in_i_valid_51_q <= $unsigned(redist8_sync_together410_aunroll_x_in_i_valid_50_q);
        end
    end

    // redist173_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_7(DELAY,1174)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist173_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_7 ( .xin(i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out), .xout(redist173_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // leftShiftStage0Idx1Rng1_uid949_i_cleanups_shl_dfr0_shift_x(BITSELECT,948)@52
    assign leftShiftStage0Idx1Rng1_uid949_i_cleanups_shl_dfr0_shift_x_in = redist170_i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_data_out_1_q[2:0];
    assign leftShiftStage0Idx1Rng1_uid949_i_cleanups_shl_dfr0_shift_x_b = leftShiftStage0Idx1Rng1_uid949_i_cleanups_shl_dfr0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid950_i_cleanups_shl_dfr0_shift_x(BITJOIN,949)@52
    assign leftShiftStage0Idx1_uid950_i_cleanups_shl_dfr0_shift_x_q = {leftShiftStage0Idx1Rng1_uid949_i_cleanups_shl_dfr0_shift_x_b, GND_q};

    // leftShiftStage0_uid952_i_cleanups_shl_dfr0_shift_x(MUX,951)@52
    assign leftShiftStage0_uid952_i_cleanups_shl_dfr0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid952_i_cleanups_shl_dfr0_shift_x_s or redist170_i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_data_out_1_q or leftShiftStage0Idx1_uid950_i_cleanups_shl_dfr0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid952_i_cleanups_shl_dfr0_shift_x_s)
            1'b0 : leftShiftStage0_uid952_i_cleanups_shl_dfr0_shift_x_q = redist170_i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_data_out_1_q;
            1'b1 : leftShiftStage0_uid952_i_cleanups_shl_dfr0_shift_x_q = leftShiftStage0Idx1_uid950_i_cleanups_shl_dfr0_shift_x_q;
            default : leftShiftStage0_uid952_i_cleanups_shl_dfr0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_dfr5_vt_select_3(BITSELECT,154)@52
    assign i_cleanups_shl_dfr5_vt_select_3_b = leftShiftStage0_uid952_i_cleanups_shl_dfr0_shift_x_q[3:1];

    // i_cleanups_shl_dfr5_vt_join(BITJOIN,153)@52
    assign i_cleanups_shl_dfr5_vt_join_q = {i_cleanups_shl_dfr5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_dfr4(LOGICAL,157)@52
    assign i_first_cleanup_xor_dfr4_q = i_first_cleanup_dfr3_sel_x_b ^ VCC_q;

    // i_notcmp_dfr234(LOGICAL,222)@52
    assign i_notcmp_dfr234_q = i_exitcond_dfr232_cmp_nsign_q ^ VCC_q;

    // i_or_dfr236(LOGICAL,223)@52
    assign i_or_dfr236_q = i_notcmp_dfr234_q | i_first_cleanup_xor_dfr4_q;

    // i_next_cleanups_dfr237(MUX,218)@52
    assign i_next_cleanups_dfr237_s = i_or_dfr236_q;
    always @(i_next_cleanups_dfr237_s or redist170_i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_data_out_1_q or i_cleanups_shl_dfr5_vt_join_q)
    begin
        unique case (i_next_cleanups_dfr237_s)
            1'b0 : i_next_cleanups_dfr237_q = redist170_i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_data_out_1_q;
            1'b1 : i_next_cleanups_dfr237_q = i_cleanups_shl_dfr5_vt_join_q;
            default : i_next_cleanups_dfr237_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push16_dfr238(BLACKBOX,208)@52
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    dfr_i_llvm_fpga_push_i4_cleanups_push16_0 thei_llvm_fpga_push_i4_cleanups_push16_dfr238 (
        .in_data_in(i_next_cleanups_dfr237_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_feedback_stall_out_16),
        .in_keep_going(redist173_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together410_aunroll_x_in_i_valid_51_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i4_cleanups_push16_dfr238_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i4_cleanups_push16_dfr238_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together410_aunroll_x_in_c0_eni135_1_tpl_50(DELAY,1003)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together410_aunroll_x_in_c0_eni135_1_tpl_50 ( .xin(redist1_sync_together410_aunroll_x_in_c0_eni135_1_tpl_44_q), .xout(redist2_sync_together410_aunroll_x_in_c0_eni135_1_tpl_50_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i4_7262(CONSTANT,38)
    assign c_i4_7262_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop16_dfr2(BLACKBOX,201)@51
    // out out_feedback_stall_out_16@20000000
    dfr_i_llvm_fpga_pop_i4_cleanups_pop16_0 thei_llvm_fpga_pop_i4_cleanups_pop16_dfr2 (
        .in_data_in(c_i4_7262_q),
        .in_dir(redist2_sync_together410_aunroll_x_in_c0_eni135_1_tpl_50_q),
        .in_feedback_in_16(i_llvm_fpga_push_i4_cleanups_push16_dfr238_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i4_cleanups_push16_dfr238_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together410_aunroll_x_in_i_valid_50_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist170_i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_data_out_1(DELAY,1171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist170_i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_data_out_1_q <= '0;
        end
        else
        begin
            redist170_i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_data_out);
        end
    end

    // i_first_cleanup_dfr3_sel_x(BITSELECT,418)@52
    assign i_first_cleanup_dfr3_sel_x_b = redist170_i_llvm_fpga_pop_i4_cleanups_pop16_dfr2_out_data_out_1_q[0:0];

    // c_i6_1391(CONSTANT,144)
    assign c_i6_1391_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_dfr239(ADD,158)@52
    assign i_fpga_indvars_iv_next_dfr239_a = {1'b0, redist169_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_dfr231_out_data_out_1_q};
    assign i_fpga_indvars_iv_next_dfr239_b = {1'b0, c_i6_1391_q};
    assign i_fpga_indvars_iv_next_dfr239_o = $unsigned(i_fpga_indvars_iv_next_dfr239_a) + $unsigned(i_fpga_indvars_iv_next_dfr239_b);
    assign i_fpga_indvars_iv_next_dfr239_q = i_fpga_indvars_iv_next_dfr239_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_dfr239_sel_x(BITSELECT,271)@52
    assign bgTrunc_i_fpga_indvars_iv_next_dfr239_sel_x_b = i_fpga_indvars_iv_next_dfr239_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push12_dfr240(BLACKBOX,210)@52
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    dfr_i_llvm_fpga_push_i6_fpga_indvars_iv_push12_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push12_dfr240 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_dfr239_sel_x_b),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_dfr231_out_feedback_stall_out_12),
        .in_keep_going(redist173_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_7_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together410_aunroll_x_in_i_valid_51_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i6_fpga_indvars_iv_push12_dfr240_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i6_fpga_indvars_iv_push12_dfr240_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_23389(CONSTANT,145)
    assign c_i6_23389_q = $unsigned(6'b010111);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_dfr231(BLACKBOX,203)@51
    // out out_feedback_stall_out_12@20000000
    dfr_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_dfr231 (
        .in_data_in(c_i6_23389_q),
        .in_dir(redist2_sync_together410_aunroll_x_in_c0_eni135_1_tpl_50_q),
        .in_feedback_in_12(i_llvm_fpga_push_i6_fpga_indvars_iv_push12_dfr240_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i6_fpga_indvars_iv_push12_dfr240_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together410_aunroll_x_in_i_valid_50_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_dfr231_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_dfr231_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist169_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_dfr231_out_data_out_1(DELAY,1170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist169_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_dfr231_out_data_out_1_q <= '0;
        end
        else
        begin
            redist169_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_dfr231_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_dfr231_out_data_out);
        end
    end

    // i_exitcond_dfr232_cmp_nsign(LOGICAL,942)@52
    assign i_exitcond_dfr232_cmp_nsign_q = $unsigned(~ (redist169_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop12_dfr231_out_data_out_1_q[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_dfr235(BLACKBOX,205)@52
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    dfr_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_dfr235 (
        .in_data_in(i_exitcond_dfr232_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_dfr6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_dfr3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist9_sync_together410_aunroll_x_in_i_valid_51_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_dfr235_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_dfr235_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,864)@44 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist6_sync_together410_aunroll_x_in_i_valid_43_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid956_i_next_initerations_dfr0_shift_x(BITSELECT,955)@45
    assign rightShiftStage0Idx1Rng1_uid956_i_next_initerations_dfr0_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop15_dfr7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid958_i_next_initerations_dfr0_shift_x(BITJOIN,957)@45
    assign rightShiftStage0Idx1_uid958_i_next_initerations_dfr0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid956_i_next_initerations_dfr0_shift_x_b};

    // valid_fanout_reg1(REG,862)@44 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist6_sync_together410_aunroll_x_in_i_valid_43_q);
        end
    end

    // valid_fanout_reg2(REG,863)@44 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist6_sync_together410_aunroll_x_in_i_valid_43_q);
        end
    end

    // i_llvm_fpga_push_i4_initerations_push15_dfr9(BLACKBOX,209)@45
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    dfr_i_llvm_fpga_push_i4_initerations_push15_0 thei_llvm_fpga_push_i4_initerations_push15_dfr9 (
        .in_data_in(i_next_initerations_dfr8_vt_join_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i4_initerations_pop15_dfr7_out_feedback_stall_out_15),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i4_initerations_push15_dfr9_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i4_initerations_push15_dfr9_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop15_dfr7(BLACKBOX,202)@45
    // out out_feedback_stall_out_15@20000000
    dfr_i_llvm_fpga_pop_i4_initerations_pop15_0 thei_llvm_fpga_pop_i4_initerations_pop15_dfr7 (
        .in_data_in(c_i4_7262_q),
        .in_dir(redist1_sync_together410_aunroll_x_in_c0_eni135_1_tpl_44_q),
        .in_feedback_in_15(i_llvm_fpga_push_i4_initerations_push15_dfr9_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i4_initerations_push15_dfr9_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop15_dfr7_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i4_initerations_pop15_dfr7_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid960_i_next_initerations_dfr0_shift_x(MUX,959)@45
    assign rightShiftStage0_uid960_i_next_initerations_dfr0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid960_i_next_initerations_dfr0_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop15_dfr7_out_data_out or rightShiftStage0Idx1_uid958_i_next_initerations_dfr0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid960_i_next_initerations_dfr0_shift_x_s)
            1'b0 : rightShiftStage0_uid960_i_next_initerations_dfr0_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop15_dfr7_out_data_out;
            1'b1 : rightShiftStage0_uid960_i_next_initerations_dfr0_shift_x_q = rightShiftStage0Idx1_uid958_i_next_initerations_dfr0_shift_x_q;
            default : rightShiftStage0_uid960_i_next_initerations_dfr0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_dfr8_vt_select_2(BITSELECT,221)@45
    assign i_next_initerations_dfr8_vt_select_2_b = rightShiftStage0_uid960_i_next_initerations_dfr0_shift_x_q[2:0];

    // i_next_initerations_dfr8_vt_join(BITJOIN,220)@45
    assign i_next_initerations_dfr8_vt_join_q = {GND_q, i_next_initerations_dfr8_vt_select_2_b};

    // i_last_initeration_dfr10_sel_x(BITSELECT,420)@45
    assign i_last_initeration_dfr10_sel_x_b = i_next_initerations_dfr8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_dfr11(BLACKBOX,204)@45
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    dfr_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_dfr11 (
        .in_data_in(i_last_initeration_dfr10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_dfr6_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_dfr11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_dfr11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together410_aunroll_x_in_c0_eni135_1_tpl_42(DELAY,1001)
    dspba_delay_ver #( .width(1), .depth(42), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together410_aunroll_x_in_c0_eni135_1_tpl_42 ( .xin(in_c0_eni135_1_tpl), .xout(redist0_sync_together410_aunroll_x_in_c0_eni135_1_tpl_42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist1_sync_together410_aunroll_x_in_c0_eni135_1_tpl_44(DELAY,1002)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together410_aunroll_x_in_c0_eni135_1_tpl_44_delay_0 <= '0;
            redist1_sync_together410_aunroll_x_in_c0_eni135_1_tpl_44_q <= '0;
        end
        else
        begin
            redist1_sync_together410_aunroll_x_in_c0_eni135_1_tpl_44_delay_0 <= $unsigned(redist0_sync_together410_aunroll_x_in_c0_eni135_1_tpl_42_q);
            redist1_sync_together410_aunroll_x_in_c0_eni135_1_tpl_44_q <= redist1_sync_together410_aunroll_x_in_c0_eni135_1_tpl_44_delay_0;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_dfr6(BLACKBOX,198)@45
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    dfr_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_dfr6 (
        .in_data_in(redist1_sync_together410_aunroll_x_in_c0_eni135_1_tpl_44_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_dfr11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_dfr11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_dfr235_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_dfr235_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together410_aunroll_x_in_i_valid_44_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_dfr6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_dfr6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_dfr6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_dfr6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_dfr6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,148)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dfr6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_dfr6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_dfr6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_dfr6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,265)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_dfr6_out_pipeline_valid_out;

    // redist10_sync_together410_aunroll_x_in_i_valid_218(DELAY,1011)
    dspba_delay_ver #( .width(1), .depth(167), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_sync_together410_aunroll_x_in_i_valid_218 ( .xin(redist9_sync_together410_aunroll_x_in_i_valid_51_q), .xout(redist10_sync_together410_aunroll_x_in_i_valid_218_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together410_aunroll_x_in_i_valid_227(DELAY,1012)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_sync_together410_aunroll_x_in_i_valid_227 ( .xin(redist10_sync_together410_aunroll_x_in_i_valid_218_q), .xout(redist11_sync_together410_aunroll_x_in_i_valid_227_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sync_together410_aunroll_x_in_i_valid_271(DELAY,1013)
    dspba_delay_ver #( .width(1), .depth(44), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_sync_together410_aunroll_x_in_i_valid_271 ( .xin(redist11_sync_together410_aunroll_x_in_i_valid_227_q), .xout(redist12_sync_together410_aunroll_x_in_i_valid_271_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg12(REG,873)@272 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist12_sync_together410_aunroll_x_in_i_valid_271_q);
        end
    end

    // redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_notEnable(LOGICAL,1206)
    assign redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_notEnable_q = $unsigned(~ (VCC_q));

    // redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_nor(LOGICAL,1207)
    assign redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_nor_q = ~ (redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_notEnable_q | redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_sticky_ena_q);

    // redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_last(CONSTANT,1203)
    assign redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_last_q = $unsigned(6'b010010);

    // redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_cmp(LOGICAL,1204)
    assign redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_cmp_b = {1'b0, redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_q};
    assign redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_cmp_q = $unsigned(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_last_q == redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_cmp_b ? 1'b1 : 1'b0);

    // redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_cmpReg(REG,1205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_cmpReg_q <= $unsigned(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_cmp_q);
        end
    end

    // redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_sticky_ena(REG,1208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_nor_q == 1'b1)
        begin
            redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_sticky_ena_q <= $unsigned(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_cmpReg_q);
        end
    end

    // redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_enaAnd(LOGICAL,1209)
    assign redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_enaAnd_q = redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_sticky_ena_q & VCC_q;

    // redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt(COUNTER,1201)
    // low=0, high=19, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_i <= 5'd0;
            redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_i == 5'd18)
            begin
                redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_eq <= 1'b0;
            end
            if (redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_eq == 1'b1)
            begin
                redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_i <= $unsigned(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_i) + $unsigned(5'd13);
            end
            else
            begin
                redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_i <= $unsigned(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_q = redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_i[4:0];

    // c_i32_10268_recast_x(CONSTANT,275)
    assign c_i32_10268_recast_x_q = $unsigned(32'b00000000000000000000000000001010);

    // i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr1_x(BLACKBOX,447)@125
    dfr_flt_i_llvm_fpga_vpfp_cast_from_fixed00002cdo6u2ocpq6c0ouq3cz thei_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr1_x (
        .in_0(c_i32_10268_recast_x_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist142_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr1_x_out_primWireOut_1(DELAY,1143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist142_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist142_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr1_x_out_primWireOut);
        end
    end

    // valid_fanout_reg8(REG,869)@51 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist8_sync_together410_aunroll_x_in_i_valid_50_q);
        end
    end

    // c_dfr_ZZ3dfrssE9reservoir_static_pmem(CONSTANT,6)
    assign c_dfr_ZZ3dfrssE9reservoir_static_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx10_12_dfr0_upper_bits_x_merged_bit_select(BITSELECT,1000)@52
    assign i_arrayidx10_12_dfr0_upper_bits_x_merged_bit_select_b = c_dfr_ZZ3dfrssE9reservoir_static_pmem_q[63:8];
    assign i_arrayidx10_12_dfr0_upper_bits_x_merged_bit_select_c = c_dfr_ZZ3dfrssE9reservoir_static_pmem_q[7:0];

    // c_i32_0377(CONSTANT,27)
    assign c_i32_0377_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg7(REG,868)@42 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist5_sync_together410_aunroll_x_in_i_valid_41_q);
        end
    end

    // valid_fanout_reg11(REG,872)@44 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist6_sync_together410_aunroll_x_in_i_valid_43_q);
        end
    end

    // c_i32_2270(CONSTANT,29)
    assign c_i32_2270_q = $unsigned(32'b00000000000000000000000000000010);

    // i_inc_1_dfr229(ADD,163)@45
    assign i_inc_1_dfr229_a = {1'b0, redist172_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_2_q};
    assign i_inc_1_dfr229_b = {1'b0, c_i32_2270_q};
    assign i_inc_1_dfr229_o = $unsigned(i_inc_1_dfr229_a) + $unsigned(i_inc_1_dfr229_b);
    assign i_inc_1_dfr229_q = i_inc_1_dfr229_o[32:0];

    // bgTrunc_i_inc_1_dfr229_sel_x(BITSELECT,272)@45
    assign bgTrunc_i_inc_1_dfr229_sel_x_b = i_inc_1_dfr229_q[31:0];

    // i_llvm_fpga_push_i32_node_idx_01431_push14_dfr230(BLACKBOX,207)@45
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    dfr_i_llvm_fpga_push_i32_node_idx_01431_push14_0 thei_llvm_fpga_push_i32_node_idx_01431_push14_dfr230 (
        .in_data_in(bgTrunc_i_inc_1_dfr229_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_feedback_stall_out_14),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_node_idx_01431_push14_dfr230_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_node_idx_01431_push14_dfr230_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150(BLACKBOX,200)@43
    // out out_feedback_stall_out_14@20000000
    dfr_i_llvm_fpga_pop_i32_node_idx_01431_pop14_0 thei_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150 (
        .in_data_in(c_i32_0377_q),
        .in_dir(redist0_sync_together410_aunroll_x_in_c0_eni135_1_tpl_42_q),
        .in_feedback_in_14(i_llvm_fpga_push_i32_node_idx_01431_push14_dfr230_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_node_idx_01431_push14_dfr230_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist171_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_1(DELAY,1172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist171_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_1_q <= '0;
        end
        else
        begin
            redist171_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out);
        end
    end

    // redist172_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_2(DELAY,1173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist172_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_2_q <= '0;
        end
        else
        begin
            redist172_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_2_q <= $unsigned(redist171_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_1_q);
        end
    end

    // c_i32_48385(CONSTANT,32)
    assign c_i32_48385_q = $unsigned(32'b00000000000000000000000000110000);

    // i_sub_1_dfr165(SUB,261)@45
    assign i_sub_1_dfr165_a = {1'b0, c_i32_48385_q};
    assign i_sub_1_dfr165_b = {1'b0, redist172_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_2_q};
    assign i_sub_1_dfr165_o = $unsigned(i_sub_1_dfr165_a) - $unsigned(i_sub_1_dfr165_b);
    assign i_sub_1_dfr165_q = i_sub_1_dfr165_o[32:0];

    // bgTrunc_i_sub_1_dfr165_sel_x(BITSELECT,273)@45
    assign bgTrunc_i_sub_1_dfr165_sel_x_b = $unsigned(i_sub_1_dfr165_q[31:0]);

    // redist163_bgTrunc_i_sub_1_dfr165_sel_x_b_1(DELAY,1164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist163_bgTrunc_i_sub_1_dfr165_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist163_bgTrunc_i_sub_1_dfr165_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_1_dfr165_sel_x_b);
        end
    end

    // i_idxprom9_1_dfr166_sel_x(BITSELECT,419)@46
    assign i_idxprom9_1_dfr166_sel_x_b = {32'b00000000000000000000000000000000, redist163_bgTrunc_i_sub_1_dfr165_sel_x_b_1_q[31:0]};

    // i_idxprom9_1_dfr166_vt_select_31(BITSELECT,162)@46
    assign i_idxprom9_1_dfr166_vt_select_31_b = i_idxprom9_1_dfr166_sel_x_b[31:0];

    // i_idxprom9_1_dfr166_vt_join(BITJOIN,161)@46
    assign i_idxprom9_1_dfr166_vt_join_q = {c_i32_0377_q, i_idxprom9_1_dfr166_vt_select_31_b};

    // i_arrayidx10_12_dfr0_dupName_0_trunc_sel_x(BITSELECT,412)@46
    assign i_arrayidx10_12_dfr0_dupName_0_trunc_sel_x_b = i_idxprom9_1_dfr166_vt_join_q[7:0];

    // i_arrayidx10_12_dfr0_narrow_x(BITSELECT,405)@46
    assign i_arrayidx10_12_dfr0_narrow_x_b = i_arrayidx10_12_dfr0_dupName_0_trunc_sel_x_b[5:0];

    // redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_inputreg0(DELAY,1234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_inputreg0_q <= '0;
        end
        else
        begin
            redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_inputreg0_q <= $unsigned(i_arrayidx10_12_dfr0_narrow_x_b);
        end
    end

    // redist150_i_arrayidx10_12_dfr0_narrow_x_b_6(DELAY,1151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_0 <= '0;
            redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_1 <= '0;
            redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_2 <= '0;
            redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_3 <= '0;
            redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_q <= '0;
        end
        else
        begin
            redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_0 <= $unsigned(redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_inputreg0_q);
            redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_1 <= redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_0;
            redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_2 <= redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_1;
            redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_3 <= redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_2;
            redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_q <= redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_delay_3;
        end
    end

    // i_arrayidx10_12_dfr0_shift_join_x(BITJOIN,406)@52
    assign i_arrayidx10_12_dfr0_shift_join_x_q = {redist150_i_arrayidx10_12_dfr0_narrow_x_b_6_q, i_arrayidx10_12_dfr167_vt_const_1_q};

    // i_arrayidx10_12_dfr0_add_x(ADD,402)@52
    assign i_arrayidx10_12_dfr0_add_x_a = {1'b0, i_arrayidx10_12_dfr0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx10_12_dfr0_add_x_b = {1'b0, i_arrayidx10_12_dfr0_shift_join_x_q};
    assign i_arrayidx10_12_dfr0_add_x_o = $unsigned(i_arrayidx10_12_dfr0_add_x_a) + $unsigned(i_arrayidx10_12_dfr0_add_x_b);
    assign i_arrayidx10_12_dfr0_add_x_q = i_arrayidx10_12_dfr0_add_x_o[8:0];

    // i_arrayidx10_12_dfr0_dupName_2_trunc_sel_x(BITSELECT,413)@52
    assign i_arrayidx10_12_dfr0_dupName_2_trunc_sel_x_b = i_arrayidx10_12_dfr0_add_x_q[7:0];

    // i_arrayidx10_12_dfr0_append_upper_bits_x(BITJOIN,403)@52
    assign i_arrayidx10_12_dfr0_append_upper_bits_x_q = {i_arrayidx10_12_dfr0_upper_bits_x_merged_bit_select_b, i_arrayidx10_12_dfr0_dupName_2_trunc_sel_x_b};

    // i_arrayidx10_12_dfr167_vt_select_63(BITSELECT,151)@52
    assign i_arrayidx10_12_dfr167_vt_select_63_b = i_arrayidx10_12_dfr0_append_upper_bits_x_q[63:2];

    // i_arrayidx10_12_dfr167_vt_join(BITJOIN,150)@52
    assign i_arrayidx10_12_dfr167_vt_join_q = {i_arrayidx10_12_dfr167_vt_select_63_b, i_arrayidx10_12_dfr167_vt_const_1_q};

    // i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_select_63(BITSELECT,214)@52
    assign i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_select_63_b = i_arrayidx10_12_dfr167_vt_join_q[63:2];

    // i_arrayidx10_12_dfr167_vt_const_1(CONSTANT,149)
    assign i_arrayidx10_12_dfr167_vt_const_1_q = $unsigned(2'b00);

    // i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join(BITJOIN,213)@52
    assign i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q = {i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_select_63_b, i_arrayidx10_12_dfr167_vt_const_1_q};

    // i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x(BLACKBOX,421)@52
    // in in_i_stall@20000000
    // out out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_address@20000000
    // out out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_burstcount@20000000
    // out out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_byteenable@20000000
    // out out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_enable@20000000
    // out out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_read@20000000
    // out out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_write@20000000
    // out out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writedata@20000000
    // out out_o_stall@55
    // out out_o_valid@56
    // out out_o_readdata_0_tpl@56
    // out out_o_readdata_1_tpl@56
    dfr_i_llvm_fpga_mem_memcoalesce_load_fpgaunique_63_dfr0 thei_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_dfr4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_readdata(in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_readdata),
        .in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_readdatavalid(in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_readdatavalid),
        .in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_waitrequest(in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_waitrequest),
        .in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writeack(in_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writeack),
        .out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_address(i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_address),
        .out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_burstcount),
        .out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_byteenable),
        .out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_enable(i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_enable),
        .out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_read(i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_read),
        .out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_write(i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_write),
        .out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writedata(i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_o_readdata_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,937)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111011001100110011001100110011001100110011001100110011010);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr1_x(BLACKBOX,754)@55
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002t6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr1_x_out_primWireOut_1(DELAY,1037)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist36_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr1_x(BLACKBOX,790)@56
    // out out_primWireOut@64
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260002226123642i229742iyc5 thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr1_x (
        .in_0(redist36_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr1_x_out_primWireOut_1_q),
        .in_1(i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_o_readdata_0_tpl),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr1_x_out_primWireOut_1(DELAY,1026)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr1_x_out_primWireOut);
        end
    end

    // valid_fanout_reg6(REG,867)@29 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist4_sync_together410_aunroll_x_in_i_valid_28_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i26_result_i_i2768_dfr15(BLACKBOX,195)@30
    dfr_i_llvm_fpga_ffwd_dest_i26_result_i_i2768_0 thei_llvm_fpga_ffwd_dest_i26_result_i_i2768_dfr15 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i26_result_i_i2768_dfr15_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr0_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr1_x(BLACKBOX,838)@30
    // out out_primWireOut@46
    dfr_flt_i_llvm_fpga_vpfp_sqrt_i26_i26_re00000dd6oq3cd16oe0cp3doz thei_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr0_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr1_x (
        .in_0(i_llvm_fpga_ffwd_dest_i26_result_i_i2768_dfr15_out_dest_data_out_1_0),
        .out_primWireOut(i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr0_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr0_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr1_x_out_primWireOut_1(DELAY,1014)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr0_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr0_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr0_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4625005314219196666375(CONSTANT,112)
    assign c_i64_4625005314219196666375_q = $unsigned(64'b1011111111010000101011100010101111001001101010111011111100000110);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x(BLACKBOX,730)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002l6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x (
        .in_0(c_i64_4625005314219196666375_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist45_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_1(DELAY,1046)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist45_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut);
        end
    end

    // redist46_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_2(DELAY,1047)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_2_q <= '0;
        end
        else
        begin
            redist46_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_2_q <= $unsigned(redist45_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_1_q);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,933)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111010100101000011100010111010101100110001001000010110010);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr1_x(BLACKBOX,742)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002p6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist40_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr1_x_out_primWireOut_1(DELAY,1041)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist40_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i32_1382(CONSTANT,28)
    assign c_i32_1382_q = $unsigned(32'b00000000000000000000000000000001);

    // i_sel_bits146_dfr216_vt_const_31(CONSTANT,235)
    assign i_sel_bits146_dfr216_vt_const_31_q = $unsigned(29'b00000000000000000000000000000);

    // c_i32_6378(CONSTANT,35)
    assign c_i32_6378_q = $unsigned(32'b00000000000000000000000000000110);

    // i_sel_bits_dfr151(LOGICAL,247)@44
    assign i_sel_bits_dfr151_q = redist171_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_1_q & c_i32_6378_q;

    // i_sel_bits_dfr151_vt_select_2(BITSELECT,251)@44
    assign i_sel_bits_dfr151_vt_select_2_b = i_sel_bits_dfr151_q[2:1];

    // i_sel_bits_dfr151_vt_join(BITJOIN,250)@44
    assign i_sel_bits_dfr151_vt_join_q = {i_sel_bits146_dfr216_vt_const_31_q, i_sel_bits_dfr151_vt_select_2_b, GND_q};

    // i_sel_bits97_dfr193_BitSelect_for_a(BITSELECT,943)@44
    assign i_sel_bits97_dfr193_BitSelect_for_a_b = i_sel_bits_dfr151_vt_join_q[2:1];

    // i_sel_bits97_dfr193_join(BITJOIN,944)@44
    assign i_sel_bits97_dfr193_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_sel_bits97_dfr193_BitSelect_for_a_b, VCC_q};

    // i_sel_bits97_dfr193_vt_select_2(BITSELECT,246)@44
    assign i_sel_bits97_dfr193_vt_select_2_b = i_sel_bits97_dfr193_join_q[2:1];

    // i_sel_bits97_dfr193_vt_join(BITJOIN,245)@44
    assign i_sel_bits97_dfr193_vt_join_q = {i_sel_bits146_dfr216_vt_const_31_q, i_sel_bits97_dfr193_vt_select_2_b, VCC_q};

    // dupName_63_comparator_x(LOGICAL,344)@44 + 1
    assign dupName_63_comparator_x_qi = $unsigned(i_sel_bits97_dfr193_vt_join_q == c_i32_1382_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_63_comparator_x_delay ( .xin(dupName_63_comparator_x_qi), .xout(dupName_63_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i26_i32_v1i32_s_case_assign_struct_dfr_fpgaunique_21s_case_stmt134_dfr200(SELECTOR,165)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v1i32_s_case_assign_struct_dfr_fpgaunique_21s_case_stmt134_dfr200_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v1i32_s_case_assign_struct_dfr_fpgaunique_21s_case_stmt134_dfr200_q <= redist45_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_1_q;
            if (dupName_63_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v1i32_s_case_assign_struct_dfr_fpgaunique_21s_case_stmt134_dfr200_q <= redist40_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // i_sel_shr182_dfr223_vt_const_31(CONSTANT,252)
    assign i_sel_shr182_dfr223_vt_const_31_q = $unsigned(3'b000);

    // rightShiftStage1Idx1Rng2_uid995_i_sel_shr_dfr0_shift_x(BITSELECT,994)@45
    assign rightShiftStage1Idx1Rng2_uid995_i_sel_shr_dfr0_shift_x_b = rightShiftStage0_uid994_i_sel_shr_dfr0_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid997_i_sel_shr_dfr0_shift_x(BITJOIN,996)@45
    assign rightShiftStage1Idx1_uid997_i_sel_shr_dfr0_shift_x_q = {i_arrayidx10_12_dfr167_vt_const_1_q, rightShiftStage1Idx1Rng2_uid995_i_sel_shr_dfr0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid990_i_sel_shr_dfr0_shift_x(BITSELECT,989)@45
    assign rightShiftStage0Idx1Rng1_uid990_i_sel_shr_dfr0_shift_x_b = redist172_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_2_q[31:1];

    // rightShiftStage0Idx1_uid992_i_sel_shr_dfr0_shift_x(BITJOIN,991)@45
    assign rightShiftStage0Idx1_uid992_i_sel_shr_dfr0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid990_i_sel_shr_dfr0_shift_x_b};

    // rightShiftStage0_uid994_i_sel_shr_dfr0_shift_x(MUX,993)@45
    assign rightShiftStage0_uid994_i_sel_shr_dfr0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid994_i_sel_shr_dfr0_shift_x_s or redist172_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_2_q or rightShiftStage0Idx1_uid992_i_sel_shr_dfr0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid994_i_sel_shr_dfr0_shift_x_s)
            1'b0 : rightShiftStage0_uid994_i_sel_shr_dfr0_shift_x_q = redist172_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_2_q;
            1'b1 : rightShiftStage0_uid994_i_sel_shr_dfr0_shift_x_q = rightShiftStage0Idx1_uid992_i_sel_shr_dfr0_shift_x_q;
            default : rightShiftStage0_uid994_i_sel_shr_dfr0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid999_i_sel_shr_dfr0_shift_x(MUX,998)@45
    assign rightShiftStage1_uid999_i_sel_shr_dfr0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid999_i_sel_shr_dfr0_shift_x_s or rightShiftStage0_uid994_i_sel_shr_dfr0_shift_x_q or rightShiftStage1Idx1_uid997_i_sel_shr_dfr0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid999_i_sel_shr_dfr0_shift_x_s)
            1'b0 : rightShiftStage1_uid999_i_sel_shr_dfr0_shift_x_q = rightShiftStage0_uid994_i_sel_shr_dfr0_shift_x_q;
            1'b1 : rightShiftStage1_uid999_i_sel_shr_dfr0_shift_x_q = rightShiftStage1Idx1_uid997_i_sel_shr_dfr0_shift_x_q;
            default : rightShiftStage1_uid999_i_sel_shr_dfr0_shift_x_q = 32'b0;
        endcase
    end

    // i_sel_shr_dfr159_vt_select_28(BITSELECT,260)@45
    assign i_sel_shr_dfr159_vt_select_28_b = rightShiftStage1_uid999_i_sel_shr_dfr0_shift_x_q[28:0];

    // i_sel_shr_dfr159_vt_join(BITJOIN,259)@45
    assign i_sel_shr_dfr159_vt_join_q = {i_sel_shr182_dfr223_vt_const_31_q, i_sel_shr_dfr159_vt_select_28_b};

    // dupName_29_comparator_x(LOGICAL,310)@45 + 1
    assign dupName_29_comparator_x_qi = $unsigned(i_sel_shr_dfr159_vt_join_q == c_i32_6378_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_29_comparator_x_delay ( .xin(dupName_29_comparator_x_qi), .xout(dupName_29_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,910)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111011110001111111000110011101100101000010001010001001110);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr1_x(BLACKBOX,580)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00176uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist96_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr1_x_out_primWireOut_1(DELAY,1097)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist96_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist96_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i32_7387(CONSTANT,36)
    assign c_i32_7387_q = $unsigned(32'b00000000000000000000000000000111);

    // dupName_62_comparator_x(LOGICAL,343)@44 + 1
    assign dupName_62_comparator_x_qi = $unsigned(i_sel_bits97_dfr193_vt_join_q == c_i32_7387_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_62_comparator_x_delay ( .xin(dupName_62_comparator_x_qi), .xout(dupName_62_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,928)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111011101010000101110111001111100001101001111001110110100);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr1_x(BLACKBOX,712)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002f6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist52_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr1_x_out_primWireOut_1(DELAY,1053)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist52_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i32_5383(CONSTANT,34)
    assign c_i32_5383_q = $unsigned(32'b00000000000000000000000000000101);

    // dupName_61_comparator_x(LOGICAL,342)@44 + 1
    assign dupName_61_comparator_x_qi = $unsigned(i_sel_bits97_dfr193_vt_join_q == c_i32_5383_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_61_comparator_x_delay ( .xin(dupName_61_comparator_x_qi), .xout(dupName_61_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,889)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111010111010001011110000100010101110001111010000110010010);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr1_x(BLACKBOX,454)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00016uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist139_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr1_x_out_primWireOut_1(DELAY,1140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist139_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist139_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i32_3380(CONSTANT,30)
    assign c_i32_3380_q = $unsigned(32'b00000000000000000000000000000011);

    // dupName_60_comparator_x(LOGICAL,341)@44 + 1
    assign dupName_60_comparator_x_qi = $unsigned(i_sel_bits97_dfr193_vt_join_q == c_i32_3380_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_60_comparator_x_delay ( .xin(dupName_60_comparator_x_qi), .xout(dupName_60_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,890)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111011101111100101000000010110000101010101100010001110110);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr1_x(BLACKBOX,466)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00056uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist135_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr1_x_out_primWireOut_1(DELAY,1136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist135_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist135_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt131_dfr199(SELECTOR,173)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt131_dfr199_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt131_dfr199_q <= redist45_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_1_q;
            if (dupName_62_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt131_dfr199_q <= redist96_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_61_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt131_dfr199_q <= redist52_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_60_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt131_dfr199_q <= redist139_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_63_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt131_dfr199_q <= redist135_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_28_comparator_x(LOGICAL,309)@45 + 1
    assign dupName_28_comparator_x_qi = $unsigned(i_sel_shr_dfr159_vt_join_q == c_i32_5383_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_28_comparator_x_delay ( .xin(dupName_28_comparator_x_qi), .xout(dupName_28_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,893)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111001101010100000101111000001011000100001111000100101100);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr1_x(BLACKBOX,478)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00096uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist131_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr1_x_out_primWireOut_1(DELAY,1132)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist131_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist131_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,895)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111011011101001101101110110101011111110110010101001111110);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr1_x(BLACKBOX,490)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000d6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist127_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr1_x_out_primWireOut_1(DELAY,1128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist127_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist127_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,898)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111001110000000111000111011000100001001000001010000000100);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr1_x(BLACKBOX,502)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000h6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist123_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr1_x_out_primWireOut_1(DELAY,1124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist123_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist123_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,901)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111010010010010100101000000011011100011101011110001011110);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr1_x(BLACKBOX,520)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000n6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist116_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr1_x_out_primWireOut_1(DELAY,1117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist116_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist116_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt125_dfr198(SELECTOR,172)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt125_dfr198_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt125_dfr198_q <= redist45_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_1_q;
            if (dupName_62_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt125_dfr198_q <= redist131_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_61_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt125_dfr198_q <= redist127_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_60_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt125_dfr198_q <= redist123_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_63_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt125_dfr198_q <= redist116_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // c_i32_4379(CONSTANT,31)
    assign c_i32_4379_q = $unsigned(32'b00000000000000000000000000000100);

    // dupName_27_comparator_x(LOGICAL,308)@45 + 1
    assign dupName_27_comparator_x_qi = $unsigned(i_sel_shr_dfr159_vt_join_q == c_i32_4379_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_27_comparator_x_delay ( .xin(dupName_27_comparator_x_qi), .xout(dupName_27_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4655282754735974656344(CONSTANT,140)
    assign c_i64_4655282754735974656344_q = $unsigned(64'b1011111101100101000111001111111111010010111101011101011100000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr1_x(BLACKBOX,532)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000r6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr1_x (
        .in_0(c_i64_4655282754735974656344_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist112_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr1_x_out_primWireOut_1(DELAY,1113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist112_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist112_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4637453113555967136346(CONSTANT,129)
    assign c_i64_4637453113555967136346_q = $unsigned(64'b1011111110100100011101001111011010100111111101111010001101100000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr1_x(BLACKBOX,544)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000v6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr1_x (
        .in_0(c_i64_4637453113555967136346_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist108_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr1_x_out_primWireOut_1(DELAY,1109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist108_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist108_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,906)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111011111101011111010100101000000100101100110000000000010);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr1_x(BLACKBOX,556)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000z6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist104_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr1_x_out_primWireOut_1(DELAY,1105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist104_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist104_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4633319770795327952350(CONSTANT,123)
    assign c_i64_4633319770795327952350_q = $unsigned(64'b1011111110110011001001000011011110000010111100110011111000110000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr1_x(BLACKBOX,568)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00136uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr1_x (
        .in_0(c_i64_4633319770795327952350_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist100_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr1_x_out_primWireOut_1(DELAY,1101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist100_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt119_dfr197(SELECTOR,171)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt119_dfr197_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt119_dfr197_q <= redist45_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_1_q;
            if (dupName_62_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt119_dfr197_q <= redist112_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_61_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt119_dfr197_q <= redist108_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_60_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt119_dfr197_q <= redist104_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_63_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt119_dfr197_q <= redist100_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_26_comparator_x(LOGICAL,307)@45 + 1
    assign dupName_26_comparator_x_qi = $unsigned(i_sel_shr_dfr159_vt_join_q == c_i32_3380_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_26_comparator_x_delay ( .xin(dupName_26_comparator_x_qi), .xout(dupName_26_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,912)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111011101000110000000001010111001110111100101100101111000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr1_x(BLACKBOX,586)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00196uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist94_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr1_x_out_primWireOut_1(DELAY,1095)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist94_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist94_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,914)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111011011010101101000000000001100111100001110010100101010);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr1_x(BLACKBOX,598)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001d6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist90_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr1_x_out_primWireOut_1(DELAY,1091)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist90_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist90_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4622593651689176224356(CONSTANT,105)
    assign c_i64_4622593651689176224356_q = $unsigned(64'b1011111111011001001111111001000010111010000101110100001101100000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr1_x(BLACKBOX,610)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001h6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr1_x (
        .in_0(c_i64_4622593651689176224356_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist86_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr1_x_out_primWireOut_1(DELAY,1087)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist86_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,917)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111011100010010111001010011001001101100001000011100001010);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr1_x(BLACKBOX,622)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001l6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist82_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr1_x_out_primWireOut_1(DELAY,1083)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist82_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt113_dfr196(SELECTOR,170)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt113_dfr196_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt113_dfr196_q <= redist45_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_1_q;
            if (dupName_62_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt113_dfr196_q <= redist94_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_61_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt113_dfr196_q <= redist90_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_60_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt113_dfr196_q <= redist86_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_63_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt113_dfr196_q <= redist82_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_25_comparator_x(LOGICAL,306)@45 + 1
    assign dupName_25_comparator_x_qi = $unsigned(i_sel_shr_dfr159_vt_join_q == c_i32_2270_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_25_comparator_x_delay ( .xin(dupName_25_comparator_x_qi), .xout(dupName_25_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,920)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111000110000000111110110110011011111100110111011100110000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr1_x(BLACKBOX,634)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001p6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist78_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr1_x_out_primWireOut_1(DELAY,1079)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist78_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,923)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111110110100100100001010100111001010100111111000100000111000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr1_x(BLACKBOX,652)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001v6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist72_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr1_x_out_primWireOut_1(DELAY,1073)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist72_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4624269310775249156364(CONSTANT,109)
    assign c_i64_4624269310775249156364_q = $unsigned(64'b1011111111010011010010111000111111110001100000000011011011111100);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr1_x(BLACKBOX,664)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001z6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr1_x (
        .in_0(c_i64_4624269310775249156364_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist68_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr1_x_out_primWireOut_1(DELAY,1069)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist68_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4621630350130484910366(CONSTANT,102)
    assign c_i64_4621630350130484910366_q = $unsigned(64'b1011111111011100101010111010111011011001010011101110100101010010);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr1_x(BLACKBOX,676)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00236uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr1_x (
        .in_0(c_i64_4621630350130484910366_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist64_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr1_x_out_primWireOut_1(DELAY,1065)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist64_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt107_dfr195(SELECTOR,169)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt107_dfr195_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt107_dfr195_q <= redist45_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_1_q;
            if (dupName_62_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt107_dfr195_q <= redist78_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_61_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt107_dfr195_q <= redist72_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_60_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt107_dfr195_q <= redist68_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_63_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt107_dfr195_q <= redist64_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_24_comparator_x(LOGICAL,305)@45 + 1
    assign dupName_24_comparator_x_qi = $unsigned(i_sel_shr_dfr159_vt_join_q == c_i32_1382_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_24_comparator_x_delay ( .xin(dupName_24_comparator_x_qi), .xout(dupName_24_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,924)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111010010111101101111101000010010011110010100011110010010);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr1_x(BLACKBOX,688)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00276uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist60_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr1_x_out_primWireOut_1(DELAY,1061)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist60_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4623400411886565032370(CONSTANT,108)
    assign c_i64_4623400411886565032370_q = $unsigned(64'b1011111111010110011000011101001000111011000110110100100101011000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr1_x(BLACKBOX,700)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002b6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr1_x (
        .in_0(c_i64_4623400411886565032370_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist56_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr1_x_out_primWireOut_1(DELAY,1057)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist56_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4621748285601026878372(CONSTANT,103)
    assign c_i64_4621748285601026878372_q = $unsigned(64'b1011111111011100010000000110101111011011011110101110110011000010);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr1_x(BLACKBOX,718)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002h6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr1_x (
        .in_0(c_i64_4621748285601026878372_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist50_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr1_x_out_primWireOut_1(DELAY,1051)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist50_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt101_dfr194(SELECTOR,167)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt101_dfr194_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt101_dfr194_q <= redist45_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_1_q;
            if (dupName_62_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt101_dfr194_q <= redist60_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_61_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt101_dfr194_q <= redist56_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_60_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt101_dfr194_q <= redist50_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_23_comparator_x(LOGICAL,304)@45 + 1
    assign dupName_23_comparator_x_qi = $unsigned(i_sel_shr_dfr159_vt_join_q == c_i32_0377_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_23_comparator_x_delay ( .xin(dupName_23_comparator_x_qi), .xout(dupName_23_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt144_dfr202(SELECTOR,193)@46 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt144_dfr202_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt144_dfr202_q <= redist46_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i_dfr1_x_out_primWireOut_2_q;
            if (dupName_29_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt144_dfr202_q <= i_llvm_fpga_case_i26_i32_v1i32_s_case_assign_struct_dfr_fpgaunique_21s_case_stmt134_dfr200_q;
            end
            if (dupName_28_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt144_dfr202_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt131_dfr199_q;
            end
            if (dupName_27_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt144_dfr202_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt125_dfr198_q;
            end
            if (dupName_26_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt144_dfr202_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt119_dfr197_q;
            end
            if (dupName_25_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt144_dfr202_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt113_dfr196_q;
            end
            if (dupName_24_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt144_dfr202_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt107_dfr195_q;
            end
            if (dupName_23_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt144_dfr202_q <= i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt101_dfr194_q;
            end
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr1_x(BLACKBOX,806)@47
    // out out_primWireOut@55
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260004226123642i229742iyc5 thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr1_x (
        .in_0(i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt144_dfr202_q),
        .in_1(redist13_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr0_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr1_x_out_primWireOut_1(DELAY,1022)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,938)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111100000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr1_x(BLACKBOX,757)@55
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002u6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr1_x_out_primWireOut_1(DELAY,1036)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist35_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr1_x(BLACKBOX,798)@56
    // out out_primWireOut@64
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260003226123642i229742iyc5 thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr1_x (
        .in_0(redist35_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr1_x_out_primWireOut_1_q),
        .in_1(redist21_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_1_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr1_x_out_primWireOut_1(DELAY,1024)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x(BLACKBOX,431)@65
    // out out_primWireOut@86
    dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i260001123642i229744c22675x thei_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x (
        .in_0(redist23_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_1_dfr1_x_out_primWireOut_1_q),
        .in_1(redist25_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_1_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist146_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_1(DELAY,1147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist146_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist146_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,936)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000000000000110011001100110011001100110011001100110011001101);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr1_x(BLACKBOX,751)@86
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002s6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr1_x_out_primWireOut_1(DELAY,1038)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist37_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr1_x(BLACKBOX,782)@87
    // out out_primWireOut@95
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260001226123642i229742iyc5 thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr1_x (
        .in_0(redist37_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr1_x_out_primWireOut_1_q),
        .in_1(redist146_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr1_x_out_primWireOut_1(DELAY,1028)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr1_x(BLACKBOX,830)@96
    // in in_1@126
    // out out_primWireOut@162
    dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260000ol0cd06cj0of0cdj6uzo thei_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr1_x (
        .in_0(redist27_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_1_dfr1_x_out_primWireOut_1_q),
        .in_1(redist142_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr1_x_out_primWireOut_1(DELAY,1016)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,934)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111001001100110011001100110011001100110011001100110011010);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr1_x(BLACKBOX,745)@162
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002q6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist39_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr1_x_out_primWireOut_1(DELAY,1040)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist39_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr1_x(BLACKBOX,774)@163
    // out out_primWireOut@171
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260000226123642i229742iyc5 thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr1_x (
        .in_0(redist39_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr1_x_out_primWireOut_1_q),
        .in_1(redist15_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_1_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr1_x_out_primWireOut_1(DELAY,1030)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,935)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111101001100110011001100110011001100110011001100110011010);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr1_x(BLACKBOX,748)@171
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002r6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr1_x_out_primWireOut_1(DELAY,1039)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist38_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr1_x(BLACKBOX,423)@172
    // out out_primWireOut@193
    dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i260000123642i229744c22675x thei_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr1_x (
        .in_0(redist38_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr1_x_out_primWireOut_1_q),
        .in_1(redist29_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_1_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist149_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr1_x_out_primWireOut_1(DELAY,1150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist149_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist149_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr1_x_out_primWireOut);
        end
    end

    // redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_notEnable(LOGICAL,1230)
    assign redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_notEnable_q = $unsigned(~ (VCC_q));

    // redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_nor(LOGICAL,1231)
    assign redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_nor_q = ~ (redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_notEnable_q | redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_sticky_ena_q);

    // redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_last(CONSTANT,1227)
    assign redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_last_q = $unsigned(8'b01100111);

    // redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_cmp(LOGICAL,1228)
    assign redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_cmp_b = {1'b0, redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_q};
    assign redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_cmp_q = $unsigned(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_last_q == redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_cmp_b ? 1'b1 : 1'b0);

    // redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_cmpReg(REG,1229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_cmpReg_q <= $unsigned(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_cmp_q);
        end
    end

    // redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_sticky_ena(REG,1232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_nor_q == 1'b1)
        begin
            redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_sticky_ena_q <= $unsigned(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_cmpReg_q);
        end
    end

    // redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_enaAnd(LOGICAL,1233)
    assign redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_enaAnd_q = redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_sticky_ena_q & VCC_q;

    // redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt(COUNTER,1225)
    // low=0, high=104, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_i <= 7'd0;
            redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_i == 7'd103)
            begin
                redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_eq <= 1'b0;
            end
            if (redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_eq == 1'b1)
            begin
                redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_i <= $unsigned(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_i) + $unsigned(7'd24);
            end
            else
            begin
                redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_i <= $unsigned(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_i) + $unsigned(7'd1);
            end
        end
    end
    assign redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_q = redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_i[6:0];

    // redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_inputreg0(DELAY,1222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_inputreg0_q <= '0;
        end
        else
        begin
            redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_inputreg0_q <= $unsigned(redist146_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_1_q);
        end
    end

    // redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_wraddr(REG,1226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_wraddr_q <= $unsigned(7'b1101000);
        end
        else
        begin
            redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_wraddr_q <= $unsigned(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_q);
        end
    end

    // redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem(DUALMEM,1224)
    assign redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_ia = $unsigned(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_inputreg0_q);
    assign redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_aa = redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_wraddr_q;
    assign redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_ab = redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_rdcnt_q;
    assign redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(26),
        .widthad_a(7),
        .numwords_a(105),
        .width_b(26),
        .widthad_b(7),
        .numwords_b(105),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_dmem (
        .clocken1(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_reset0),
        .clock1(clock),
        .address_a(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_aa),
        .data_a(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_ab),
        .q_b(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_q = redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_iq[25:0];

    // redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_outputreg0(DELAY,1223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_outputreg0_q <= '0;
        end
        else
        begin
            redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_outputreg0_q <= $unsigned(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_mem_q);
        end
    end

    // i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr1_x(BLACKBOX,449)@194
    dfr_flt_i_llvm_fpga_vpfp_cast_from_fixed00012cdo6u2ocpq6c0ouq3cz thei_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr1_x (
        .in_0(c_i32_2270_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist141_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr1_x_out_primWireOut_1(DELAY,1142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist141_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist141_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr1_x(BLACKBOX,822)@195
    // out out_primWireOut@203
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260006226123642i229742iyc5 thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr1_x (
        .in_0(redist141_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr1_x_out_primWireOut_1_q),
        .in_1(redist147_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_1_dfr1_x_out_primWireOut_109_outputreg0_q),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr1_x_out_primWireOut_1(DELAY,1018)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr1_x(BLACKBOX,766)@194
    // in in_0@204
    // out out_primWireOut@220
    dfr_flt_i_llvm_fpga_vpfp_div_i26_i26_i260000226123642i229742iyc5 thei_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr1_x (
        .in_0(redist17_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_1_dfr1_x_out_primWireOut_1_q),
        .in_1(redist149_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_1_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr1_x_out_primWireOut_1(DELAY,1032)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4578732572443410432274(CONSTANT,49)
    assign c_i64_4578732572443410432274_q = $unsigned(64'b1100000001110101000100101111110000001010000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x(BLACKBOX,511)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000k6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x (
        .in_0(c_i64_4578732572443410432274_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist119_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_1(DELAY,1120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist119_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist119_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut);
        end
    end

    // redist120_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_2(DELAY,1121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist120_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_2_q <= '0;
        end
        else
        begin
            redist120_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_2_q <= $unsigned(redist119_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_1_q);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,921)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000001000101011111010101110101000100000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr1_x(BLACKBOX,643)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001s6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist75_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr1_x_out_primWireOut_1(DELAY,1076)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist75_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr1_x_out_primWireOut);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_notEnable(LOGICAL,1327)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_nor(LOGICAL,1376)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_nor_q = ~ (redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_notEnable_q | redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_sticky_ena_q);

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_last(CONSTANT,1324)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_last_q = $unsigned(6'b011100);

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmp(LOGICAL,1325)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmp_b = {1'b0, redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_q};
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmp_q = $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_last_q == redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_cmpReg(REG,1374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_cmpReg_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmp_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_sticky_ena(REG,1377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_nor_q == 1'b1)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_sticky_ena_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_cmpReg_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_enaAnd(LOGICAL,1378)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_enaAnd_q = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_sticky_ena_q & VCC_q;

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt(COUNTER,1322)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_i <= 5'd0;
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_i == 5'd28)
            begin
                redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_eq == 1'b1)
            begin
                redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_i <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_i <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_q = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_i[4:0];

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_nor(LOGICAL,1364)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_nor_q = ~ (redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_notEnable_q | redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_sticky_ena_q);

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_cmpReg(REG,1362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_cmpReg_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmp_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_sticky_ena(REG,1365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_nor_q == 1'b1)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_sticky_ena_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_cmpReg_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_enaAnd(LOGICAL,1366)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_enaAnd_q = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_sticky_ena_q & VCC_q;

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_nor(LOGICAL,1352)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_nor_q = ~ (redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_notEnable_q | redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_sticky_ena_q);

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_cmpReg(REG,1350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_cmpReg_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmp_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_sticky_ena(REG,1353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_nor_q == 1'b1)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_sticky_ena_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_cmpReg_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_enaAnd(LOGICAL,1354)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_enaAnd_q = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_sticky_ena_q & VCC_q;

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_nor(LOGICAL,1340)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_nor_q = ~ (redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_notEnable_q | redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_sticky_ena_q);

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_cmpReg(REG,1338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_cmpReg_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmp_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_sticky_ena(REG,1341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_nor_q == 1'b1)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_sticky_ena_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_cmpReg_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_enaAnd(LOGICAL,1342)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_enaAnd_q = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_sticky_ena_q & VCC_q;

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_nor(LOGICAL,1328)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_nor_q = ~ (redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_notEnable_q | redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_sticky_ena_q);

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmpReg(REG,1326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmpReg_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmp_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_sticky_ena(REG,1329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_nor_q == 1'b1)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_sticky_ena_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_cmpReg_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_enaAnd(LOGICAL,1330)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_enaAnd_q = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_sticky_ena_q & VCC_q;

    // i_sel_bits146_dfr216(LOGICAL,233)@46
    assign i_sel_bits146_dfr216_q = redist163_bgTrunc_i_sub_1_dfr165_sel_x_b_1_q & c_i32_6378_q;

    // i_sel_bits146_dfr216_vt_select_2(BITSELECT,237)@46
    assign i_sel_bits146_dfr216_vt_select_2_b = i_sel_bits146_dfr216_q[2:1];

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_inputreg0(DELAY,1319)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_inputreg0_q <= $unsigned(i_sel_bits146_dfr216_vt_select_2_b);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem(DUALMEM,1321)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_ia = $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_inputreg0_q);
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_aa = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_wraddr_q;
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_ab = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_q;
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(2),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(2),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_dmem (
        .clocken1(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_aa),
        .data_a(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_ab),
        .q_b(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_q = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_iq[1:0];

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_outputreg0(DELAY,1320)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_outputreg0_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_mem_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_inputreg0(DELAY,1331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_inputreg0_q <= '0;
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_inputreg0_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_outputreg0_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem(DUALMEM,1333)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_ia = $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_inputreg0_q);
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_aa = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_wraddr_q;
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_ab = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_q;
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(2),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(2),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_dmem (
        .clocken1(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_reset0),
        .clock1(clock),
        .address_a(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_aa),
        .data_a(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_ab),
        .q_b(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_q = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_iq[1:0];

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_outputreg0(DELAY,1332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_outputreg0_q <= '0;
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_outputreg0_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_mem_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_inputreg0(DELAY,1343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_inputreg0_q <= '0;
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_inputreg0_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_1_outputreg0_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem(DUALMEM,1345)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_ia = $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_inputreg0_q);
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_aa = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_wraddr_q;
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_ab = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_q;
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(2),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(2),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_dmem (
        .clocken1(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_reset0),
        .clock1(clock),
        .address_a(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_aa),
        .data_a(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_ab),
        .q_b(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_q = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_iq[1:0];

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_outputreg0(DELAY,1344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_outputreg0_q <= '0;
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_outputreg0_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_mem_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_inputreg0(DELAY,1355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_inputreg0_q <= '0;
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_inputreg0_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_2_outputreg0_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem(DUALMEM,1357)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_ia = $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_inputreg0_q);
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_aa = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_wraddr_q;
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_ab = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_q;
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(2),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(2),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_dmem (
        .clocken1(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_reset0),
        .clock1(clock),
        .address_a(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_aa),
        .data_a(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_ab),
        .q_b(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_q = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_iq[1:0];

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_outputreg0(DELAY,1356)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_outputreg0_q <= '0;
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_outputreg0_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_mem_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_inputreg0(DELAY,1367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_inputreg0_q <= '0;
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_inputreg0_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_3_outputreg0_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_wraddr(REG,1323)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_wraddr_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem(DUALMEM,1369)
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_ia = $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_inputreg0_q);
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_aa = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_wraddr_q;
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_ab = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_0_rdcnt_q;
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(2),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(2),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_dmem (
        .clocken1(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_reset0),
        .clock1(clock),
        .address_a(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_aa),
        .data_a(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_ab),
        .q_b(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_q = redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_iq[1:0];

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_outputreg0(DELAY,1368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_outputreg0_q <= '0;
        end
        else
        begin
            redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_outputreg0_q <= $unsigned(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_mem_q);
        end
    end

    // redist166_i_sel_bits146_dfr216_vt_select_2_b_172(DELAY,1167)
    dspba_delay_ver #( .width(2), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist166_i_sel_bits146_dfr216_vt_select_2_b_172 ( .xin(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_split_4_outputreg0_q), .xout(redist166_i_sel_bits146_dfr216_vt_select_2_b_172_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_sel_bits146_dfr216_vt_join(BITJOIN,236)@218
    assign i_sel_bits146_dfr216_vt_join_q = {i_sel_bits146_dfr216_vt_const_31_q, redist166_i_sel_bits146_dfr216_vt_select_2_b_172_q, GND_q};

    // dupName_94_comparator_x(LOGICAL,375)@218 + 1
    assign dupName_94_comparator_x_qi = $unsigned(i_sel_bits146_dfr216_vt_join_q == c_i32_6378_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_94_comparator_x_delay ( .xin(dupName_94_comparator_x_qi), .xout(dupName_94_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4595959475176734720278(CONSTANT,70)
    assign c_i64_4595959475176734720278_q = $unsigned(64'b1100000000110111110111110011010100110000000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr1_x(BLACKBOX,733)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002m6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr1_x (
        .in_0(c_i64_4595959475176734720278_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist44_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr1_x_out_primWireOut_1(DELAY,1045)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist44_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr1_x_out_primWireOut);
        end
    end

    // dupName_93_comparator_x(LOGICAL,374)@218 + 1
    assign dupName_93_comparator_x_qi = $unsigned(i_sel_bits146_dfr216_vt_join_q == c_i32_4379_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_93_comparator_x_delay ( .xin(dupName_93_comparator_x_qi), .xout(dupName_93_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4579107545737592832280(CONSTANT,50)
    assign c_i64_4579107545737592832280_q = $unsigned(64'b1100000001110011101111011111001011000100000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr1_x(BLACKBOX,457)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00026uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr1_x (
        .in_0(c_i64_4579107545737592832280_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist138_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr1_x_out_primWireOut_1(DELAY,1139)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist138_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist138_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr1_x_out_primWireOut);
        end
    end

    // dupName_92_comparator_x(LOGICAL,373)@218 + 1
    assign dupName_92_comparator_x_qi = $unsigned(i_sel_bits146_dfr216_vt_join_q == c_i32_2270_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_92_comparator_x_delay ( .xin(dupName_92_comparator_x_qi), .xout(dupName_92_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4592021588559265792284(CONSTANT,64)
    assign c_i64_4592021588559265792284_q = $unsigned(64'b1100000001000101110111001011000111011101000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr1_x(BLACKBOX,469)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00066uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr1_x (
        .in_0(c_i64_4592021588559265792284_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist134_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr1_x_out_primWireOut_1(DELAY,1135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist134_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist134_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr1_x_out_primWireOut);
        end
    end

    // dupName_91_comparator_x(LOGICAL,372)@218 + 1
    assign dupName_91_comparator_x_qi = $unsigned(i_sel_bits146_dfr216_vt_join_q == c_i32_0377_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_91_comparator_x_delay ( .xin(dupName_91_comparator_x_qi), .xout(dupName_91_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt181_dfr222(SELECTOR,180)@219 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt181_dfr222_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt181_dfr222_q <= redist119_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_1_q;
            if (dupName_94_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt181_dfr222_q <= redist75_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i724_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_93_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt181_dfr222_q <= redist44_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i706_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_92_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt181_dfr222_q <= redist138_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i688_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_91_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt181_dfr222_q <= redist134_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i670_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // rightShiftStage1Idx1Rng2_uid969_i_sel_shr182_dfr0_shift_x(BITSELECT,968)@46
    assign rightShiftStage1Idx1Rng2_uid969_i_sel_shr182_dfr0_shift_x_b = rightShiftStage0_uid968_i_sel_shr182_dfr0_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid971_i_sel_shr182_dfr0_shift_x(BITJOIN,970)@46
    assign rightShiftStage1Idx1_uid971_i_sel_shr182_dfr0_shift_x_q = {i_arrayidx10_12_dfr167_vt_const_1_q, rightShiftStage1Idx1Rng2_uid969_i_sel_shr182_dfr0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid964_i_sel_shr182_dfr0_shift_x(BITSELECT,963)@46
    assign rightShiftStage0Idx1Rng1_uid964_i_sel_shr182_dfr0_shift_x_b = redist163_bgTrunc_i_sub_1_dfr165_sel_x_b_1_q[31:1];

    // rightShiftStage0Idx1_uid966_i_sel_shr182_dfr0_shift_x(BITJOIN,965)@46
    assign rightShiftStage0Idx1_uid966_i_sel_shr182_dfr0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid964_i_sel_shr182_dfr0_shift_x_b};

    // rightShiftStage0_uid968_i_sel_shr182_dfr0_shift_x(MUX,967)@46
    assign rightShiftStage0_uid968_i_sel_shr182_dfr0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid968_i_sel_shr182_dfr0_shift_x_s or redist163_bgTrunc_i_sub_1_dfr165_sel_x_b_1_q or rightShiftStage0Idx1_uid966_i_sel_shr182_dfr0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid968_i_sel_shr182_dfr0_shift_x_s)
            1'b0 : rightShiftStage0_uid968_i_sel_shr182_dfr0_shift_x_q = redist163_bgTrunc_i_sub_1_dfr165_sel_x_b_1_q;
            1'b1 : rightShiftStage0_uid968_i_sel_shr182_dfr0_shift_x_q = rightShiftStage0Idx1_uid966_i_sel_shr182_dfr0_shift_x_q;
            default : rightShiftStage0_uid968_i_sel_shr182_dfr0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid973_i_sel_shr182_dfr0_shift_x(MUX,972)@46
    assign rightShiftStage1_uid973_i_sel_shr182_dfr0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid973_i_sel_shr182_dfr0_shift_x_s or rightShiftStage0_uid968_i_sel_shr182_dfr0_shift_x_q or rightShiftStage1Idx1_uid971_i_sel_shr182_dfr0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid973_i_sel_shr182_dfr0_shift_x_s)
            1'b0 : rightShiftStage1_uid973_i_sel_shr182_dfr0_shift_x_q = rightShiftStage0_uid968_i_sel_shr182_dfr0_shift_x_q;
            1'b1 : rightShiftStage1_uid973_i_sel_shr182_dfr0_shift_x_q = rightShiftStage1Idx1_uid971_i_sel_shr182_dfr0_shift_x_q;
            default : rightShiftStage1_uid973_i_sel_shr182_dfr0_shift_x_q = 32'b0;
        endcase
    end

    // i_sel_shr182_dfr223_vt_select_28(BITSELECT,254)@46
    assign i_sel_shr182_dfr223_vt_select_28_b = rightShiftStage1_uid973_i_sel_shr182_dfr0_shift_x_q[28:0];

    // i_sel_shr182_dfr223_vt_join(BITJOIN,253)@46
    assign i_sel_shr182_dfr223_vt_join_q = {i_sel_shr182_dfr223_vt_const_31_q, i_sel_shr182_dfr223_vt_select_28_b};

    // dupName_120_comparator_x(LOGICAL,401)@46 + 1
    assign dupName_120_comparator_x_qi = $unsigned(i_sel_shr182_dfr223_vt_join_q == c_i32_5383_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_120_comparator_x_delay ( .xin(dupName_120_comparator_x_qi), .xout(dupName_120_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist151_dupName_120_comparator_x_q_174(DELAY,1152)
    dspba_delay_ver #( .width(1), .depth(173), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist151_dupName_120_comparator_x_q_174 ( .xin(dupName_120_comparator_x_q), .xout(redist151_dupName_120_comparator_x_q_174_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,894)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000001110011101101101001011010011000000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr1_x(BLACKBOX,481)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000a6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist130_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr1_x_out_primWireOut_1(DELAY,1131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist130_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist130_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,896)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000010000000001110001011010010100110001100000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr1_x(BLACKBOX,493)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000e6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist126_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr1_x_out_primWireOut_1(DELAY,1127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist126_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist126_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4574993709048791040290(CONSTANT,46)
    assign c_i64_4574993709048791040290_q = $unsigned(64'b1100000010000010010110110111011000000010100000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr1_x(BLACKBOX,505)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000i6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr1_x (
        .in_0(c_i64_4574993709048791040290_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist122_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr1_x_out_primWireOut_1(DELAY,1123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist122_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist122_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4593218949054726144292(CONSTANT,66)
    assign c_i64_4593218949054726144292_q = $unsigned(64'b1100000001000001100110111011001110100110000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr1_x(BLACKBOX,523)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000o6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr1_x (
        .in_0(c_i64_4593218949054726144292_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist115_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr1_x_out_primWireOut_1(DELAY,1116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist115_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist115_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt175_dfr221(SELECTOR,179)@219 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt175_dfr221_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt175_dfr221_q <= redist119_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_1_q;
            if (dupName_94_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt175_dfr221_q <= redist130_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i652_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_93_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt175_dfr221_q <= redist126_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i634_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_92_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt175_dfr221_q <= redist122_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i616_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_91_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt175_dfr221_q <= redist115_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i598_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_119_comparator_x(LOGICAL,400)@46 + 1
    assign dupName_119_comparator_x_qi = $unsigned(i_sel_shr182_dfr223_vt_join_q == c_i32_4379_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_119_comparator_x_delay ( .xin(dupName_119_comparator_x_qi), .xout(dupName_119_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist152_dupName_119_comparator_x_q_174(DELAY,1153)
    dspba_delay_ver #( .width(1), .depth(173), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist152_dupName_119_comparator_x_q_174 ( .xin(dupName_119_comparator_x_q), .xout(redist152_dupName_119_comparator_x_q_174_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4588583769581027328294(CONSTANT,60)
    assign c_i64_4588583769581027328294_q = $unsigned(64'b1100000001010010000100110101111101111000000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr1_x(BLACKBOX,535)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000s6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr1_x (
        .in_0(c_i64_4588583769581027328294_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist111_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr1_x_out_primWireOut_1(DELAY,1112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist111_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist111_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4591785808981131264296(CONSTANT,63)
    assign c_i64_4591785808981131264296_q = $unsigned(64'b1100000001000110101100110010001010010011000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr1_x(BLACKBOX,547)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000w6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr1_x (
        .in_0(c_i64_4591785808981131264296_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist107_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr1_x_out_primWireOut_1(DELAY,1108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist107_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist107_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,907)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000001010011101000101110000111110010000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr1_x(BLACKBOX,559)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00106uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist103_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr1_x_out_primWireOut_1(DELAY,1104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist103_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist103_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4567927017785786368300(CONSTANT,40)
    assign c_i64_4567927017785786368300_q = $unsigned(64'b1100000010011011011101101001010001001000111110000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr1_x(BLACKBOX,571)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00146uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr1_x (
        .in_0(c_i64_4567927017785786368300_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist99_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr1_x_out_primWireOut_1(DELAY,1100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist99_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist99_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt169_dfr220(SELECTOR,178)@219 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt169_dfr220_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt169_dfr220_q <= redist119_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_1_q;
            if (dupName_94_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt169_dfr220_q <= redist111_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i580_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_93_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt169_dfr220_q <= redist107_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i562_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_92_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt169_dfr220_q <= redist103_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i544_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_91_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt169_dfr220_q <= redist99_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i526_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_118_comparator_x(LOGICAL,399)@46 + 1
    assign dupName_118_comparator_x_qi = $unsigned(i_sel_shr182_dfr223_vt_join_q == c_i32_3380_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_118_comparator_x_delay ( .xin(dupName_118_comparator_x_qi), .xout(dupName_118_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist153_dupName_118_comparator_x_q_174(DELAY,1154)
    dspba_delay_ver #( .width(1), .depth(173), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist153_dupName_118_comparator_x_q_174 ( .xin(dupName_118_comparator_x_q), .xout(redist153_dupName_118_comparator_x_q_174_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4585146200356814848302(CONSTANT,55)
    assign c_i64_4585146200356814848302_q = $unsigned(64'b1100000001011110010010011101001011101100100000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr1_x(BLACKBOX,589)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001a6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr1_x (
        .in_0(c_i64_4585146200356814848302_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist93_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr1_x_out_primWireOut_1(DELAY,1094)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist93_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4566670446731198464304(CONSTANT,39)
    assign c_i64_4566670446731198464304_q = $unsigned(64'b1100000010011111111011010110110010001000010100000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr1_x(BLACKBOX,601)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001e6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr1_x (
        .in_0(c_i64_4566670446731198464304_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist89_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr1_x_out_primWireOut_1(DELAY,1090)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist89_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4618495171881705472306(CONSTANT,100)
    assign c_i64_4618495171881705472306_q = $unsigned(64'b1011111111100111110011110001110001101011001000100110000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr1_x(BLACKBOX,613)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001i6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr1_x (
        .in_0(c_i64_4618495171881705472306_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist85_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr1_x_out_primWireOut_1(DELAY,1086)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist85_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,918)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000001000101010110000101001110000000000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr1_x(BLACKBOX,625)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001m6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist81_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr1_x_out_primWireOut_1(DELAY,1082)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist81_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt163_dfr219(SELECTOR,177)@219 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt163_dfr219_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt163_dfr219_q <= redist119_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_1_q;
            if (dupName_94_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt163_dfr219_q <= redist93_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i508_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_93_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt163_dfr219_q <= redist89_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i490_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_92_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt163_dfr219_q <= redist85_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i472_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_91_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt163_dfr219_q <= redist81_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i454_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_117_comparator_x(LOGICAL,398)@46 + 1
    assign dupName_117_comparator_x_qi = $unsigned(i_sel_shr182_dfr223_vt_join_q == c_i32_2270_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_117_comparator_x_delay ( .xin(dupName_117_comparator_x_qi), .xout(dupName_117_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist154_dupName_117_comparator_x_q_174(DELAY,1155)
    dspba_delay_ver #( .width(1), .depth(173), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist154_dupName_117_comparator_x_q_174 ( .xin(dupName_117_comparator_x_q), .xout(redist154_dupName_117_comparator_x_q_174_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4572504793779535872310(CONSTANT,42)
    assign c_i64_4572504793779535872310_q = $unsigned(64'b1100000010001011001100110001110111000001000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr1_x(BLACKBOX,637)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001q6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr1_x (
        .in_0(c_i64_4572504793779535872310_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist77_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr1_x_out_primWireOut_1(DELAY,1078)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist77_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4587642048449871872312(CONSTANT,57)
    assign c_i64_4587642048449871872312_q = $unsigned(64'b1100000001010101011010111101110100000001100000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr1_x(BLACKBOX,655)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001w6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr1_x (
        .in_0(c_i64_4587642048449871872312_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist71_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr1_x_out_primWireOut_1(DELAY,1072)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist71_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4573537256781905920314(CONSTANT,43)
    assign c_i64_4573537256781905920314_q = $unsigned(64'b1100000010000111100010000001100010111010100000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr1_x(BLACKBOX,667)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00206uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr1_x (
        .in_0(c_i64_4573537256781905920314_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist67_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr1_x_out_primWireOut_1(DELAY,1068)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist67_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4586226050949709824316(CONSTANT,56)
    assign c_i64_4586226050949709824316_q = $unsigned(64'b1100000001011010011100111011010010011101100000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr1_x(BLACKBOX,679)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00246uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr1_x (
        .in_0(c_i64_4586226050949709824316_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist63_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr1_x_out_primWireOut_1(DELAY,1064)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist63_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt157_dfr218(SELECTOR,176)@219 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt157_dfr218_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt157_dfr218_q <= redist119_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_1_q;
            if (dupName_94_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt157_dfr218_q <= redist77_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i436_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_93_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt157_dfr218_q <= redist71_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i418_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_92_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt157_dfr218_q <= redist67_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i400_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_91_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt157_dfr218_q <= redist63_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i382_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_116_comparator_x(LOGICAL,397)@46 + 1
    assign dupName_116_comparator_x_qi = $unsigned(i_sel_shr182_dfr223_vt_join_q == c_i32_1382_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_116_comparator_x_delay ( .xin(dupName_116_comparator_x_qi), .xout(dupName_116_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist155_dupName_116_comparator_x_q_174(DELAY,1156)
    dspba_delay_ver #( .width(1), .depth(173), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist155_dupName_116_comparator_x_q_174 ( .xin(dupName_116_comparator_x_q), .xout(redist155_dupName_116_comparator_x_q_174_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4579409278221156352318(CONSTANT,51)
    assign c_i64_4579409278221156352318_q = $unsigned(64'b1100000001110010101010111000011000110010100000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr1_x(BLACKBOX,691)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00286uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr1_x (
        .in_0(c_i64_4579409278221156352318_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist59_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr1_x_out_primWireOut_1(DELAY,1060)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist59_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,926)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000001001111100010011000010111001001000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr1_x(BLACKBOX,703)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002c6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist55_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr1_x_out_primWireOut_1(DELAY,1056)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist55_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4584052599969284096322(CONSTANT,53)
    assign c_i64_4584052599969284096322_q = $unsigned(64'b1100000001100010001011000111001010011011001000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr1_x(BLACKBOX,721)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002i6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr1_x (
        .in_0(c_i64_4584052599969284096322_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist49_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr1_x_out_primWireOut_1(DELAY,1050)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist49_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,939)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000010000101010111010110111011010010000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr1_x(BLACKBOX,760)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002v6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr1_x_out_primWireOut_1(DELAY,1035)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist34_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt151_dfr217(SELECTOR,175)@219 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt151_dfr217_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt151_dfr217_q <= redist119_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_1_q;
            if (dupName_94_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt151_dfr217_q <= redist59_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i364_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_93_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt151_dfr217_q <= redist55_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i346_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_92_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt151_dfr217_q <= redist49_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i328_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_91_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt151_dfr217_q <= redist34_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i310_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_115_comparator_x(LOGICAL,396)@46 + 1
    assign dupName_115_comparator_x_qi = $unsigned(i_sel_shr182_dfr223_vt_join_q == c_i32_0377_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_115_comparator_x_delay ( .xin(dupName_115_comparator_x_qi), .xout(dupName_115_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist156_dupName_115_comparator_x_q_174(DELAY,1157)
    dspba_delay_ver #( .width(1), .depth(173), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist156_dupName_115_comparator_x_q_174 ( .xin(dupName_115_comparator_x_q), .xout(redist156_dupName_115_comparator_x_q_174_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt190_dfr225(SELECTOR,191)@220 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt190_dfr225_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt190_dfr225_q <= redist120_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i742_dfr1_x_out_primWireOut_2_q;
            if (redist151_dupName_120_comparator_x_q_174_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt190_dfr225_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt181_dfr222_q;
            end
            if (redist152_dupName_119_comparator_x_q_174_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt190_dfr225_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt175_dfr221_q;
            end
            if (redist153_dupName_118_comparator_x_q_174_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt190_dfr225_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt169_dfr220_q;
            end
            if (redist154_dupName_117_comparator_x_q_174_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt190_dfr225_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt163_dfr219_q;
            end
            if (redist155_dupName_116_comparator_x_q_174_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt190_dfr225_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt157_dfr218_q;
            end
            if (redist156_dupName_115_comparator_x_q_174_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt190_dfr225_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt151_dfr217_q;
            end
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x(BLACKBOX,814)@221
    // out out_primWireOut@229
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260005226123642i229742iyc5 thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x (
        .in_0(i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt190_dfr225_q),
        .in_1(redist31_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_inputreg0(DELAY,1198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_inputreg0_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_inputreg0_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut);
        end
    end

    // redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_wraddr(REG,1202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_wraddr_q <= $unsigned(5'b10011);
        end
        else
        begin
            redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_wraddr_q <= $unsigned(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_q);
        end
    end

    // redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem(DUALMEM,1200)
    assign redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_ia = $unsigned(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_inputreg0_q);
    assign redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_aa = redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_wraddr_q;
    assign redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_ab = redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_rdcnt_q;
    assign redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(26),
        .widthad_a(5),
        .numwords_a(20),
        .width_b(26),
        .widthad_b(5),
        .numwords_b(20),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_dmem (
        .clocken1(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_reset0),
        .clock1(clock),
        .address_a(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_aa),
        .data_a(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_ab),
        .q_b(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_q = redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_iq[25:0];

    // redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_outputreg0(DELAY,1199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_outputreg0_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_outputreg0_q <= $unsigned(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_mem_q);
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr1_x(BLACKBOX,794)@56
    // out out_primWireOut@64
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260004b0c2463a0054c2a6355y thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr1_x (
        .in_0(redist36_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i190_dfr1_x_out_primWireOut_1_q),
        .in_1(i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_o_readdata_1_tpl),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr1_x_out_primWireOut_1(DELAY,1025)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,940)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111010010010111111101000110010100010110011010011101111010);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x(BLACKBOX,763)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002w6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_1(DELAY,1033)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut);
        end
    end

    // redist33_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_2(DELAY,1034)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_2_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_2_q <= $unsigned(redist32_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_1_q);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,899)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111011000111101001011010001000010110101111000000010010000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr1_x(BLACKBOX,514)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000l6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist118_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr1_x_out_primWireOut_1(DELAY,1119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist118_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist118_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr1_x_out_primWireOut);
        end
    end

    // dupName_2_comparator_x(LOGICAL,283)@44 + 1
    assign dupName_2_comparator_x_qi = $unsigned(i_sel_bits_dfr151_vt_join_q == c_i32_0377_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_2_comparator_x_delay ( .xin(dupName_2_comparator_x_qi), .xout(dupName_2_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i26_i32_v1i32_s_case_assign_struct_dfr_fpgaunique_21s_case_stmt40_dfr158(SELECTOR,166)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v1i32_s_case_assign_struct_dfr_fpgaunique_21s_case_stmt40_dfr158_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v1i32_s_case_assign_struct_dfr_fpgaunique_21s_case_stmt40_dfr158_q <= redist32_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_1_q;
            if (dupName_2_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v1i32_s_case_assign_struct_dfr_fpgaunique_21s_case_stmt40_dfr158_q <= redist118_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i25_i_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // c_i64_4623373111882354566329(CONSTANT,107)
    assign c_i64_4623373111882354566329_q = $unsigned(64'b1011111111010110011110101010011010000010001010001111000001111010);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr1_x(BLACKBOX,646)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001t6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr1_x (
        .in_0(c_i64_4623373111882354566329_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist74_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr1_x_out_primWireOut_1(DELAY,1075)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist74_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr1_x_out_primWireOut);
        end
    end

    // dupName_1_comparator_x(LOGICAL,281)@44 + 1
    assign dupName_1_comparator_x_qi = $unsigned(i_sel_bits_dfr151_vt_join_q == c_i32_6378_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_1_comparator_x_delay ( .xin(dupName_1_comparator_x_qi), .xout(dupName_1_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,932)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111011110110010111110011001001000000001010100010101011100);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr1_x(BLACKBOX,736)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002n6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist43_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr1_x_out_primWireOut_1(DELAY,1044)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist43_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr1_x_out_primWireOut);
        end
    end

    // dupName_0_comparator_x(LOGICAL,278)@44 + 1
    assign dupName_0_comparator_x_qi = $unsigned(i_sel_bits_dfr151_vt_join_q == c_i32_4379_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_0_comparator_x_delay ( .xin(dupName_0_comparator_x_qi), .xout(dupName_0_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4620958142920377032333(CONSTANT,101)
    assign c_i64_4620958142920377032333_q = $unsigned(64'b1011111111011111000011110000110101001001010010000011110100111000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr1_x(BLACKBOX,460)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00036uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr1_x (
        .in_0(c_i64_4620958142920377032333_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist137_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr1_x_out_primWireOut_1(DELAY,1138)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist137_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist137_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr1_x_out_primWireOut);
        end
    end

    // comparator(LOGICAL,146)@44 + 1
    assign comparator_qi = $unsigned(i_sel_bits_dfr151_vt_join_q == c_i32_2270_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    comparator_delay ( .xin(comparator_qi), .xout(comparator_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,891)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111011011010110101110100111100100101111100001100111000110);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr1_x(BLACKBOX,472)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00076uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist133_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr1_x_out_primWireOut_1(DELAY,1134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist133_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist133_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt37_dfr157(SELECTOR,184)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt37_dfr157_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt37_dfr157_q <= redist32_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_1_q;
            if (dupName_1_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt37_dfr157_q <= redist74_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i57_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_0_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt37_dfr157_q <= redist43_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i89_i_dfr1_x_out_primWireOut_1_q;
            end
            if (comparator_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt37_dfr157_q <= redist137_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i121_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_2_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt37_dfr157_q <= redist133_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i153_i_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // c_i64_4622763659939795274337(CONSTANT,106)
    assign c_i64_4622763659939795274337_q = $unsigned(64'b1011111111011000101001001111000110011000101101000010111010110110);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr1_x(BLACKBOX,484)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000b6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr1_x (
        .in_0(c_i64_4622763659939795274337_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist129_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr1_x_out_primWireOut_1(DELAY,1130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist129_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist129_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,897)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111001011000001101011101011010101110111111110100011011100);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr1_x(BLACKBOX,496)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000f6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist125_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr1_x_out_primWireOut_1(DELAY,1126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist125_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist125_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4632557922030970040341(CONSTANT,121)
    assign c_i64_4632557922030970040341_q = $unsigned(64'b1011111110110101110110010001110100111111111011000001101101001000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr1_x(BLACKBOX,508)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000j6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr1_x (
        .in_0(c_i64_4632557922030970040341_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist121_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr1_x_out_primWireOut_1(DELAY,1122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist121_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist121_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,902)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111110011110000001000000000111000101101011100101001111100000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr1_x(BLACKBOX,526)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000p6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist114_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr1_x_out_primWireOut_1(DELAY,1115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist114_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist114_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt31_dfr156(SELECTOR,183)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt31_dfr156_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt31_dfr156_q <= redist32_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_1_q;
            if (dupName_1_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt31_dfr156_q <= redist129_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i185_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_0_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt31_dfr156_q <= redist125_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i217_i_dfr1_x_out_primWireOut_1_q;
            end
            if (comparator_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt31_dfr156_q <= redist121_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i249_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_2_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt31_dfr156_q <= redist114_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i281_i_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,903)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111010000011111101010000100100000011101010110111111100110);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr1_x(BLACKBOX,538)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000t6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist110_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr1_x_out_primWireOut_1(DELAY,1111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist110_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist110_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,905)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111011100101110110111111001000000011001101010001111110100);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr1_x(BLACKBOX,550)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000x6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist106_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr1_x_out_primWireOut_1(DELAY,1107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist106_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist106_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,908)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111110111110110001100100111100001100111100100000000000001000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr1_x(BLACKBOX,562)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00116uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist102_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr1_x_out_primWireOut_1(DELAY,1103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist102_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist102_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4676056019505479680351(CONSTANT,143)
    assign c_i64_4676056019505479680351_q = $unsigned(64'b1011111100011011010011111101001100110111100011001000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr1_x(BLACKBOX,574)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00156uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr1_x (
        .in_0(c_i64_4676056019505479680351_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist98_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr1_x_out_primWireOut_1(DELAY,1099)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist98_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist98_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt25_dfr155(SELECTOR,182)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt25_dfr155_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt25_dfr155_q <= redist32_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_1_q;
            if (dupName_1_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt25_dfr155_q <= redist110_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i313_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_0_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt25_dfr155_q <= redist106_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i345_i_dfr1_x_out_primWireOut_1_q;
            end
            if (comparator_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt25_dfr155_q <= redist102_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i377_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_2_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt25_dfr155_q <= redist98_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i409_i_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // c_i64_4634618658257228928353(CONSTANT,125)
    assign c_i64_4634618658257228928353_q = $unsigned(64'b1011111110101110100001101110001010110101001011100010101110000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr1_x(BLACKBOX,592)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001b6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr1_x (
        .in_0(c_i64_4634618658257228928353_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist92_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr1_x_out_primWireOut_1(DELAY,1093)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist92_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist92_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,915)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111000000100001101001110110101100010000010100100111000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr1_x(BLACKBOX,604)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001f6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist88_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr1_x_out_primWireOut_1(DELAY,1089)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist88_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4629344098196011112357(CONSTANT,116)
    assign c_i64_4629344098196011112357_q = $unsigned(64'b1011111111000001010001000001000111101011111110011100011110011000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr1_x(BLACKBOX,616)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001j6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr1_x (
        .in_0(c_i64_4629344098196011112357_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist84_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr1_x_out_primWireOut_1(DELAY,1085)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist84_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4624287368398568514359(CONSTANT,110)
    assign c_i64_4624287368398568514359_q = $unsigned(64'b1011111111010011001110110010001110010011010001110000001110111110);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr1_x(BLACKBOX,628)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001n6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr1_x (
        .in_0(c_i64_4624287368398568514359_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist80_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr1_x_out_primWireOut_1(DELAY,1081)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist80_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt19_dfr154(SELECTOR,181)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt19_dfr154_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt19_dfr154_q <= redist32_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_1_q;
            if (dupName_1_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt19_dfr154_q <= redist92_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i441_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_0_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt19_dfr154_q <= redist88_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i473_i_dfr1_x_out_primWireOut_1_q;
            end
            if (comparator_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt19_dfr154_q <= redist84_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i505_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_2_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt19_dfr154_q <= redist80_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i537_i_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // c_i64_4626951280394440864361(CONSTANT,114)
    assign c_i64_4626951280394440864361_q = $unsigned(64'b1011111111001001110001000101001100111011000011001110111101100000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr1_x(BLACKBOX,640)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001r6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr1_x (
        .in_0(c_i64_4626951280394440864361_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist76_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr1_x_out_primWireOut_1(DELAY,1077)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist76_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4622328079211860956363(CONSTANT,104)
    assign c_i64_4622328079211860956363_q = $unsigned(64'b1011111111011010001100010001101000100011010000110110110000100100);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr1_x(BLACKBOX,658)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001x6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr1_x (
        .in_0(c_i64_4622328079211860956363_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist70_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr1_x_out_primWireOut_1(DELAY,1071)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist70_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4631829851413803440365(CONSTANT,119)
    assign c_i64_4631829851413803440365_q = $unsigned(64'b1011111110111000011011110100101001100110011011100000111001010000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr1_x(BLACKBOX,670)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00216uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr1_x (
        .in_0(c_i64_4631829851413803440365_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist66_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr1_x_out_primWireOut_1(DELAY,1067)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist66_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4624848098348049492367(CONSTANT,111)
    assign c_i64_4624848098348049492367_q = $unsigned(64'b1011111111010001001111010010100001110101110100101101101110101100);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr1_x(BLACKBOX,682)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00256uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr1_x (
        .in_0(c_i64_4624848098348049492367_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist62_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr1_x_out_primWireOut_1(DELAY,1063)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist62_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt13_dfr153(SELECTOR,174)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt13_dfr153_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt13_dfr153_q <= redist32_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_1_q;
            if (dupName_1_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt13_dfr153_q <= redist76_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i569_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_0_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt13_dfr153_q <= redist70_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i601_i_dfr1_x_out_primWireOut_1_q;
            end
            if (comparator_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt13_dfr153_q <= redist66_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i633_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_2_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt13_dfr153_q <= redist62_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i665_i_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // c_i64_4636054364303677248369(CONSTANT,128)
    assign c_i64_4636054364303677248369_q = $unsigned(64'b1011111110101001011011010001111001011000010001111010100011000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr1_x(BLACKBOX,694)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00296uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr1_x (
        .in_0(c_i64_4636054364303677248369_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist58_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr1_x_out_primWireOut_1(DELAY,1059)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist58_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4628299511403768820371(CONSTANT,115)
    assign c_i64_4628299511403768820371_q = $unsigned(64'b1011111111000100111110100001110110111100101010100001010000001100);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr1_x(BLACKBOX,706)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002d6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr1_x (
        .in_0(c_i64_4628299511403768820371_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist54_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr1_x_out_primWireOut_1(DELAY,1055)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist54_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,930)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0011111111011000000110000101000101010000101100101010101100000110);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr1_x(BLACKBOX,724)@44
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002j6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist48_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr1_x_out_primWireOut_1(DELAY,1049)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist48_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt_dfr152(SELECTOR,168)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt_dfr152_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt_dfr152_q <= redist32_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_1_q;
            if (dupName_1_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt_dfr152_q <= redist58_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i697_i_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_0_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt_dfr152_q <= redist54_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i729_i_dfr1_x_out_primWireOut_1_q;
            end
            if (comparator_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt_dfr152_q <= redist48_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i761_i_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt49_dfr161(SELECTOR,194)@46 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt49_dfr161_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt49_dfr161_q <= redist33_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i_dfr1_x_out_primWireOut_2_q;
            if (dupName_29_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt49_dfr161_q <= i_llvm_fpga_case_i26_i32_v1i32_s_case_assign_struct_dfr_fpgaunique_21s_case_stmt40_dfr158_q;
            end
            if (dupName_28_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt49_dfr161_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt37_dfr157_q;
            end
            if (dupName_27_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt49_dfr161_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt31_dfr156_q;
            end
            if (dupName_26_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt49_dfr161_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt25_dfr155_q;
            end
            if (dupName_25_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt49_dfr161_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt19_dfr154_q;
            end
            if (dupName_24_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt49_dfr161_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt13_dfr153_q;
            end
            if (dupName_23_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt49_dfr161_q <= i_llvm_fpga_case_i26_i32_v3i32_s_case_assign_struct_dfr_fpgaunique_15s_case_stmt_dfr152_q;
            end
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr1_x(BLACKBOX,810)@47
    // out out_primWireOut@55
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260006b0c2463a0054c2a6355y thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr1_x (
        .in_0(i_llvm_fpga_case_i26_i32_v7i32_s_case_assign_struct_dfr_fpgaunique_7s_case_stmt49_dfr161_q),
        .in_1(redist13_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr0_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr1_x_out_primWireOut_1(DELAY,1021)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr1_x(BLACKBOX,802)@56
    // out out_primWireOut@64
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260005b0c2463a0054c2a6355y thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr1_x (
        .in_0(redist35_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i201_dfr1_x_out_primWireOut_1_q),
        .in_1(redist20_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i237_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr1_x_out_primWireOut_1(DELAY,1023)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x(BLACKBOX,435)@65
    // out out_primWireOut@86
    dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i2600023a0054c2a6344c246w65 thei_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x (
        .in_0(redist22_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i216_dfr1_x_out_primWireOut_1_q),
        .in_1(redist24_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i197_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist144_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_1(DELAY,1145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist144_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist144_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr1_x(BLACKBOX,786)@87
    // out out_primWireOut@95
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260003b0c2463a0054c2a6355y thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr1_x (
        .in_0(redist37_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i168_dfr1_x_out_primWireOut_1_q),
        .in_1(redist144_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr1_x_out_primWireOut_1(DELAY,1027)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr1_x(BLACKBOX,834)@96
    // in in_1@126
    // out out_primWireOut@162
    dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i2600000ju20cp0jo00uq0dpjiz thei_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr1_x (
        .in_0(redist26_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i157_dfr1_x_out_primWireOut_1_q),
        .in_1(redist142_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i159_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr1_x_out_primWireOut_1(DELAY,1015)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr1_x(BLACKBOX,778)@163
    // out out_primWireOut@171
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260002b0c2463a0054c2a6355y thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr1_x (
        .in_0(redist39_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i139_dfr1_x_out_primWireOut_1_q),
        .in_1(redist14_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr0_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr1_x_out_primWireOut_1(DELAY,1029)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr1_x(BLACKBOX,427)@172
    // out out_primWireOut@193
    dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i2600013a0054c2a6344c246w65 thei_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr1_x (
        .in_0(redist38_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i_i148_dfr1_x_out_primWireOut_1_q),
        .in_1(redist28_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i125_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist148_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr1_x_out_primWireOut_1(DELAY,1149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist148_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist148_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr1_x_out_primWireOut);
        end
    end

    // redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_notEnable(LOGICAL,1218)
    assign redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_notEnable_q = $unsigned(~ (VCC_q));

    // redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_nor(LOGICAL,1219)
    assign redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_nor_q = ~ (redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_notEnable_q | redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_sticky_ena_q);

    // redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_last(CONSTANT,1215)
    assign redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_last_q = $unsigned(8'b01100111);

    // redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_cmp(LOGICAL,1216)
    assign redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_cmp_b = {1'b0, redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_q};
    assign redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_cmp_q = $unsigned(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_last_q == redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_cmp_b ? 1'b1 : 1'b0);

    // redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_cmpReg(REG,1217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_cmpReg_q <= $unsigned(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_cmp_q);
        end
    end

    // redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_sticky_ena(REG,1220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_nor_q == 1'b1)
        begin
            redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_sticky_ena_q <= $unsigned(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_cmpReg_q);
        end
    end

    // redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_enaAnd(LOGICAL,1221)
    assign redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_enaAnd_q = redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_sticky_ena_q & VCC_q;

    // redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt(COUNTER,1213)
    // low=0, high=104, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_i <= 7'd0;
            redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_i == 7'd103)
            begin
                redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_eq <= 1'b0;
            end
            if (redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_eq == 1'b1)
            begin
                redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_i <= $unsigned(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_i) + $unsigned(7'd24);
            end
            else
            begin
                redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_i <= $unsigned(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_i) + $unsigned(7'd1);
            end
        end
    end
    assign redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_q = redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_i[6:0];

    // redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_inputreg0(DELAY,1210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_inputreg0_q <= '0;
        end
        else
        begin
            redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_inputreg0_q <= $unsigned(redist144_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_1_q);
        end
    end

    // redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_wraddr(REG,1214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_wraddr_q <= $unsigned(7'b1101000);
        end
        else
        begin
            redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_wraddr_q <= $unsigned(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_q);
        end
    end

    // redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem(DUALMEM,1212)
    assign redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_ia = $unsigned(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_inputreg0_q);
    assign redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_aa = redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_wraddr_q;
    assign redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_ab = redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_rdcnt_q;
    assign redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(26),
        .widthad_a(7),
        .numwords_a(105),
        .width_b(26),
        .widthad_b(7),
        .numwords_b(105),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_dmem (
        .clocken1(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_reset0),
        .clock1(clock),
        .address_a(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_aa),
        .data_a(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_ab),
        .q_b(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_q = redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_iq[25:0];

    // redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_outputreg0(DELAY,1211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_outputreg0_q <= '0;
        end
        else
        begin
            redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_outputreg0_q <= $unsigned(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_mem_q);
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr1_x(BLACKBOX,826)@195
    // out out_primWireOut@203
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260008b0c2463a0054c2a6355y thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr1_x (
        .in_0(redist141_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i_i179_dfr1_x_out_primWireOut_1_q),
        .in_1(redist145_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr1_x_out_primWireOut_109_outputreg0_q),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr1_x_out_primWireOut_1(DELAY,1017)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr1_x(BLACKBOX,770)@194
    // in in_0@204
    // out out_primWireOut@220
    dfr_flt_i_llvm_fpga_vpfp_div_i26_i26_i260002b0c2463a0054c2a6355y thei_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr1_x (
        .in_0(redist16_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i87_dfr1_x_out_primWireOut_1_q),
        .in_1(redist148_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i106_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr1_x_out_primWireOut_1(DELAY,1031)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4597680138665066496273(CONSTANT,75)
    assign c_i64_4597680138665066496273_q = $unsigned(64'b1100000000110001110000100100011000000000000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x(BLACKBOX,739)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002o6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x (
        .in_0(c_i64_4597680138665066496273_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist41_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_1(DELAY,1042)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist41_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut);
        end
    end

    // redist42_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_2(DELAY,1043)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_2_q <= '0;
        end
        else
        begin
            redist42_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_2_q <= $unsigned(redist41_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_1_q);
        end
    end

    // c_i64_4592226967503241216275(CONSTANT,65)
    assign c_i64_4592226967503241216275_q = $unsigned(64'b1100000001000101001000011110011101011010000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr1_x(BLACKBOX,577)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00166uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr1_x (
        .in_0(c_i64_4592226967503241216275_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist97_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr1_x_out_primWireOut_1(DELAY,1098)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist97_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist97_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr1_x_out_primWireOut);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_notEnable(LOGICAL,1267)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_nor(LOGICAL,1316)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_nor_q = ~ (redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_notEnable_q | redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_sticky_ena_q);

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_last(CONSTANT,1264)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_last_q = $unsigned(6'b011100);

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmp(LOGICAL,1265)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmp_b = {1'b0, redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_q};
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmp_q = $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_last_q == redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_cmpReg(REG,1314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_cmpReg_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmp_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_sticky_ena(REG,1317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_nor_q == 1'b1)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_sticky_ena_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_cmpReg_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_enaAnd(LOGICAL,1318)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_enaAnd_q = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_sticky_ena_q & VCC_q;

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt(COUNTER,1262)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_i <= 5'd0;
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_i == 5'd28)
            begin
                redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_eq == 1'b1)
            begin
                redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_i <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_i <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_q = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_i[4:0];

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_nor(LOGICAL,1304)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_nor_q = ~ (redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_notEnable_q | redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_sticky_ena_q);

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_cmpReg(REG,1302)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_cmpReg_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmp_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_sticky_ena(REG,1305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_nor_q == 1'b1)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_sticky_ena_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_cmpReg_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_enaAnd(LOGICAL,1306)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_enaAnd_q = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_sticky_ena_q & VCC_q;

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_nor(LOGICAL,1292)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_nor_q = ~ (redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_notEnable_q | redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_sticky_ena_q);

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_cmpReg(REG,1290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_cmpReg_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmp_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_sticky_ena(REG,1293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_nor_q == 1'b1)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_sticky_ena_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_cmpReg_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_enaAnd(LOGICAL,1294)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_enaAnd_q = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_sticky_ena_q & VCC_q;

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_nor(LOGICAL,1280)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_nor_q = ~ (redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_notEnable_q | redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_sticky_ena_q);

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_cmpReg(REG,1278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_cmpReg_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmp_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_sticky_ena(REG,1281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_nor_q == 1'b1)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_sticky_ena_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_cmpReg_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_enaAnd(LOGICAL,1282)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_enaAnd_q = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_sticky_ena_q & VCC_q;

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_nor(LOGICAL,1268)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_nor_q = ~ (redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_notEnable_q | redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_sticky_ena_q);

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmpReg(REG,1266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmpReg_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmp_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_sticky_ena(REG,1269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_nor_q == 1'b1)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_sticky_ena_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_cmpReg_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_enaAnd(LOGICAL,1270)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_enaAnd_q = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_sticky_ena_q & VCC_q;

    // c_i32_49384(CONSTANT,33)
    assign c_i32_49384_q = $unsigned(32'b00000000000000000000000000110001);

    // i_sub_dfr164(SUB,262)@45
    assign i_sub_dfr164_a = {1'b0, c_i32_49384_q};
    assign i_sub_dfr164_b = {1'b0, redist172_i_llvm_fpga_pop_i32_node_idx_01431_pop14_dfr150_out_data_out_2_q};
    assign i_sub_dfr164_o = $unsigned(i_sub_dfr164_a) - $unsigned(i_sub_dfr164_b);
    assign i_sub_dfr164_q = i_sub_dfr164_o[32:0];

    // bgTrunc_i_sub_dfr164_sel_x(BITSELECT,274)@45
    assign bgTrunc_i_sub_dfr164_sel_x_b = $unsigned(i_sub_dfr164_q[31:0]);

    // i_sel_bits51_dfr181(LOGICAL,238)@45
    assign i_sel_bits51_dfr181_q = bgTrunc_i_sub_dfr164_sel_x_b & c_i32_7387_q;

    // i_sel_bits51_dfr181_vt_select_2(BITSELECT,241)@45
    assign i_sel_bits51_dfr181_vt_select_2_b = i_sel_bits51_dfr181_q[2:0];

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_inputreg0(DELAY,1259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_inputreg0_q <= $unsigned(i_sel_bits51_dfr181_vt_select_2_b);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem(DUALMEM,1261)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_ia = $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_inputreg0_q);
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_aa = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_wraddr_q;
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_ab = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_q;
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(3),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(3),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_dmem (
        .clocken1(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_aa),
        .data_a(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_ab),
        .q_b(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_q = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_iq[2:0];

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_outputreg0(DELAY,1260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_outputreg0_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_mem_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_inputreg0(DELAY,1271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_inputreg0_q <= '0;
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_inputreg0_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_outputreg0_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem(DUALMEM,1273)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_ia = $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_inputreg0_q);
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_aa = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_wraddr_q;
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_ab = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_q;
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(3),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(3),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_dmem (
        .clocken1(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_reset0),
        .clock1(clock),
        .address_a(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_aa),
        .data_a(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_ab),
        .q_b(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_q = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_iq[2:0];

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_outputreg0(DELAY,1272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_outputreg0_q <= '0;
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_outputreg0_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_mem_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_inputreg0(DELAY,1283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_inputreg0_q <= '0;
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_inputreg0_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_1_outputreg0_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem(DUALMEM,1285)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_ia = $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_inputreg0_q);
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_aa = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_wraddr_q;
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_ab = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_q;
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(3),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(3),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_dmem (
        .clocken1(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_reset0),
        .clock1(clock),
        .address_a(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_aa),
        .data_a(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_ab),
        .q_b(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_q = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_iq[2:0];

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_outputreg0(DELAY,1284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_outputreg0_q <= '0;
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_outputreg0_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_mem_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_inputreg0(DELAY,1295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_inputreg0_q <= '0;
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_inputreg0_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_2_outputreg0_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem(DUALMEM,1297)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_ia = $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_inputreg0_q);
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_aa = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_wraddr_q;
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_ab = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_q;
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(3),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(3),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_dmem (
        .clocken1(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_reset0),
        .clock1(clock),
        .address_a(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_aa),
        .data_a(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_ab),
        .q_b(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_q = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_iq[2:0];

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_outputreg0(DELAY,1296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_outputreg0_q <= '0;
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_outputreg0_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_mem_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_inputreg0(DELAY,1307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_inputreg0_q <= '0;
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_inputreg0_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_3_outputreg0_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_wraddr(REG,1263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_wraddr_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem(DUALMEM,1309)
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_ia = $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_inputreg0_q);
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_aa = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_wraddr_q;
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_ab = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_0_rdcnt_q;
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(3),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(3),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_dmem (
        .clocken1(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_reset0),
        .clock1(clock),
        .address_a(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_aa),
        .data_a(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_ab),
        .q_b(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_q = redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_iq[2:0];

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_outputreg0(DELAY,1308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_outputreg0_q <= '0;
        end
        else
        begin
            redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_outputreg0_q <= $unsigned(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_mem_q);
        end
    end

    // redist165_i_sel_bits51_dfr181_vt_select_2_b_173(DELAY,1166)
    dspba_delay_ver #( .width(3), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist165_i_sel_bits51_dfr181_vt_select_2_b_173 ( .xin(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_split_4_outputreg0_q), .xout(redist165_i_sel_bits51_dfr181_vt_select_2_b_173_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_sel_bits51_dfr181_vt_join(BITJOIN,240)@218
    assign i_sel_bits51_dfr181_vt_join_q = {i_sel_bits146_dfr216_vt_const_31_q, redist165_i_sel_bits51_dfr181_vt_select_2_b_173_q};

    // dupName_33_comparator_x(LOGICAL,314)@218 + 1
    assign dupName_33_comparator_x_qi = $unsigned(i_sel_bits51_dfr181_vt_join_q == c_i32_7387_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_33_comparator_x_delay ( .xin(dupName_33_comparator_x_qi), .xout(dupName_33_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,927)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000010001101100111000001000101010010000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr1_x(BLACKBOX,709)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002e6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist53_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr1_x_out_primWireOut_1(DELAY,1054)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist53_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr1_x_out_primWireOut);
        end
    end

    // dupName_32_comparator_x(LOGICAL,313)@218 + 1
    assign dupName_32_comparator_x_qi = $unsigned(i_sel_bits51_dfr181_vt_join_q == c_i32_5383_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_32_comparator_x_delay ( .xin(dupName_32_comparator_x_qi), .xout(dupName_32_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,888)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000010100101110101000010101100010111010111000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr1_x(BLACKBOX,451)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00006uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist140_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr1_x_out_primWireOut_1(DELAY,1141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist140_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist140_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr1_x_out_primWireOut);
        end
    end

    // dupName_31_comparator_x(LOGICAL,312)@218 + 1
    assign dupName_31_comparator_x_qi = $unsigned(i_sel_bits51_dfr181_vt_join_q == c_i32_3380_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_31_comparator_x_delay ( .xin(dupName_31_comparator_x_qi), .xout(dupName_31_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4575364372418789376281(CONSTANT,47)
    assign c_i64_4575364372418789376281_q = $unsigned(64'b1100000010000001000010100101100000111000000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr1_x(BLACKBOX,463)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00046uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr1_x (
        .in_0(c_i64_4575364372418789376281_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist136_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr1_x_out_primWireOut_1(DELAY,1137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist136_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist136_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr1_x_out_primWireOut);
        end
    end

    // dupName_30_comparator_x(LOGICAL,311)@218 + 1
    assign dupName_30_comparator_x_qi = $unsigned(i_sel_bits51_dfr181_vt_join_q == c_i32_1382_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_30_comparator_x_delay ( .xin(dupName_30_comparator_x_qi), .xout(dupName_30_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt86_dfr187(SELECTOR,190)@219 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt86_dfr187_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt86_dfr187_q <= redist41_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_1_q;
            if (dupName_33_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt86_dfr187_q <= redist97_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i41_i733_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_32_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt86_dfr187_q <= redist53_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i73_i715_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_31_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt86_dfr187_q <= redist140_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i105_i697_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_30_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt86_dfr187_q <= redist136_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i137_i679_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // rightShiftStage1Idx1Rng2_uid982_i_sel_shr87_dfr0_shift_x(BITSELECT,981)@45
    assign rightShiftStage1Idx1Rng2_uid982_i_sel_shr87_dfr0_shift_x_b = rightShiftStage0_uid981_i_sel_shr87_dfr0_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid984_i_sel_shr87_dfr0_shift_x(BITJOIN,983)@45
    assign rightShiftStage1Idx1_uid984_i_sel_shr87_dfr0_shift_x_q = {i_arrayidx10_12_dfr167_vt_const_1_q, rightShiftStage1Idx1Rng2_uid982_i_sel_shr87_dfr0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid977_i_sel_shr87_dfr0_shift_x(BITSELECT,976)@45
    assign rightShiftStage0Idx1Rng1_uid977_i_sel_shr87_dfr0_shift_x_b = bgTrunc_i_sub_dfr164_sel_x_b[31:1];

    // rightShiftStage0Idx1_uid979_i_sel_shr87_dfr0_shift_x(BITJOIN,978)@45
    assign rightShiftStage0Idx1_uid979_i_sel_shr87_dfr0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid977_i_sel_shr87_dfr0_shift_x_b};

    // rightShiftStage0_uid981_i_sel_shr87_dfr0_shift_x(MUX,980)@45
    assign rightShiftStage0_uid981_i_sel_shr87_dfr0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid981_i_sel_shr87_dfr0_shift_x_s or bgTrunc_i_sub_dfr164_sel_x_b or rightShiftStage0Idx1_uid979_i_sel_shr87_dfr0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid981_i_sel_shr87_dfr0_shift_x_s)
            1'b0 : rightShiftStage0_uid981_i_sel_shr87_dfr0_shift_x_q = bgTrunc_i_sub_dfr164_sel_x_b;
            1'b1 : rightShiftStage0_uid981_i_sel_shr87_dfr0_shift_x_q = rightShiftStage0Idx1_uid979_i_sel_shr87_dfr0_shift_x_q;
            default : rightShiftStage0_uid981_i_sel_shr87_dfr0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid986_i_sel_shr87_dfr0_shift_x(MUX,985)@45
    assign rightShiftStage1_uid986_i_sel_shr87_dfr0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid986_i_sel_shr87_dfr0_shift_x_s or rightShiftStage0_uid981_i_sel_shr87_dfr0_shift_x_q or rightShiftStage1Idx1_uid984_i_sel_shr87_dfr0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid986_i_sel_shr87_dfr0_shift_x_s)
            1'b0 : rightShiftStage1_uid986_i_sel_shr87_dfr0_shift_x_q = rightShiftStage0_uid981_i_sel_shr87_dfr0_shift_x_q;
            1'b1 : rightShiftStage1_uid986_i_sel_shr87_dfr0_shift_x_q = rightShiftStage1Idx1_uid984_i_sel_shr87_dfr0_shift_x_q;
            default : rightShiftStage1_uid986_i_sel_shr87_dfr0_shift_x_q = 32'b0;
        endcase
    end

    // i_sel_shr87_dfr188_vt_select_28(BITSELECT,257)@45
    assign i_sel_shr87_dfr188_vt_select_28_b = rightShiftStage1_uid986_i_sel_shr87_dfr0_shift_x_q[28:0];

    // redist164_i_sel_shr87_dfr188_vt_select_28_b_1(DELAY,1165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist164_i_sel_shr87_dfr188_vt_select_28_b_1_q <= '0;
        end
        else
        begin
            redist164_i_sel_shr87_dfr188_vt_select_28_b_1_q <= $unsigned(i_sel_shr87_dfr188_vt_select_28_b);
        end
    end

    // i_sel_shr87_dfr188_vt_join(BITJOIN,256)@46
    assign i_sel_shr87_dfr188_vt_join_q = {i_sel_shr182_dfr223_vt_const_31_q, redist164_i_sel_shr87_dfr188_vt_select_28_b_1_q};

    // dupName_59_comparator_x(LOGICAL,340)@46 + 1
    assign dupName_59_comparator_x_qi = $unsigned(i_sel_shr87_dfr188_vt_join_q == c_i32_5383_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_59_comparator_x_delay ( .xin(dupName_59_comparator_x_qi), .xout(dupName_59_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist157_dupName_59_comparator_x_q_174(DELAY,1158)
    dspba_delay_ver #( .width(1), .depth(173), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist157_dupName_59_comparator_x_q_174 ( .xin(dupName_59_comparator_x_q), .xout(redist157_dupName_59_comparator_x_q_174_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,892)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000010011110010011110111001101100111001000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr1_x(BLACKBOX,475)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00086uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist132_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr1_x_out_primWireOut_1(DELAY,1133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist132_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist132_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4588337872620224512287(CONSTANT,58)
    assign c_i64_4588337872620224512287_q = $unsigned(64'b1100000001010010111100110000001111010001000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr1_x(BLACKBOX,487)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000c6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr1_x (
        .in_0(c_i64_4588337872620224512287_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist128_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr1_x_out_primWireOut_1(DELAY,1129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist128_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist128_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4570639112775663616289(CONSTANT,41)
    assign c_i64_4570639112775663616289_q = $unsigned(64'b1100000010010001110100111111000101110110100000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr1_x(BLACKBOX,499)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000g6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr1_x (
        .in_0(c_i64_4570639112775663616289_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist124_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr1_x_out_primWireOut_1(DELAY,1125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist124_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist124_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,900)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000001110100011010101101000001101000000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr1_x(BLACKBOX,517)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000m6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist117_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr1_x_out_primWireOut_1(DELAY,1118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist117_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist117_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt80_dfr186(SELECTOR,189)@219 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt80_dfr186_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt80_dfr186_q <= redist41_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_1_q;
            if (dupName_33_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt80_dfr186_q <= redist132_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i169_i661_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_32_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt80_dfr186_q <= redist128_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i201_i643_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_31_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt80_dfr186_q <= redist124_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i233_i625_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_30_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt80_dfr186_q <= redist117_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i265_i607_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_58_comparator_x(LOGICAL,339)@46 + 1
    assign dupName_58_comparator_x_qi = $unsigned(i_sel_shr87_dfr188_vt_join_q == c_i32_4379_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_58_comparator_x_delay ( .xin(dupName_58_comparator_x_qi), .xout(dupName_58_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist158_dupName_58_comparator_x_q_174(DELAY,1159)
    dspba_delay_ver #( .width(1), .depth(173), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist158_dupName_58_comparator_x_q_174 ( .xin(dupName_58_comparator_x_q), .xout(redist158_dupName_58_comparator_x_q_174_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4574207783301283840293(CONSTANT,44)
    assign c_i64_4574207783301283840293_q = $unsigned(64'b1100000010000101001001100100000110011011100000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr1_x(BLACKBOX,529)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000q6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr1_x (
        .in_0(c_i64_4574207783301283840293_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist113_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr1_x_out_primWireOut_1(DELAY,1114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist113_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist113_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,904)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000010000111101000110111101100010100110000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr1_x(BLACKBOX,541)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000u6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist109_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr1_x_out_primWireOut_1(DELAY,1110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist109_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist109_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4574496109877002240297(CONSTANT,45)
    assign c_i64_4574496109877002240297_q = $unsigned(64'b1100000010000100001000000000011001011000011000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr1_x(BLACKBOX,553)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re000y6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr1_x (
        .in_0(c_i64_4574496109877002240297_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist105_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr1_x_out_primWireOut_1(DELAY,1106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist105_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist105_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,909)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000000010100000000001010111101000110110110100010000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr1_x(BLACKBOX,565)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00126uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist101_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr1_x_out_primWireOut_1(DELAY,1102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist101_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist101_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt74_dfr185(SELECTOR,188)@219 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt74_dfr185_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt74_dfr185_q <= redist41_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_1_q;
            if (dupName_33_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt74_dfr185_q <= redist113_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i297_i589_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_32_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt74_dfr185_q <= redist109_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i329_i571_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_31_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt74_dfr185_q <= redist105_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i361_i553_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_30_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt74_dfr185_q <= redist101_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i393_i535_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_57_comparator_x(LOGICAL,338)@46 + 1
    assign dupName_57_comparator_x_qi = $unsigned(i_sel_shr87_dfr188_vt_join_q == c_i32_3380_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_57_comparator_x_delay ( .xin(dupName_57_comparator_x_qi), .xout(dupName_57_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist159_dupName_57_comparator_x_q_174(DELAY,1160)
    dspba_delay_ver #( .width(1), .depth(173), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist159_dupName_57_comparator_x_q_174 ( .xin(dupName_57_comparator_x_q), .xout(redist159_dupName_57_comparator_x_q_174_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,911)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000001101111000110100001100111001100000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr1_x(BLACKBOX,583)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00186uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist95_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr1_x_out_primWireOut_1(DELAY,1096)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist95_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,913)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000001001011001111111010100011101101000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr1_x(BLACKBOX,595)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001c6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist91_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr1_x_out_primWireOut_1(DELAY,1092)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist91_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist91_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,916)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000001101000001001001011110100000000000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr1_x(BLACKBOX,607)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001g6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist87_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr1_x_out_primWireOut_1(DELAY,1088)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist87_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist87_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4576067923190218752307(CONSTANT,48)
    assign c_i64_4576067923190218752307_q = $unsigned(64'b1100000001111110100010100111100000001010001100000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr1_x(BLACKBOX,619)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001k6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr1_x (
        .in_0(c_i64_4576067923190218752307_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist83_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr1_x_out_primWireOut_1(DELAY,1084)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist83_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt68_dfr184(SELECTOR,187)@219 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt68_dfr184_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt68_dfr184_q <= redist41_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_1_q;
            if (dupName_33_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt68_dfr184_q <= redist95_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i425_i517_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_32_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt68_dfr184_q <= redist91_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i457_i499_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_31_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt68_dfr184_q <= redist87_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i481_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_30_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt68_dfr184_q <= redist83_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i521_i463_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_56_comparator_x(LOGICAL,337)@46 + 1
    assign dupName_56_comparator_x_qi = $unsigned(i_sel_shr87_dfr188_vt_join_q == c_i32_2270_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_56_comparator_x_delay ( .xin(dupName_56_comparator_x_qi), .xout(dupName_56_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist160_dupName_56_comparator_x_q_174(DELAY,1161)
    dspba_delay_ver #( .width(1), .depth(173), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist160_dupName_56_comparator_x_q_174 ( .xin(dupName_56_comparator_x_q), .xout(redist160_dupName_56_comparator_x_q_174_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,919)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000010000011110011110110111101111110101000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr1_x(BLACKBOX,631)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001o6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist79_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr1_x_out_primWireOut_1(DELAY,1080)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist79_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,922)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000010000010001101100101111001011000000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr1_x(BLACKBOX,649)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001u6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist73_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr1_x_out_primWireOut_1(DELAY,1074)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist73_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4588505341683040256313(CONSTANT,59)
    assign c_i64_4588505341683040256313_q = $unsigned(64'b1100000001010010010110101011001111100011000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr1_x(BLACKBOX,661)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001y6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr1_x (
        .in_0(c_i64_4588505341683040256313_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist69_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr1_x_out_primWireOut_1(DELAY,1070)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist69_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr1_x_out_primWireOut);
        end
    end

    // c_i64_4591321835391418368315(CONSTANT,62)
    assign c_i64_4591321835391418368315_q = $unsigned(64'b1100000001001000010110010001110111011000000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr1_x(BLACKBOX,673)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00226uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr1_x (
        .in_0(c_i64_4591321835391418368315_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist65_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr1_x_out_primWireOut_1(DELAY,1066)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist65_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt62_dfr183(SELECTOR,186)@219 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt62_dfr183_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt62_dfr183_q <= redist41_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_1_q;
            if (dupName_33_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt62_dfr183_q <= redist79_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i553_i445_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_32_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt62_dfr183_q <= redist73_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i585_i427_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_31_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt62_dfr183_q <= redist69_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i617_i409_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_30_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt62_dfr183_q <= redist65_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i649_i391_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_55_comparator_x(LOGICAL,336)@46 + 1
    assign dupName_55_comparator_x_qi = $unsigned(i_sel_shr87_dfr188_vt_join_q == c_i32_1382_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_55_comparator_x_delay ( .xin(dupName_55_comparator_x_qi), .xout(dupName_55_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist161_dupName_55_comparator_x_q_174(DELAY,1162)
    dspba_delay_ver #( .width(1), .depth(173), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist161_dupName_55_comparator_x_q_174 ( .xin(dupName_55_comparator_x_q), .xout(redist161_dupName_55_comparator_x_q_174_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_4580309323485282304317(CONSTANT,52)
    assign c_i64_4580309323485282304317_q = $unsigned(64'b1100000001101111011110001111000000010100010000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr1_x(BLACKBOX,685)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re00266uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr1_x (
        .in_0(c_i64_4580309323485282304317_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist61_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr1_x_out_primWireOut_1(DELAY,1062)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist61_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,925)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000000110101100100011010001100011111000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr1_x(BLACKBOX,697)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002a6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist57_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr1_x_out_primWireOut_1(DELAY,1058)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist57_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,929)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000001001010000011111101000011000000000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr1_x(BLACKBOX,715)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002g6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist51_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr1_x_out_primWireOut_1(DELAY,1052)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist51_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr0_vpfp_cast_inputx_x_b_const(CONSTANT,931)
    assign i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr0_vpfp_cast_inputx_x_b_const_q = $unsigned(64'b0100000001010100011111100111000000011110000000000000000000000000);

    // i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr1_x(BLACKBOX,727)@218
    dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re002k6uq0cp0ju20cp0jo0ouz thei_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr1_x (
        .in_0(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr0_vpfp_cast_inputx_x_b_const_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist47_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr1_x_out_primWireOut_1(DELAY,1048)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist47_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt56_dfr182(SELECTOR,185)@219 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt56_dfr182_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt56_dfr182_q <= redist41_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_1_q;
            if (dupName_33_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt56_dfr182_q <= redist61_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i681_i373_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_32_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt56_dfr182_q <= redist57_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i713_i355_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_31_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt56_dfr182_q <= redist51_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i745_i337_dfr1_x_out_primWireOut_1_q;
            end
            if (dupName_30_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt56_dfr182_q <= redist47_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i777_i319_dfr1_x_out_primWireOut_1_q;
            end
        end
    end

    // dupName_54_comparator_x(LOGICAL,335)@46 + 1
    assign dupName_54_comparator_x_qi = $unsigned(i_sel_shr87_dfr188_vt_join_q == c_i32_0377_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_54_comparator_x_delay ( .xin(dupName_54_comparator_x_qi), .xout(dupName_54_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist162_dupName_54_comparator_x_q_174(DELAY,1163)
    dspba_delay_ver #( .width(1), .depth(173), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist162_dupName_54_comparator_x_q_174 ( .xin(dupName_54_comparator_x_q), .xout(redist162_dupName_54_comparator_x_q_174_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt95_dfr190(SELECTOR,192)@220 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt95_dfr190_q <= 26'b0;
        end
        else
        begin
            i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt95_dfr190_q <= redist42_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr0_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i9_i751_dfr1_x_out_primWireOut_2_q;
            if (redist157_dupName_59_comparator_x_q_174_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt95_dfr190_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt86_dfr187_q;
            end
            if (redist158_dupName_58_comparator_x_q_174_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt95_dfr190_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt80_dfr186_q;
            end
            if (redist159_dupName_57_comparator_x_q_174_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt95_dfr190_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt74_dfr185_q;
            end
            if (redist160_dupName_56_comparator_x_q_174_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt95_dfr190_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt68_dfr184_q;
            end
            if (redist161_dupName_55_comparator_x_q_174_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt95_dfr190_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt62_dfr183_q;
            end
            if (redist162_dupName_54_comparator_x_q_174_q == 1'b1)
            begin
                i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt95_dfr190_q <= i_llvm_fpga_case_i26_i32_v4i32_s_case_assign_struct_dfr_fpgaunique_13s_case_stmt56_dfr182_q;
            end
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr1_x(BLACKBOX,818)@221
    // out out_primWireOut@229
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260007b0c2463a0054c2a6355y thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr1_x (
        .in_0(i_llvm_fpga_case_i26_i32_v6i32_s_case_assign_struct_dfr_fpgaunique_14s_case_stmt95_dfr190_q),
        .in_1(redist30_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr1_x_out_primWireOut_1(DELAY,1019)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr1_x_out_primWireOut);
        end
    end

    // valid_fanout_reg4(REG,865)@228 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist11_sync_together410_aunroll_x_in_i_valid_227_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i26_result_i_i4607_dfr12(BLACKBOX,196)@229
    dfr_i_llvm_fpga_ffwd_dest_i26_result_i_i4607_0 thei_llvm_fpga_ffwd_dest_i26_result_i_i4607_dfr12 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i26_result_i_i4607_dfr12_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,866)@228 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist11_sync_together410_aunroll_x_in_i_valid_227_q);
        end
    end

    // valid_fanout_reg10(REG,871)@272 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist12_sync_together410_aunroll_x_in_i_valid_271_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_notEnable(LOGICAL,1435)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_nor(LOGICAL,1484)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_nor_q = ~ (redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_notEnable_q | redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_sticky_ena_q);

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_last(CONSTANT,1432)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_last_q = $unsigned(6'b011100);

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmp(LOGICAL,1433)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmp_b = {1'b0, redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_q};
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmp_q = $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_last_q == redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_cmpReg(REG,1482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_cmpReg_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmp_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_sticky_ena(REG,1485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_nor_q == 1'b1)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_sticky_ena_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_cmpReg_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_enaAnd(LOGICAL,1486)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_enaAnd_q = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_sticky_ena_q & VCC_q;

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt(COUNTER,1430)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_i <= 5'd0;
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_i == 5'd28)
            begin
                redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_eq == 1'b1)
            begin
                redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_i <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_i <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_q = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_i[4:0];

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_nor(LOGICAL,1472)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_nor_q = ~ (redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_notEnable_q | redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_sticky_ena_q);

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_cmpReg(REG,1470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_cmpReg_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmp_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_sticky_ena(REG,1473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_nor_q == 1'b1)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_sticky_ena_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_cmpReg_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_enaAnd(LOGICAL,1474)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_enaAnd_q = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_sticky_ena_q & VCC_q;

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_nor(LOGICAL,1460)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_nor_q = ~ (redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_notEnable_q | redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_sticky_ena_q);

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_cmpReg(REG,1458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_cmpReg_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmp_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_sticky_ena(REG,1461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_nor_q == 1'b1)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_sticky_ena_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_cmpReg_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_enaAnd(LOGICAL,1462)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_enaAnd_q = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_sticky_ena_q & VCC_q;

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_nor(LOGICAL,1448)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_nor_q = ~ (redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_notEnable_q | redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_sticky_ena_q);

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_cmpReg(REG,1446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_cmpReg_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmp_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_sticky_ena(REG,1449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_nor_q == 1'b1)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_sticky_ena_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_cmpReg_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_enaAnd(LOGICAL,1450)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_enaAnd_q = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_sticky_ena_q & VCC_q;

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_nor(LOGICAL,1436)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_nor_q = ~ (redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_notEnable_q | redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_sticky_ena_q);

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmpReg(REG,1434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmpReg_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmp_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_sticky_ena(REG,1437)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_nor_q == 1'b1)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_sticky_ena_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_cmpReg_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_enaAnd(LOGICAL,1438)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_enaAnd_q = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_sticky_ena_q & VCC_q;

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_inputreg0(DELAY,1427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_inputreg0_q <= $unsigned(redist173_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_7_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem(DUALMEM,1429)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_ia = $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_inputreg0_q);
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_aa = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_wraddr_q;
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_ab = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_q;
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_dmem (
        .clocken1(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_aa),
        .data_a(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_ab),
        .q_b(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_q = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_iq[0:0];

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_outputreg0(DELAY,1428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_outputreg0_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_mem_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_inputreg0(DELAY,1439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_inputreg0_q <= '0;
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_inputreg0_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_outputreg0_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem(DUALMEM,1441)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_ia = $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_inputreg0_q);
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_aa = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_wraddr_q;
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_ab = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_q;
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_dmem (
        .clocken1(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_reset0),
        .clock1(clock),
        .address_a(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_aa),
        .data_a(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_ab),
        .q_b(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_q = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_iq[0:0];

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_outputreg0(DELAY,1440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_outputreg0_q <= '0;
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_outputreg0_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_mem_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_inputreg0(DELAY,1451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_inputreg0_q <= '0;
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_inputreg0_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_1_outputreg0_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem(DUALMEM,1453)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_ia = $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_inputreg0_q);
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_aa = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_wraddr_q;
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_ab = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_q;
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_dmem (
        .clocken1(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_reset0),
        .clock1(clock),
        .address_a(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_aa),
        .data_a(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_ab),
        .q_b(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_q = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_iq[0:0];

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_outputreg0(DELAY,1452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_outputreg0_q <= '0;
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_outputreg0_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_mem_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_inputreg0(DELAY,1463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_inputreg0_q <= '0;
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_inputreg0_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_2_outputreg0_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem(DUALMEM,1465)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_ia = $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_inputreg0_q);
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_aa = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_wraddr_q;
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_ab = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_q;
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_dmem (
        .clocken1(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_reset0),
        .clock1(clock),
        .address_a(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_aa),
        .data_a(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_ab),
        .q_b(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_q = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_iq[0:0];

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_outputreg0(DELAY,1464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_outputreg0_q <= '0;
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_outputreg0_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_mem_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_inputreg0(DELAY,1475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_inputreg0_q <= '0;
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_inputreg0_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_3_outputreg0_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_wraddr(REG,1431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_wraddr_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem(DUALMEM,1477)
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_ia = $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_inputreg0_q);
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_aa = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_wraddr_q;
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_ab = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_0_rdcnt_q;
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_dmem (
        .clocken1(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_reset0),
        .clock1(clock),
        .address_a(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_aa),
        .data_a(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_ab),
        .q_b(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_q = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_iq[0:0];

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_outputreg0(DELAY,1476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_outputreg0_q <= '0;
        end
        else
        begin
            redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_outputreg0_q <= $unsigned(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_mem_q);
        end
    end

    // redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228(DELAY,1175)
    dspba_delay_ver #( .width(1), .depth(56), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228 ( .xin(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_split_4_outputreg0_q), .xout(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i26_retval_sroa_0_sroa_0_pm_1_off0_push13_dfr228(BLACKBOX,206)@273
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    dfr_i_llvm_fpga_push_i26_retval_sroa_0_sroa_0_pm_1_off0_push13_0 thei_llvm_fpga_push_i26_retval_sroa_0_sroa_0_pm_1_off0_push13_dfr228 (
        .in_data_in(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_1_dfr1_x_out_primWireOut),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i26_retval_sroa_0_sroa_0_pm_1_off0_pop13_dfr13_out_feedback_stall_out_13),
        .in_keep_going(redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i26_retval_sroa_0_sroa_0_pm_1_off0_push13_dfr228_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i26_retval_sroa_0_sroa_0_pm_1_off0_push13_dfr228_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i26_undef265(CONSTANT,26)
    assign c_i26_undef265_q = $unsigned(26'b00000000000000000000000000);

    // i_llvm_fpga_pop_i26_retval_sroa_0_sroa_0_pm_1_off0_pop13_dfr13(BLACKBOX,199)@229
    // out out_feedback_stall_out_13@20000000
    dfr_i_llvm_fpga_pop_i26_retval_sroa_0_sroa_0_pm_1_off0_pop13_0 thei_llvm_fpga_pop_i26_retval_sroa_0_sroa_0_pm_1_off0_pop13_dfr13 (
        .in_data_in(c_i26_undef265_q),
        .in_dir(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_q),
        .in_feedback_in_13(i_llvm_fpga_push_i26_retval_sroa_0_sroa_0_pm_1_off0_push13_dfr228_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i26_retval_sroa_0_sroa_0_pm_1_off0_push13_dfr228_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i26_retval_sroa_0_sroa_0_pm_1_off0_pop13_dfr13_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i26_retval_sroa_0_sroa_0_pm_1_off0_pop13_dfr13_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_notEnable(LOGICAL,1255)
    assign redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_nor(LOGICAL,1256)
    assign redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_nor_q = ~ (redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_notEnable_q | redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_sticky_ena_q);

    // redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_last(CONSTANT,1252)
    assign redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_last_q = $unsigned(6'b011100);

    // redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_cmp(LOGICAL,1253)
    assign redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_cmp_b = {1'b0, redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_q};
    assign redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_cmp_q = $unsigned(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_last_q == redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_cmpReg(REG,1254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_cmpReg_q <= $unsigned(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_cmp_q);
        end
    end

    // redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_sticky_ena(REG,1257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_nor_q == 1'b1)
        begin
            redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_sticky_ena_q <= $unsigned(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_cmpReg_q);
        end
    end

    // redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_enaAnd(LOGICAL,1258)
    assign redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_enaAnd_q = redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_sticky_ena_q & VCC_q;

    // redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt(COUNTER,1250)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_i <= 5'd0;
            redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_i == 5'd28)
            begin
                redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_eq == 1'b1)
            begin
                redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_i <= $unsigned(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_i <= $unsigned(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_q = redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_i[4:0];

    // redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_inputreg0(DELAY,1247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_inputreg0_q <= $unsigned(redist2_sync_together410_aunroll_x_in_c0_eni135_1_tpl_50_q);
        end
    end

    // redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_wraddr(REG,1251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_wraddr_q <= $unsigned(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_q);
        end
    end

    // redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem(DUALMEM,1249)
    assign redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_ia = $unsigned(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_inputreg0_q);
    assign redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_aa = redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_wraddr_q;
    assign redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_ab = redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_rdcnt_q;
    assign redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_dmem (
        .clocken1(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_aa),
        .data_a(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_ab),
        .q_b(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_q = redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_iq[0:0];

    // redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_outputreg0(DELAY,1248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_outputreg0_q <= $unsigned(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_mem_q);
        end
    end

    // redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228(DELAY,1004)
    dspba_delay_ver #( .width(1), .depth(145), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228 ( .xin(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_split_0_outputreg0_q), .xout(redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_retval_sroa_0_sroa_0_pm_1_off0_replace_phi_dfr14(MUX,232)@229 + 1
    assign i_retval_sroa_0_sroa_0_pm_1_off0_replace_phi_dfr14_s = redist3_sync_together410_aunroll_x_in_c0_eni135_1_tpl_228_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_retval_sroa_0_sroa_0_pm_1_off0_replace_phi_dfr14_q <= 26'b0;
        end
        else
        begin
            unique case (i_retval_sroa_0_sroa_0_pm_1_off0_replace_phi_dfr14_s)
                1'b0 : i_retval_sroa_0_sroa_0_pm_1_off0_replace_phi_dfr14_q <= i_llvm_fpga_pop_i26_retval_sroa_0_sroa_0_pm_1_off0_pop13_dfr13_out_data_out;
                1'b1 : i_retval_sroa_0_sroa_0_pm_1_off0_replace_phi_dfr14_q <= i_llvm_fpga_ffwd_dest_i26_result_i_i4607_dfr12_out_dest_data_out_0_0;
                default : i_retval_sroa_0_sroa_0_pm_1_off0_replace_phi_dfr14_q <= 26'b0;
            endcase
        end
    end

    // i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr1_x(BLACKBOX,443)@230
    // out out_primWireOut@251
    dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i2600033a0054c2a6344c246w65 thei_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr1_x (
        .in_0(i_retval_sroa_0_sroa_0_pm_1_off0_replace_phi_dfr14_q),
        .in_1(redist18_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist143_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr1_x_out_primWireOut_1(DELAY,1144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist143_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist143_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_1_dfr1_x(BLACKBOX,439)@252
    // out out_primWireOut@273
    dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i260002123642i229744c22675x thei_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_1_dfr1_x (
        .in_0(redist143_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_dfr1_x_out_primWireOut_1_q),
        .in_1(redist19_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i50_1_dfr1_x_out_primWireOut_23_outputreg0_q),
        .out_primWireOut(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_1_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist175_i_first_cleanup_xor_dfr4_q_168(DELAY,1176)
    dspba_delay_ver #( .width(1), .depth(168), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist175_i_first_cleanup_xor_dfr4_q_168 ( .xin(i_first_cleanup_xor_dfr4_q), .xout(redist175_i_first_cleanup_xor_dfr4_q_168_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist176_i_first_cleanup_xor_dfr4_q_221(DELAY,1177)
    dspba_delay_ver #( .width(1), .depth(53), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist176_i_first_cleanup_xor_dfr4_q_221 ( .xin(redist175_i_first_cleanup_xor_dfr4_q_168_q), .xout(redist176_i_first_cleanup_xor_dfr4_q_221_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i26_unnamed_dfr9_dfr241(BLACKBOX,197)@273
    // out out_intel_reserved_ffwd_2_0@20000000
    dfr_i_llvm_fpga_ffwd_source_i26_unnamed_9_dfr0 thei_llvm_fpga_ffwd_source_i26_unnamed_dfr9_dfr241 (
        .in_predicate_in(redist176_i_first_cleanup_xor_dfr4_q_221_q),
        .in_src_data_in_2_0(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_1_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i_1_dfr1_x_out_primWireOut),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i26_unnamed_dfr9_dfr241_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,269)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i26_unnamed_dfr9_dfr241_out_intel_reserved_ffwd_2_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,280)
    assign out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_address = i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_address;
    assign out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_enable = i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_enable;
    assign out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_read = i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_read;
    assign out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_write = i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_write;
    assign out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_writedata;
    assign out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_byteenable;
    assign out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_dfr_fpgaunique_63_dfr169_aunroll_x_out_memcoalesce_load_dfr_fpgaunique_63_dfr_avm_burstcount;

    // i_pms_cs2190_dfr213_vt_const_31(CONSTANT,225)
    assign i_pms_cs2190_dfr213_vt_const_31_q = $unsigned(6'b000000);

    // i_pms_cs2195_dfr179_sel_x(BITSELECT,846)@220
    assign i_pms_cs2195_dfr179_sel_x_b = {6'b000000, i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_dfr1_x_out_primWireOut[25:0]};

    // i_pms_cs2195_dfr179_vt_select_25(BITSELECT,231)@220
    assign i_pms_cs2195_dfr179_vt_select_25_b = i_pms_cs2195_dfr179_sel_x_b[25:0];

    // i_pms_cs2195_dfr179_vt_join(BITJOIN,230)@220
    assign i_pms_cs2195_dfr179_vt_join_q = {i_pms_cs2190_dfr213_vt_const_31_q, i_pms_cs2195_dfr179_vt_select_25_b};

    // i_pms_cs2190_dfr213_sel_x(BITSELECT,845)@220
    assign i_pms_cs2190_dfr213_sel_x_b = {6'b000000, i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr1_x_out_primWireOut[25:0]};

    // i_pms_cs2190_dfr213_vt_select_25(BITSELECT,227)@220
    assign i_pms_cs2190_dfr213_vt_select_25_b = i_pms_cs2190_dfr213_sel_x_b[25:0];

    // i_pms_cs2190_dfr213_vt_join(BITJOIN,226)@220
    assign i_pms_cs2190_dfr213_vt_join_q = {i_pms_cs2190_dfr213_vt_const_31_q, i_pms_cs2190_dfr213_vt_select_25_b};

    // valid_fanout_reg9(REG,870)@219 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist10_sync_together410_aunroll_x_in_i_valid_218_q);
        end
    end

    // redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_notEnable(LOGICAL,1243)
    assign redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_notEnable_q = $unsigned(~ (VCC_q));

    // redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_nor(LOGICAL,1244)
    assign redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_nor_q = ~ (redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_notEnable_q | redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_sticky_ena_q);

    // redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_last(CONSTANT,1240)
    assign redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_last_q = $unsigned(9'b010100011);

    // redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_cmp(LOGICAL,1241)
    assign redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_cmp_b = {1'b0, redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_q};
    assign redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_cmp_q = $unsigned(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_last_q == redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_cmp_b ? 1'b1 : 1'b0);

    // redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_cmpReg(REG,1242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_cmpReg_q <= $unsigned(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_cmp_q);
        end
    end

    // redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_sticky_ena(REG,1245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_nor_q == 1'b1)
        begin
            redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_sticky_ena_q <= $unsigned(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_cmpReg_q);
        end
    end

    // redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_enaAnd(LOGICAL,1246)
    assign redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_enaAnd_q = redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_sticky_ena_q & VCC_q;

    // redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt(COUNTER,1238)
    // low=0, high=164, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_i <= 8'd0;
            redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_i == 8'd163)
            begin
                redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_eq <= 1'b0;
            end
            if (redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_eq == 1'b1)
            begin
                redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_i <= $unsigned(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_i) + $unsigned(8'd92);
            end
            else
            begin
                redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_i <= $unsigned(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_i) + $unsigned(8'd1);
            end
        end
    end
    assign redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_q = redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_i[7:0];

    // redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_inputreg0(DELAY,1235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_inputreg0_q <= '0;
        end
        else
        begin
            redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_inputreg0_q <= $unsigned(i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q);
        end
    end

    // redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_wraddr(REG,1239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_wraddr_q <= $unsigned(8'b10100100);
        end
        else
        begin
            redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_wraddr_q <= $unsigned(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_q);
        end
    end

    // redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem(DUALMEM,1237)
    assign redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_ia = $unsigned(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_inputreg0_q);
    assign redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_aa = redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_wraddr_q;
    assign redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_ab = redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_rdcnt_q;
    assign redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(8),
        .numwords_a(165),
        .width_b(64),
        .widthad_b(8),
        .numwords_b(165),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_dmem (
        .clocken1(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_reset0),
        .clock1(clock),
        .address_a(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_aa),
        .data_a(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_ab),
        .q_b(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_q = redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_iq[63:0];

    // redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_outputreg0(DELAY,1236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_outputreg0_q <= '0;
        end
        else
        begin
            redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_outputreg0_q <= $unsigned(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_mem_q);
        end
    end

    // i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x(BLACKBOX,422)@220
    // out out_memdep_2_dfr_avm_address@20000000
    // out out_memdep_2_dfr_avm_burstcount@20000000
    // out out_memdep_2_dfr_avm_byteenable@20000000
    // out out_memdep_2_dfr_avm_enable@20000000
    // out out_memdep_2_dfr_avm_read@20000000
    // out out_memdep_2_dfr_avm_write@20000000
    // out out_memdep_2_dfr_avm_writedata@20000000
    // out out_o_stall@221
    // out out_o_valid@221
    // out out_o_writeack@221
    dfr_i_llvm_fpga_mem_memdep_2_0 thei_llvm_fpga_mem_memdep_2_dfr215_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(redist167_i_memcoalesce_bitcast_dfr_fpgaunique_12_dfr168_vt_join_q_168_outputreg0_q),
        .in_i_predicate(redist175_i_first_cleanup_xor_dfr4_q_168_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_memdep_2_dfr_avm_readdata(in_memdep_2_dfr_avm_readdata),
        .in_memdep_2_dfr_avm_readdatavalid(in_memdep_2_dfr_avm_readdatavalid),
        .in_memdep_2_dfr_avm_waitrequest(in_memdep_2_dfr_avm_waitrequest),
        .in_memdep_2_dfr_avm_writeack(in_memdep_2_dfr_avm_writeack),
        .in_i_writedata_0_tpl(i_pms_cs2190_dfr213_vt_join_q),
        .in_i_writedata_1_tpl(i_pms_cs2195_dfr179_vt_join_q),
        .out_memdep_2_dfr_avm_address(i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_address),
        .out_memdep_2_dfr_avm_burstcount(i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_burstcount),
        .out_memdep_2_dfr_avm_byteenable(i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_byteenable),
        .out_memdep_2_dfr_avm_enable(i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_enable),
        .out_memdep_2_dfr_avm_read(i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_read),
        .out_memdep_2_dfr_avm_write(i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_write),
        .out_memdep_2_dfr_avm_writedata(i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,282)
    assign out_memdep_2_dfr_avm_address = i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_address;
    assign out_memdep_2_dfr_avm_enable = i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_enable;
    assign out_memdep_2_dfr_avm_read = i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_read;
    assign out_memdep_2_dfr_avm_write = i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_write;
    assign out_memdep_2_dfr_avm_writedata = i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_writedata;
    assign out_memdep_2_dfr_avm_byteenable = i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_byteenable;
    assign out_memdep_2_dfr_avm_burstcount = i_llvm_fpga_mem_memdep_2_dfr215_aunroll_x_out_memdep_2_dfr_avm_burstcount;

    // valid_fanout_reg0(REG,861)@272 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist12_sync_together410_aunroll_x_in_i_valid_271_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_0_notEnable(LOGICAL,1387)
    assign redist168_i_masked_dfr242_q_221_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist168_i_masked_dfr242_q_221_split_3_nor(LOGICAL,1424)
    assign redist168_i_masked_dfr242_q_221_split_3_nor_q = ~ (redist168_i_masked_dfr242_q_221_split_0_notEnable_q | redist168_i_masked_dfr242_q_221_split_3_sticky_ena_q);

    // redist168_i_masked_dfr242_q_221_split_0_mem_last(CONSTANT,1384)
    assign redist168_i_masked_dfr242_q_221_split_0_mem_last_q = $unsigned(6'b011100);

    // redist168_i_masked_dfr242_q_221_split_0_cmp(LOGICAL,1385)
    assign redist168_i_masked_dfr242_q_221_split_0_cmp_b = {1'b0, redist168_i_masked_dfr242_q_221_split_0_rdcnt_q};
    assign redist168_i_masked_dfr242_q_221_split_0_cmp_q = $unsigned(redist168_i_masked_dfr242_q_221_split_0_mem_last_q == redist168_i_masked_dfr242_q_221_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist168_i_masked_dfr242_q_221_split_3_cmpReg(REG,1422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist168_i_masked_dfr242_q_221_split_3_cmpReg_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_0_cmp_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_3_sticky_ena(REG,1425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist168_i_masked_dfr242_q_221_split_3_nor_q == 1'b1)
        begin
            redist168_i_masked_dfr242_q_221_split_3_sticky_ena_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_3_cmpReg_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_3_enaAnd(LOGICAL,1426)
    assign redist168_i_masked_dfr242_q_221_split_3_enaAnd_q = redist168_i_masked_dfr242_q_221_split_3_sticky_ena_q & VCC_q;

    // redist168_i_masked_dfr242_q_221_split_0_rdcnt(COUNTER,1382)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_0_rdcnt_i <= 5'd0;
            redist168_i_masked_dfr242_q_221_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist168_i_masked_dfr242_q_221_split_0_rdcnt_i == 5'd28)
            begin
                redist168_i_masked_dfr242_q_221_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist168_i_masked_dfr242_q_221_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist168_i_masked_dfr242_q_221_split_0_rdcnt_eq == 1'b1)
            begin
                redist168_i_masked_dfr242_q_221_split_0_rdcnt_i <= $unsigned(redist168_i_masked_dfr242_q_221_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist168_i_masked_dfr242_q_221_split_0_rdcnt_i <= $unsigned(redist168_i_masked_dfr242_q_221_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist168_i_masked_dfr242_q_221_split_0_rdcnt_q = redist168_i_masked_dfr242_q_221_split_0_rdcnt_i[4:0];

    // redist168_i_masked_dfr242_q_221_split_2_nor(LOGICAL,1412)
    assign redist168_i_masked_dfr242_q_221_split_2_nor_q = ~ (redist168_i_masked_dfr242_q_221_split_0_notEnable_q | redist168_i_masked_dfr242_q_221_split_2_sticky_ena_q);

    // redist168_i_masked_dfr242_q_221_split_2_cmpReg(REG,1410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_2_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist168_i_masked_dfr242_q_221_split_2_cmpReg_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_0_cmp_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_2_sticky_ena(REG,1413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_2_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist168_i_masked_dfr242_q_221_split_2_nor_q == 1'b1)
        begin
            redist168_i_masked_dfr242_q_221_split_2_sticky_ena_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_2_cmpReg_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_2_enaAnd(LOGICAL,1414)
    assign redist168_i_masked_dfr242_q_221_split_2_enaAnd_q = redist168_i_masked_dfr242_q_221_split_2_sticky_ena_q & VCC_q;

    // redist168_i_masked_dfr242_q_221_split_1_nor(LOGICAL,1400)
    assign redist168_i_masked_dfr242_q_221_split_1_nor_q = ~ (redist168_i_masked_dfr242_q_221_split_0_notEnable_q | redist168_i_masked_dfr242_q_221_split_1_sticky_ena_q);

    // redist168_i_masked_dfr242_q_221_split_1_cmpReg(REG,1398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_1_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist168_i_masked_dfr242_q_221_split_1_cmpReg_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_0_cmp_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_1_sticky_ena(REG,1401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_1_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist168_i_masked_dfr242_q_221_split_1_nor_q == 1'b1)
        begin
            redist168_i_masked_dfr242_q_221_split_1_sticky_ena_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_1_cmpReg_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_1_enaAnd(LOGICAL,1402)
    assign redist168_i_masked_dfr242_q_221_split_1_enaAnd_q = redist168_i_masked_dfr242_q_221_split_1_sticky_ena_q & VCC_q;

    // redist168_i_masked_dfr242_q_221_split_0_nor(LOGICAL,1388)
    assign redist168_i_masked_dfr242_q_221_split_0_nor_q = ~ (redist168_i_masked_dfr242_q_221_split_0_notEnable_q | redist168_i_masked_dfr242_q_221_split_0_sticky_ena_q);

    // redist168_i_masked_dfr242_q_221_split_0_cmpReg(REG,1386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist168_i_masked_dfr242_q_221_split_0_cmpReg_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_0_cmp_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_0_sticky_ena(REG,1389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist168_i_masked_dfr242_q_221_split_0_nor_q == 1'b1)
        begin
            redist168_i_masked_dfr242_q_221_split_0_sticky_ena_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_0_cmpReg_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_0_enaAnd(LOGICAL,1390)
    assign redist168_i_masked_dfr242_q_221_split_0_enaAnd_q = redist168_i_masked_dfr242_q_221_split_0_sticky_ena_q & VCC_q;

    // i_masked_dfr242(LOGICAL,211)@52 + 1
    assign i_masked_dfr242_qi = i_notcmp_dfr234_q & i_first_cleanup_dfr3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_dfr242_delay ( .xin(i_masked_dfr242_qi), .xout(i_masked_dfr242_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist168_i_masked_dfr242_q_221_split_0_inputreg0(DELAY,1379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist168_i_masked_dfr242_q_221_split_0_inputreg0_q <= $unsigned(i_masked_dfr242_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_0_mem(DUALMEM,1381)
    assign redist168_i_masked_dfr242_q_221_split_0_mem_ia = $unsigned(redist168_i_masked_dfr242_q_221_split_0_inputreg0_q);
    assign redist168_i_masked_dfr242_q_221_split_0_mem_aa = redist168_i_masked_dfr242_q_221_split_0_wraddr_q;
    assign redist168_i_masked_dfr242_q_221_split_0_mem_ab = redist168_i_masked_dfr242_q_221_split_0_rdcnt_q;
    assign redist168_i_masked_dfr242_q_221_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist168_i_masked_dfr242_q_221_split_0_mem_dmem (
        .clocken1(redist168_i_masked_dfr242_q_221_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist168_i_masked_dfr242_q_221_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist168_i_masked_dfr242_q_221_split_0_mem_aa),
        .data_a(redist168_i_masked_dfr242_q_221_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist168_i_masked_dfr242_q_221_split_0_mem_ab),
        .q_b(redist168_i_masked_dfr242_q_221_split_0_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist168_i_masked_dfr242_q_221_split_0_mem_q = redist168_i_masked_dfr242_q_221_split_0_mem_iq[0:0];

    // redist168_i_masked_dfr242_q_221_split_0_outputreg0(DELAY,1380)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist168_i_masked_dfr242_q_221_split_0_outputreg0_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_0_mem_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_1_inputreg0(DELAY,1391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_1_inputreg0_q <= '0;
        end
        else
        begin
            redist168_i_masked_dfr242_q_221_split_1_inputreg0_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_0_outputreg0_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_1_mem(DUALMEM,1393)
    assign redist168_i_masked_dfr242_q_221_split_1_mem_ia = $unsigned(redist168_i_masked_dfr242_q_221_split_1_inputreg0_q);
    assign redist168_i_masked_dfr242_q_221_split_1_mem_aa = redist168_i_masked_dfr242_q_221_split_0_wraddr_q;
    assign redist168_i_masked_dfr242_q_221_split_1_mem_ab = redist168_i_masked_dfr242_q_221_split_0_rdcnt_q;
    assign redist168_i_masked_dfr242_q_221_split_1_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist168_i_masked_dfr242_q_221_split_1_mem_dmem (
        .clocken1(redist168_i_masked_dfr242_q_221_split_1_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist168_i_masked_dfr242_q_221_split_1_mem_reset0),
        .clock1(clock),
        .address_a(redist168_i_masked_dfr242_q_221_split_1_mem_aa),
        .data_a(redist168_i_masked_dfr242_q_221_split_1_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist168_i_masked_dfr242_q_221_split_1_mem_ab),
        .q_b(redist168_i_masked_dfr242_q_221_split_1_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist168_i_masked_dfr242_q_221_split_1_mem_q = redist168_i_masked_dfr242_q_221_split_1_mem_iq[0:0];

    // redist168_i_masked_dfr242_q_221_split_1_outputreg0(DELAY,1392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_1_outputreg0_q <= '0;
        end
        else
        begin
            redist168_i_masked_dfr242_q_221_split_1_outputreg0_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_1_mem_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_2_inputreg0(DELAY,1403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_2_inputreg0_q <= '0;
        end
        else
        begin
            redist168_i_masked_dfr242_q_221_split_2_inputreg0_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_1_outputreg0_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_2_mem(DUALMEM,1405)
    assign redist168_i_masked_dfr242_q_221_split_2_mem_ia = $unsigned(redist168_i_masked_dfr242_q_221_split_2_inputreg0_q);
    assign redist168_i_masked_dfr242_q_221_split_2_mem_aa = redist168_i_masked_dfr242_q_221_split_0_wraddr_q;
    assign redist168_i_masked_dfr242_q_221_split_2_mem_ab = redist168_i_masked_dfr242_q_221_split_0_rdcnt_q;
    assign redist168_i_masked_dfr242_q_221_split_2_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist168_i_masked_dfr242_q_221_split_2_mem_dmem (
        .clocken1(redist168_i_masked_dfr242_q_221_split_2_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist168_i_masked_dfr242_q_221_split_2_mem_reset0),
        .clock1(clock),
        .address_a(redist168_i_masked_dfr242_q_221_split_2_mem_aa),
        .data_a(redist168_i_masked_dfr242_q_221_split_2_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist168_i_masked_dfr242_q_221_split_2_mem_ab),
        .q_b(redist168_i_masked_dfr242_q_221_split_2_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist168_i_masked_dfr242_q_221_split_2_mem_q = redist168_i_masked_dfr242_q_221_split_2_mem_iq[0:0];

    // redist168_i_masked_dfr242_q_221_split_2_outputreg0(DELAY,1404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_2_outputreg0_q <= '0;
        end
        else
        begin
            redist168_i_masked_dfr242_q_221_split_2_outputreg0_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_2_mem_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_3_inputreg0(DELAY,1415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_3_inputreg0_q <= '0;
        end
        else
        begin
            redist168_i_masked_dfr242_q_221_split_3_inputreg0_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_2_outputreg0_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_0_wraddr(REG,1383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist168_i_masked_dfr242_q_221_split_0_wraddr_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_0_rdcnt_q);
        end
    end

    // redist168_i_masked_dfr242_q_221_split_3_mem(DUALMEM,1417)
    assign redist168_i_masked_dfr242_q_221_split_3_mem_ia = $unsigned(redist168_i_masked_dfr242_q_221_split_3_inputreg0_q);
    assign redist168_i_masked_dfr242_q_221_split_3_mem_aa = redist168_i_masked_dfr242_q_221_split_0_wraddr_q;
    assign redist168_i_masked_dfr242_q_221_split_3_mem_ab = redist168_i_masked_dfr242_q_221_split_0_rdcnt_q;
    assign redist168_i_masked_dfr242_q_221_split_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(1),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(1),
        .widthad_b(5),
        .numwords_b(30),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist168_i_masked_dfr242_q_221_split_3_mem_dmem (
        .clocken1(redist168_i_masked_dfr242_q_221_split_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist168_i_masked_dfr242_q_221_split_3_mem_reset0),
        .clock1(clock),
        .address_a(redist168_i_masked_dfr242_q_221_split_3_mem_aa),
        .data_a(redist168_i_masked_dfr242_q_221_split_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist168_i_masked_dfr242_q_221_split_3_mem_ab),
        .q_b(redist168_i_masked_dfr242_q_221_split_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist168_i_masked_dfr242_q_221_split_3_mem_q = redist168_i_masked_dfr242_q_221_split_3_mem_iq[0:0];

    // redist168_i_masked_dfr242_q_221_split_3_outputreg0(DELAY,1416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist168_i_masked_dfr242_q_221_split_3_outputreg0_q <= '0;
        end
        else
        begin
            redist168_i_masked_dfr242_q_221_split_3_outputreg0_q <= $unsigned(redist168_i_masked_dfr242_q_221_split_3_mem_q);
        end
    end

    // redist168_i_masked_dfr242_q_221(DELAY,1169)
    dspba_delay_ver #( .width(1), .depth(88), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist168_i_masked_dfr242_q_221 ( .xin(redist168_i_masked_dfr242_q_221_split_3_outputreg0_q), .xout(redist168_i_masked_dfr242_q_221_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,859)@273
    assign out_c0_exi239_0_tpl = GND_q;
    assign out_c0_exi239_1_tpl = redist174_i_llvm_fpga_pipeline_keep_going_dfr6_out_data_out_228_q;
    assign out_c0_exi239_2_tpl = redist168_i_masked_dfr242_q_221_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_dfr2 = GND_q;

endmodule
