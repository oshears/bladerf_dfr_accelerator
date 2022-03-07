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

// SystemVerilog created from flt_i_llvm_fpga_vpfp_sqrt_i26_i26_result_i_i256_dfr0_sqrtBlock_typeSFloatIEEE_17_8_typeSFloatIEEE_17_8_382il7vh72cf2ofeqfkrhk4c063065064663c62i61o65o63u64160765764d62pc52628648i1q64q60wc0uq5ux5gv8yll5gvbyxk00dd6oq3cd16oe0cp3doz
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:30:00 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_flt_i_llvm_fpga_vpfp_sqrt_i26_i26_re00000dd6oq3cd16oe0cp3doz (
    input wire [25:0] in_0,
    output wire [25:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] expX_uid6_block_rsrvd_fix_b;
    wire [0:0] signX_uid7_block_rsrvd_fix_b;
    wire [7:0] cstAllOWE_uid8_block_rsrvd_fix_q;
    wire [16:0] cstZeroWF_uid9_block_rsrvd_fix_q;
    wire [7:0] cstAllZWE_uid10_block_rsrvd_fix_q;
    wire [16:0] frac_x_uid12_block_rsrvd_fix_b;
    wire [0:0] excZ_x_uid13_block_rsrvd_fix_qi;
    reg [0:0] excZ_x_uid13_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid14_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid14_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid15_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid15_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid16_block_rsrvd_fix_q;
    wire [0:0] excI_x_uid17_block_rsrvd_fix_q;
    wire [0:0] excN_x_uid18_block_rsrvd_fix_qi;
    reg [0:0] excN_x_uid18_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid19_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid20_block_rsrvd_fix_q;
    wire [0:0] excR_x_uid21_block_rsrvd_fix_q;
    wire [7:0] sBias_uid22_block_rsrvd_fix_q;
    wire [8:0] expEvenSig_uid24_block_rsrvd_fix_a;
    wire [8:0] expEvenSig_uid24_block_rsrvd_fix_b;
    logic [8:0] expEvenSig_uid24_block_rsrvd_fix_o;
    wire [8:0] expEvenSig_uid24_block_rsrvd_fix_q;
    wire [7:0] expREven_uid25_block_rsrvd_fix_b;
    wire [7:0] sBiasM1_uid26_block_rsrvd_fix_q;
    wire [8:0] expOddSig_uid27_block_rsrvd_fix_a;
    wire [8:0] expOddSig_uid27_block_rsrvd_fix_b;
    logic [8:0] expOddSig_uid27_block_rsrvd_fix_o;
    wire [8:0] expOddSig_uid27_block_rsrvd_fix_q;
    wire [7:0] expROdd_uid28_block_rsrvd_fix_b;
    wire [0:0] expX0PS_uid29_block_rsrvd_fix_in;
    wire [0:0] expX0PS_uid29_block_rsrvd_fix_b;
    wire [0:0] expOddSelect_uid30_block_rsrvd_fix_q;
    wire [0:0] expRMux_uid31_block_rsrvd_fix_s;
    reg [7:0] expRMux_uid31_block_rsrvd_fix_q;
    wire [17:0] addrFull_uid33_block_rsrvd_fix_q;
    wire [5:0] yAddr_uid35_block_rsrvd_fix_b;
    wire [11:0] yForPe_uid36_block_rsrvd_fix_in;
    wire [11:0] yForPe_uid36_block_rsrvd_fix_b;
    wire [24:0] expIncPEOnly_uid38_block_rsrvd_fix_in;
    wire [0:0] expIncPEOnly_uid38_block_rsrvd_fix_b;
    wire [22:0] fracRPreCR_uid39_block_rsrvd_fix_in;
    wire [17:0] fracRPreCR_uid39_block_rsrvd_fix_b;
    wire [18:0] fracPaddingOne_uid41_block_rsrvd_fix_q;
    wire [17:0] oFracX_uid44_block_rsrvd_fix_q;
    wire [18:0] oFracXZ_mergedSignalTM_uid47_block_rsrvd_fix_q;
    wire [18:0] oFracXSignExt_mergedSignalTM_uid52_block_rsrvd_fix_q;
    wire [0:0] normalizedXForComp_uid54_block_rsrvd_fix_s;
    reg [18:0] normalizedXForComp_uid54_block_rsrvd_fix_q;
    wire [18:0] paddingY_uid55_block_rsrvd_fix_q;
    wire [37:0] updatedY_uid56_block_rsrvd_fix_q;
    wire [39:0] squaredResultGTEIn_uid55_block_rsrvd_fix_a;
    wire [39:0] squaredResultGTEIn_uid55_block_rsrvd_fix_b;
    logic [39:0] squaredResultGTEIn_uid55_block_rsrvd_fix_o;
    wire [0:0] squaredResultGTEIn_uid55_block_rsrvd_fix_n;
    wire [0:0] pLTOne_uid58_block_rsrvd_fix_q;
    wire [18:0] fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_a;
    wire [18:0] fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_b;
    logic [18:0] fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_o;
    wire [18:0] fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_q;
    wire [0:0] fracPENotOne_uid62_block_rsrvd_fix_q;
    wire [0:0] fracPENotOneAndCRRoundsExp_uid63_block_rsrvd_fix_q;
    wire [0:0] expInc_uid64_block_rsrvd_fix_qi;
    reg [0:0] expInc_uid64_block_rsrvd_fix_q;
    wire [8:0] expR_uid66_block_rsrvd_fix_a;
    wire [8:0] expR_uid66_block_rsrvd_fix_b;
    logic [8:0] expR_uid66_block_rsrvd_fix_o;
    wire [8:0] expR_uid66_block_rsrvd_fix_q;
    wire [0:0] invSignX_uid67_block_rsrvd_fix_q;
    wire [0:0] inInfAndNotNeg_uid68_block_rsrvd_fix_qi;
    reg [0:0] inInfAndNotNeg_uid68_block_rsrvd_fix_q;
    wire [0:0] minReg_uid69_block_rsrvd_fix_qi;
    reg [0:0] minReg_uid69_block_rsrvd_fix_q;
    wire [0:0] minInf_uid70_block_rsrvd_fix_qi;
    reg [0:0] minInf_uid70_block_rsrvd_fix_q;
    wire [0:0] excRNaN_uid71_block_rsrvd_fix_q;
    wire [2:0] excConc_uid72_block_rsrvd_fix_q;
    wire [3:0] fracSelIn_uid73_block_rsrvd_fix_q;
    reg [1:0] fracSel_uid74_block_rsrvd_fix_q;
    wire [7:0] expRR_uid77_block_rsrvd_fix_in;
    wire [7:0] expRR_uid77_block_rsrvd_fix_b;
    wire [1:0] expRPostExc_uid79_block_rsrvd_fix_s;
    reg [7:0] expRPostExc_uid79_block_rsrvd_fix_q;
    wire [16:0] fracNaN_uid80_block_rsrvd_fix_q;
    wire [1:0] fracRPostExc_uid84_block_rsrvd_fix_s;
    reg [16:0] fracRPostExc_uid84_block_rsrvd_fix_q;
    wire [0:0] negZero_uid85_block_rsrvd_fix_qi;
    reg [0:0] negZero_uid85_block_rsrvd_fix_q;
    wire [25:0] RSqrt_uid86_block_rsrvd_fix_q;
    reg [9:0] memoryC0_uid88_sqrtTables_q;
    reg [9:0] memoryC0_uid89_sqrtTables_q;
    reg [2:0] memoryC0_uid90_sqrtTables_q;
    wire [22:0] os_uid91_sqrtTables_q;
    reg [9:0] memoryC1_uid93_sqrtTables_q;
    reg [6:0] memoryC1_uid94_sqrtTables_q;
    wire [16:0] os_uid95_sqrtTables_q;
    reg [9:0] memoryC2_uid97_sqrtTables_q;
    wire [9:0] yT1_uid103_invPolyEval_b;
    wire [0:0] lowRangeB_uid105_invPolyEval_in;
    wire [0:0] lowRangeB_uid105_invPolyEval_b;
    wire [9:0] highBBits_uid106_invPolyEval_b;
    wire [17:0] s1sumAHighB_uid107_invPolyEval_a;
    wire [17:0] s1sumAHighB_uid107_invPolyEval_b;
    logic [17:0] s1sumAHighB_uid107_invPolyEval_o;
    wire [17:0] s1sumAHighB_uid107_invPolyEval_q;
    wire [18:0] s1_uid108_invPolyEval_q;
    wire [1:0] lowRangeB_uid111_invPolyEval_in;
    wire [1:0] lowRangeB_uid111_invPolyEval_b;
    wire [17:0] highBBits_uid112_invPolyEval_b;
    wire [23:0] s2sumAHighB_uid113_invPolyEval_a;
    wire [23:0] s2sumAHighB_uid113_invPolyEval_b;
    logic [23:0] s2sumAHighB_uid113_invPolyEval_o;
    wire [23:0] s2sumAHighB_uid113_invPolyEval_q;
    wire [25:0] s2_uid114_invPolyEval_q;
    wire [10:0] osig_uid117_pT1_uid104_invPolyEval_b;
    wire [19:0] osig_uid120_pT2_uid110_invPolyEval_b;
    reg [0:0] squaredResult_uid42_block_rsrvd_fix_im0_a0;
    reg [0:0] squaredResult_uid42_block_rsrvd_fix_im0_b0;
    reg [1:0] squaredResult_uid42_block_rsrvd_fix_im0_s1;
    wire [1:0] squaredResult_uid42_block_rsrvd_fix_im0_pr;
    reg [1:0] squaredResult_uid42_block_rsrvd_fix_im0_q;
    wire [37:0] squaredResult_uid42_block_rsrvd_fix_sums_join_0_q;
    wire [37:0] squaredResult_uid42_block_rsrvd_fix_sums_align_1_q;
    wire [37:0] squaredResult_uid42_block_rsrvd_fix_sums_align_1_qint;
    wire [38:0] squaredResult_uid42_block_rsrvd_fix_sums_result_add_0_0_a;
    wire [38:0] squaredResult_uid42_block_rsrvd_fix_sums_result_add_0_0_b;
    logic [38:0] squaredResult_uid42_block_rsrvd_fix_sums_result_add_0_0_o;
    wire [38:0] squaredResult_uid42_block_rsrvd_fix_sums_result_add_0_0_q;
    wire prodXY_uid116_pT1_uid104_invPolyEval_cma_reset;
    (* preserve *) reg [9:0] prodXY_uid116_pT1_uid104_invPolyEval_cma_a0 [0:0];
    (* preserve *) reg signed [10:0] prodXY_uid116_pT1_uid104_invPolyEval_cma_c0 [0:0];
    wire signed [10:0] prodXY_uid116_pT1_uid104_invPolyEval_cma_l [0:0];
    wire signed [21:0] prodXY_uid116_pT1_uid104_invPolyEval_cma_p [0:0];
    wire signed [21:0] prodXY_uid116_pT1_uid104_invPolyEval_cma_u [0:0];
    wire signed [21:0] prodXY_uid116_pT1_uid104_invPolyEval_cma_w [0:0];
    wire signed [21:0] prodXY_uid116_pT1_uid104_invPolyEval_cma_x [0:0];
    wire signed [21:0] prodXY_uid116_pT1_uid104_invPolyEval_cma_y [0:0];
    reg signed [21:0] prodXY_uid116_pT1_uid104_invPolyEval_cma_s [0:0];
    wire [21:0] prodXY_uid116_pT1_uid104_invPolyEval_cma_qq;
    wire [19:0] prodXY_uid116_pT1_uid104_invPolyEval_cma_q;
    wire prodXY_uid116_pT1_uid104_invPolyEval_cma_ena0;
    wire prodXY_uid116_pT1_uid104_invPolyEval_cma_ena1;
    wire prodXY_uid119_pT2_uid110_invPolyEval_cma_reset;
    (* preserve *) reg [11:0] prodXY_uid119_pT2_uid110_invPolyEval_cma_a0 [0:0];
    (* preserve *) reg signed [18:0] prodXY_uid119_pT2_uid110_invPolyEval_cma_c0 [0:0];
    wire signed [12:0] prodXY_uid119_pT2_uid110_invPolyEval_cma_l [0:0];
    wire signed [31:0] prodXY_uid119_pT2_uid110_invPolyEval_cma_p [0:0];
    wire signed [31:0] prodXY_uid119_pT2_uid110_invPolyEval_cma_u [0:0];
    wire signed [31:0] prodXY_uid119_pT2_uid110_invPolyEval_cma_w [0:0];
    wire signed [31:0] prodXY_uid119_pT2_uid110_invPolyEval_cma_x [0:0];
    wire signed [31:0] prodXY_uid119_pT2_uid110_invPolyEval_cma_y [0:0];
    reg signed [31:0] prodXY_uid119_pT2_uid110_invPolyEval_cma_s [0:0];
    wire [31:0] prodXY_uid119_pT2_uid110_invPolyEval_cma_qq;
    wire [30:0] prodXY_uid119_pT2_uid110_invPolyEval_cma_q;
    wire prodXY_uid119_pT2_uid110_invPolyEval_cma_ena0;
    wire prodXY_uid119_pT2_uid110_invPolyEval_cma_ena1;
    wire squaredResult_uid42_block_rsrvd_fix_im8_cma_reset;
    (* preserve *) reg [17:0] squaredResult_uid42_block_rsrvd_fix_im8_cma_a0 [0:0];
    (* preserve *) reg [17:0] squaredResult_uid42_block_rsrvd_fix_im8_cma_c0 [0:0];
    wire [35:0] squaredResult_uid42_block_rsrvd_fix_im8_cma_p [0:0];
    wire [35:0] squaredResult_uid42_block_rsrvd_fix_im8_cma_u [0:0];
    wire [35:0] squaredResult_uid42_block_rsrvd_fix_im8_cma_w [0:0];
    wire [35:0] squaredResult_uid42_block_rsrvd_fix_im8_cma_x [0:0];
    wire [35:0] squaredResult_uid42_block_rsrvd_fix_im8_cma_y [0:0];
    reg [35:0] squaredResult_uid42_block_rsrvd_fix_im8_cma_s [0:0];
    wire [35:0] squaredResult_uid42_block_rsrvd_fix_im8_cma_qq;
    wire [35:0] squaredResult_uid42_block_rsrvd_fix_im8_cma_q;
    wire squaredResult_uid42_block_rsrvd_fix_im8_cma_ena0;
    wire squaredResult_uid42_block_rsrvd_fix_im8_cma_ena1;
    wire squaredResult_uid42_block_rsrvd_fix_ma3_cma_reset;
    (* preserve *) reg [0:0] squaredResult_uid42_block_rsrvd_fix_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] squaredResult_uid42_block_rsrvd_fix_ma3_cma_c0 [0:1];
    wire [18:0] squaredResult_uid42_block_rsrvd_fix_ma3_cma_p [0:1];
    wire [19:0] squaredResult_uid42_block_rsrvd_fix_ma3_cma_u [0:1];
    wire [19:0] squaredResult_uid42_block_rsrvd_fix_ma3_cma_w [0:0];
    wire [19:0] squaredResult_uid42_block_rsrvd_fix_ma3_cma_x [0:0];
    wire [19:0] squaredResult_uid42_block_rsrvd_fix_ma3_cma_y [0:0];
    reg [19:0] squaredResult_uid42_block_rsrvd_fix_ma3_cma_s [0:0];
    wire [19:0] squaredResult_uid42_block_rsrvd_fix_ma3_cma_qq;
    wire [19:0] squaredResult_uid42_block_rsrvd_fix_ma3_cma_q;
    wire squaredResult_uid42_block_rsrvd_fix_ma3_cma_ena0;
    wire squaredResult_uid42_block_rsrvd_fix_ma3_cma_ena1;
    wire [0:0] squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_b;
    wire [17:0] squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_c;
    wire [0:0] expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_b;
    wire [16:0] expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c;
    reg [0:0] redist0_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [16:0] redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3_q;
    reg [16:0] redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3_delay_0;
    reg [0:0] redist2_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_b_1_q;
    reg [17:0] redist3_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_c_1_q;
    reg [19:0] redist4_squaredResult_uid42_block_rsrvd_fix_ma3_cma_q_1_q;
    reg [35:0] redist5_squaredResult_uid42_block_rsrvd_fix_im8_cma_q_1_q;
    reg [1:0] redist6_squaredResult_uid42_block_rsrvd_fix_im0_q_1_q;
    reg [17:0] redist7_highBBits_uid112_invPolyEval_b_1_q;
    reg [1:0] redist8_lowRangeB_uid111_invPolyEval_b_1_q;
    reg [18:0] redist9_s1_uid108_invPolyEval_q_1_q;
    reg [9:0] redist10_highBBits_uid106_invPolyEval_b_1_q;
    reg [0:0] redist11_lowRangeB_uid105_invPolyEval_b_1_q;
    reg [0:0] redist12_negZero_uid85_block_rsrvd_fix_q_3_q;
    reg [0:0] redist12_negZero_uid85_block_rsrvd_fix_q_3_delay_0;
    reg [7:0] redist13_expRR_uid77_block_rsrvd_fix_b_1_q;
    reg [1:0] redist14_fracSel_uid74_block_rsrvd_fix_q_3_q;
    reg [1:0] redist14_fracSel_uid74_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist16_expIncPEOnly_uid38_block_rsrvd_fix_b_7_q;
    reg [11:0] redist17_yForPe_uid36_block_rsrvd_fix_b_4_q;
    reg [11:0] redist17_yForPe_uid36_block_rsrvd_fix_b_4_delay_0;
    reg [11:0] redist17_yForPe_uid36_block_rsrvd_fix_b_4_delay_1;
    reg [5:0] redist18_yAddr_uid35_block_rsrvd_fix_b_2_q;
    reg [5:0] redist18_yAddr_uid35_block_rsrvd_fix_b_2_delay_0;
    reg [5:0] redist19_yAddr_uid35_block_rsrvd_fix_b_6_q;
    reg [5:0] redist19_yAddr_uid35_block_rsrvd_fix_b_6_delay_0;
    reg [5:0] redist19_yAddr_uid35_block_rsrvd_fix_b_6_delay_1;
    reg [5:0] redist19_yAddr_uid35_block_rsrvd_fix_b_6_delay_2;
    reg [7:0] redist20_expRMux_uid31_block_rsrvd_fix_q_3_q;
    reg [7:0] redist20_expRMux_uid31_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist21_expOddSelect_uid30_block_rsrvd_fix_q_11_q;
    reg [0:0] redist22_expOddSelect_uid30_block_rsrvd_fix_q_12_q;
    reg [7:0] redist23_expROdd_uid28_block_rsrvd_fix_b_1_q;
    reg [7:0] redist24_expREven_uid25_block_rsrvd_fix_b_1_q;
    reg [0:0] redist25_excZ_x_uid13_block_rsrvd_fix_q_2_q;
    reg [0:0] redist27_signX_uid7_block_rsrvd_fix_b_12_q;
    reg [0:0] redist28_signX_uid7_block_rsrvd_fix_b_13_q;
    reg [16:0] redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3_inputreg0_q;
    reg [17:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_inputreg0_q;
    reg [17:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_outputreg0_q;
    wire redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_reset0;
    wire [17:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_ia;
    wire [1:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_aa;
    wire [1:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_ab;
    wire [17:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_iq;
    wire [17:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_q;
    wire [1:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_q;
    (* preserve *) reg [1:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_i;
    (* preserve *) reg redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_eq;
    reg [1:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_wraddr_q;
    wire [1:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_last_q;
    wire [0:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_cmp_q;
    (* dont_merge *) reg [0:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_cmpReg_q;
    wire [0:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_notEnable_q;
    wire [0:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_nor_q;
    (* dont_merge *) reg [0:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_sticky_ena_q;
    wire [0:0] redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_enaAnd_q;
    reg [11:0] redist17_yForPe_uid36_block_rsrvd_fix_b_4_inputreg0_q;
    reg [16:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_inputreg0_q;
    reg [16:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_outputreg0_q;
    wire redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_reset0;
    wire [16:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_ia;
    wire [2:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_aa;
    wire [2:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_ab;
    wire [16:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_iq;
    wire [16:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_q;
    wire [2:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_rdcnt_q;
    (* preserve *) reg [2:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_rdcnt_i;
    reg [2:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_wraddr_q;
    wire [3:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_last_q;
    wire [3:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_cmp_b;
    wire [0:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_cmp_q;
    (* dont_merge *) reg [0:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_cmpReg_q;
    wire [0:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_notEnable_q;
    wire [0:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_nor_q;
    (* dont_merge *) reg [0:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_sticky_ena_q;
    wire [0:0] redist26_frac_x_uid12_block_rsrvd_fix_b_11_enaAnd_q;
    reg [7:0] redist29_expX_uid6_block_rsrvd_fix_b_11_inputreg0_q;
    reg [7:0] redist29_expX_uid6_block_rsrvd_fix_b_11_outputreg0_q;
    wire redist29_expX_uid6_block_rsrvd_fix_b_11_mem_reset0;
    wire [7:0] redist29_expX_uid6_block_rsrvd_fix_b_11_mem_ia;
    wire [2:0] redist29_expX_uid6_block_rsrvd_fix_b_11_mem_aa;
    wire [2:0] redist29_expX_uid6_block_rsrvd_fix_b_11_mem_ab;
    wire [7:0] redist29_expX_uid6_block_rsrvd_fix_b_11_mem_iq;
    wire [7:0] redist29_expX_uid6_block_rsrvd_fix_b_11_mem_q;
    wire [2:0] redist29_expX_uid6_block_rsrvd_fix_b_11_rdcnt_q;
    (* preserve *) reg [2:0] redist29_expX_uid6_block_rsrvd_fix_b_11_rdcnt_i;
    reg [2:0] redist29_expX_uid6_block_rsrvd_fix_b_11_wraddr_q;
    wire [3:0] redist29_expX_uid6_block_rsrvd_fix_b_11_mem_last_q;
    wire [3:0] redist29_expX_uid6_block_rsrvd_fix_b_11_cmp_b;
    wire [0:0] redist29_expX_uid6_block_rsrvd_fix_b_11_cmp_q;
    (* dont_merge *) reg [0:0] redist29_expX_uid6_block_rsrvd_fix_b_11_cmpReg_q;
    wire [0:0] redist29_expX_uid6_block_rsrvd_fix_b_11_notEnable_q;
    wire [0:0] redist29_expX_uid6_block_rsrvd_fix_b_11_nor_q;
    (* dont_merge *) reg [0:0] redist29_expX_uid6_block_rsrvd_fix_b_11_sticky_ena_q;
    wire [0:0] redist29_expX_uid6_block_rsrvd_fix_b_11_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // signX_uid7_block_rsrvd_fix(BITSELECT,6)@0
    assign signX_uid7_block_rsrvd_fix_b = $unsigned(in_0[25:25]);

    // redist27_signX_uid7_block_rsrvd_fix_b_12(DELAY,169)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist27_signX_uid7_block_rsrvd_fix_b_12 ( .xin(signX_uid7_block_rsrvd_fix_b), .xout(redist27_signX_uid7_block_rsrvd_fix_b_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist28_signX_uid7_block_rsrvd_fix_b_13(DELAY,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_signX_uid7_block_rsrvd_fix_b_13_q <= '0;
        end
        else
        begin
            redist28_signX_uid7_block_rsrvd_fix_b_13_q <= $unsigned(redist27_signX_uid7_block_rsrvd_fix_b_12_q);
        end
    end

    // cstAllZWE_uid10_block_rsrvd_fix(CONSTANT,9)
    assign cstAllZWE_uid10_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // redist29_expX_uid6_block_rsrvd_fix_b_11_notEnable(LOGICAL,206)
    assign redist29_expX_uid6_block_rsrvd_fix_b_11_notEnable_q = $unsigned(~ (VCC_q));

    // redist29_expX_uid6_block_rsrvd_fix_b_11_nor(LOGICAL,207)
    assign redist29_expX_uid6_block_rsrvd_fix_b_11_nor_q = ~ (redist29_expX_uid6_block_rsrvd_fix_b_11_notEnable_q | redist29_expX_uid6_block_rsrvd_fix_b_11_sticky_ena_q);

    // redist29_expX_uid6_block_rsrvd_fix_b_11_mem_last(CONSTANT,203)
    assign redist29_expX_uid6_block_rsrvd_fix_b_11_mem_last_q = $unsigned(4'b0110);

    // redist29_expX_uid6_block_rsrvd_fix_b_11_cmp(LOGICAL,204)
    assign redist29_expX_uid6_block_rsrvd_fix_b_11_cmp_b = {1'b0, redist29_expX_uid6_block_rsrvd_fix_b_11_rdcnt_q};
    assign redist29_expX_uid6_block_rsrvd_fix_b_11_cmp_q = $unsigned(redist29_expX_uid6_block_rsrvd_fix_b_11_mem_last_q == redist29_expX_uid6_block_rsrvd_fix_b_11_cmp_b ? 1'b1 : 1'b0);

    // redist29_expX_uid6_block_rsrvd_fix_b_11_cmpReg(REG,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_expX_uid6_block_rsrvd_fix_b_11_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist29_expX_uid6_block_rsrvd_fix_b_11_cmpReg_q <= $unsigned(redist29_expX_uid6_block_rsrvd_fix_b_11_cmp_q);
        end
    end

    // redist29_expX_uid6_block_rsrvd_fix_b_11_sticky_ena(REG,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_expX_uid6_block_rsrvd_fix_b_11_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist29_expX_uid6_block_rsrvd_fix_b_11_nor_q == 1'b1)
        begin
            redist29_expX_uid6_block_rsrvd_fix_b_11_sticky_ena_q <= $unsigned(redist29_expX_uid6_block_rsrvd_fix_b_11_cmpReg_q);
        end
    end

    // redist29_expX_uid6_block_rsrvd_fix_b_11_enaAnd(LOGICAL,209)
    assign redist29_expX_uid6_block_rsrvd_fix_b_11_enaAnd_q = redist29_expX_uid6_block_rsrvd_fix_b_11_sticky_ena_q & VCC_q;

    // redist29_expX_uid6_block_rsrvd_fix_b_11_rdcnt(COUNTER,201)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_expX_uid6_block_rsrvd_fix_b_11_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist29_expX_uid6_block_rsrvd_fix_b_11_rdcnt_i <= $unsigned(redist29_expX_uid6_block_rsrvd_fix_b_11_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist29_expX_uid6_block_rsrvd_fix_b_11_rdcnt_q = redist29_expX_uid6_block_rsrvd_fix_b_11_rdcnt_i[2:0];

    // expX_uid6_block_rsrvd_fix(BITSELECT,5)@0
    assign expX_uid6_block_rsrvd_fix_b = in_0[24:17];

    // redist29_expX_uid6_block_rsrvd_fix_b_11_inputreg0(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_expX_uid6_block_rsrvd_fix_b_11_inputreg0_q <= '0;
        end
        else
        begin
            redist29_expX_uid6_block_rsrvd_fix_b_11_inputreg0_q <= $unsigned(expX_uid6_block_rsrvd_fix_b);
        end
    end

    // redist29_expX_uid6_block_rsrvd_fix_b_11_wraddr(REG,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_expX_uid6_block_rsrvd_fix_b_11_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist29_expX_uid6_block_rsrvd_fix_b_11_wraddr_q <= $unsigned(redist29_expX_uid6_block_rsrvd_fix_b_11_rdcnt_q);
        end
    end

    // redist29_expX_uid6_block_rsrvd_fix_b_11_mem(DUALMEM,200)
    assign redist29_expX_uid6_block_rsrvd_fix_b_11_mem_ia = $unsigned(redist29_expX_uid6_block_rsrvd_fix_b_11_inputreg0_q);
    assign redist29_expX_uid6_block_rsrvd_fix_b_11_mem_aa = redist29_expX_uid6_block_rsrvd_fix_b_11_wraddr_q;
    assign redist29_expX_uid6_block_rsrvd_fix_b_11_mem_ab = redist29_expX_uid6_block_rsrvd_fix_b_11_rdcnt_q;
    assign redist29_expX_uid6_block_rsrvd_fix_b_11_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(8),
        .widthad_b(3),
        .numwords_b(8),
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
    ) redist29_expX_uid6_block_rsrvd_fix_b_11_mem_dmem (
        .clocken1(redist29_expX_uid6_block_rsrvd_fix_b_11_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist29_expX_uid6_block_rsrvd_fix_b_11_mem_reset0),
        .clock1(clock),
        .address_a(redist29_expX_uid6_block_rsrvd_fix_b_11_mem_aa),
        .data_a(redist29_expX_uid6_block_rsrvd_fix_b_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_expX_uid6_block_rsrvd_fix_b_11_mem_ab),
        .q_b(redist29_expX_uid6_block_rsrvd_fix_b_11_mem_iq),
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
    assign redist29_expX_uid6_block_rsrvd_fix_b_11_mem_q = redist29_expX_uid6_block_rsrvd_fix_b_11_mem_iq[7:0];

    // redist29_expX_uid6_block_rsrvd_fix_b_11_outputreg0(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_expX_uid6_block_rsrvd_fix_b_11_outputreg0_q <= '0;
        end
        else
        begin
            redist29_expX_uid6_block_rsrvd_fix_b_11_outputreg0_q <= $unsigned(redist29_expX_uid6_block_rsrvd_fix_b_11_mem_q);
        end
    end

    // excZ_x_uid13_block_rsrvd_fix(LOGICAL,12)@11 + 1
    assign excZ_x_uid13_block_rsrvd_fix_qi = $unsigned(redist29_expX_uid6_block_rsrvd_fix_b_11_outputreg0_q == cstAllZWE_uid10_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid13_block_rsrvd_fix_delay ( .xin(excZ_x_uid13_block_rsrvd_fix_qi), .xout(excZ_x_uid13_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist25_excZ_x_uid13_block_rsrvd_fix_q_2(DELAY,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_excZ_x_uid13_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist25_excZ_x_uid13_block_rsrvd_fix_q_2_q <= $unsigned(excZ_x_uid13_block_rsrvd_fix_q);
        end
    end

    // negZero_uid85_block_rsrvd_fix(LOGICAL,84)@13 + 1
    assign negZero_uid85_block_rsrvd_fix_qi = redist25_excZ_x_uid13_block_rsrvd_fix_q_2_q & redist28_signX_uid7_block_rsrvd_fix_b_13_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    negZero_uid85_block_rsrvd_fix_delay ( .xin(negZero_uid85_block_rsrvd_fix_qi), .xout(negZero_uid85_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_negZero_uid85_block_rsrvd_fix_q_3(DELAY,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_negZero_uid85_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist12_negZero_uid85_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist12_negZero_uid85_block_rsrvd_fix_q_3_delay_0 <= $unsigned(negZero_uid85_block_rsrvd_fix_q);
            redist12_negZero_uid85_block_rsrvd_fix_q_3_q <= redist12_negZero_uid85_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // cstAllOWE_uid8_block_rsrvd_fix(CONSTANT,7)
    assign cstAllOWE_uid8_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist26_frac_x_uid12_block_rsrvd_fix_b_11_notEnable(LOGICAL,194)
    assign redist26_frac_x_uid12_block_rsrvd_fix_b_11_notEnable_q = $unsigned(~ (VCC_q));

    // redist26_frac_x_uid12_block_rsrvd_fix_b_11_nor(LOGICAL,195)
    assign redist26_frac_x_uid12_block_rsrvd_fix_b_11_nor_q = ~ (redist26_frac_x_uid12_block_rsrvd_fix_b_11_notEnable_q | redist26_frac_x_uid12_block_rsrvd_fix_b_11_sticky_ena_q);

    // redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_last(CONSTANT,191)
    assign redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_last_q = $unsigned(4'b0110);

    // redist26_frac_x_uid12_block_rsrvd_fix_b_11_cmp(LOGICAL,192)
    assign redist26_frac_x_uid12_block_rsrvd_fix_b_11_cmp_b = {1'b0, redist26_frac_x_uid12_block_rsrvd_fix_b_11_rdcnt_q};
    assign redist26_frac_x_uid12_block_rsrvd_fix_b_11_cmp_q = $unsigned(redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_last_q == redist26_frac_x_uid12_block_rsrvd_fix_b_11_cmp_b ? 1'b1 : 1'b0);

    // redist26_frac_x_uid12_block_rsrvd_fix_b_11_cmpReg(REG,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_frac_x_uid12_block_rsrvd_fix_b_11_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist26_frac_x_uid12_block_rsrvd_fix_b_11_cmpReg_q <= $unsigned(redist26_frac_x_uid12_block_rsrvd_fix_b_11_cmp_q);
        end
    end

    // redist26_frac_x_uid12_block_rsrvd_fix_b_11_sticky_ena(REG,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_frac_x_uid12_block_rsrvd_fix_b_11_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist26_frac_x_uid12_block_rsrvd_fix_b_11_nor_q == 1'b1)
        begin
            redist26_frac_x_uid12_block_rsrvd_fix_b_11_sticky_ena_q <= $unsigned(redist26_frac_x_uid12_block_rsrvd_fix_b_11_cmpReg_q);
        end
    end

    // redist26_frac_x_uid12_block_rsrvd_fix_b_11_enaAnd(LOGICAL,197)
    assign redist26_frac_x_uid12_block_rsrvd_fix_b_11_enaAnd_q = redist26_frac_x_uid12_block_rsrvd_fix_b_11_sticky_ena_q & VCC_q;

    // redist26_frac_x_uid12_block_rsrvd_fix_b_11_rdcnt(COUNTER,189)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_frac_x_uid12_block_rsrvd_fix_b_11_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist26_frac_x_uid12_block_rsrvd_fix_b_11_rdcnt_i <= $unsigned(redist26_frac_x_uid12_block_rsrvd_fix_b_11_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist26_frac_x_uid12_block_rsrvd_fix_b_11_rdcnt_q = redist26_frac_x_uid12_block_rsrvd_fix_b_11_rdcnt_i[2:0];

    // frac_x_uid12_block_rsrvd_fix(BITSELECT,11)@0
    assign frac_x_uid12_block_rsrvd_fix_b = in_0[16:0];

    // redist26_frac_x_uid12_block_rsrvd_fix_b_11_inputreg0(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_frac_x_uid12_block_rsrvd_fix_b_11_inputreg0_q <= '0;
        end
        else
        begin
            redist26_frac_x_uid12_block_rsrvd_fix_b_11_inputreg0_q <= $unsigned(frac_x_uid12_block_rsrvd_fix_b);
        end
    end

    // redist26_frac_x_uid12_block_rsrvd_fix_b_11_wraddr(REG,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_frac_x_uid12_block_rsrvd_fix_b_11_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist26_frac_x_uid12_block_rsrvd_fix_b_11_wraddr_q <= $unsigned(redist26_frac_x_uid12_block_rsrvd_fix_b_11_rdcnt_q);
        end
    end

    // redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem(DUALMEM,188)
    assign redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_ia = $unsigned(redist26_frac_x_uid12_block_rsrvd_fix_b_11_inputreg0_q);
    assign redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_aa = redist26_frac_x_uid12_block_rsrvd_fix_b_11_wraddr_q;
    assign redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_ab = redist26_frac_x_uid12_block_rsrvd_fix_b_11_rdcnt_q;
    assign redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(17),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(17),
        .widthad_b(3),
        .numwords_b(8),
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
    ) redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_dmem (
        .clocken1(redist26_frac_x_uid12_block_rsrvd_fix_b_11_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_reset0),
        .clock1(clock),
        .address_a(redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_aa),
        .data_a(redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_ab),
        .q_b(redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_iq),
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
    assign redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_q = redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_iq[16:0];

    // redist26_frac_x_uid12_block_rsrvd_fix_b_11_outputreg0(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_frac_x_uid12_block_rsrvd_fix_b_11_outputreg0_q <= '0;
        end
        else
        begin
            redist26_frac_x_uid12_block_rsrvd_fix_b_11_outputreg0_q <= $unsigned(redist26_frac_x_uid12_block_rsrvd_fix_b_11_mem_q);
        end
    end

    // oFracX_uid44_block_rsrvd_fix(BITJOIN,43)@11
    assign oFracX_uid44_block_rsrvd_fix_q = {VCC_q, redist26_frac_x_uid12_block_rsrvd_fix_b_11_outputreg0_q};

    // oFracXZ_mergedSignalTM_uid47_block_rsrvd_fix(BITJOIN,46)@11
    assign oFracXZ_mergedSignalTM_uid47_block_rsrvd_fix_q = {oFracX_uid44_block_rsrvd_fix_q, GND_q};

    // oFracXSignExt_mergedSignalTM_uid52_block_rsrvd_fix(BITJOIN,51)@11
    assign oFracXSignExt_mergedSignalTM_uid52_block_rsrvd_fix_q = {GND_q, oFracX_uid44_block_rsrvd_fix_q};

    // expX0PS_uid29_block_rsrvd_fix(BITSELECT,28)@0
    assign expX0PS_uid29_block_rsrvd_fix_in = $unsigned(expX_uid6_block_rsrvd_fix_b[0:0]);
    assign expX0PS_uid29_block_rsrvd_fix_b = $unsigned(expX0PS_uid29_block_rsrvd_fix_in[0:0]);

    // expOddSelect_uid30_block_rsrvd_fix(LOGICAL,29)@0
    assign expOddSelect_uid30_block_rsrvd_fix_q = ~ (expX0PS_uid29_block_rsrvd_fix_b);

    // redist21_expOddSelect_uid30_block_rsrvd_fix_q_11(DELAY,163)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_expOddSelect_uid30_block_rsrvd_fix_q_11 ( .xin(expOddSelect_uid30_block_rsrvd_fix_q), .xout(redist21_expOddSelect_uid30_block_rsrvd_fix_q_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // normalizedXForComp_uid54_block_rsrvd_fix(MUX,53)@11 + 1
    assign normalizedXForComp_uid54_block_rsrvd_fix_s = redist21_expOddSelect_uid30_block_rsrvd_fix_q_11_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            normalizedXForComp_uid54_block_rsrvd_fix_q <= 19'b0;
        end
        else
        begin
            unique case (normalizedXForComp_uid54_block_rsrvd_fix_s)
                1'b0 : normalizedXForComp_uid54_block_rsrvd_fix_q <= oFracXSignExt_mergedSignalTM_uid52_block_rsrvd_fix_q;
                1'b1 : normalizedXForComp_uid54_block_rsrvd_fix_q <= oFracXZ_mergedSignalTM_uid47_block_rsrvd_fix_q;
                default : normalizedXForComp_uid54_block_rsrvd_fix_q <= 19'b0;
            endcase
        end
    end

    // paddingY_uid55_block_rsrvd_fix(CONSTANT,54)
    assign paddingY_uid55_block_rsrvd_fix_q = $unsigned(19'b0000000000000000000);

    // updatedY_uid56_block_rsrvd_fix(BITJOIN,55)@12
    assign updatedY_uid56_block_rsrvd_fix_q = {normalizedXForComp_uid54_block_rsrvd_fix_q, paddingY_uid55_block_rsrvd_fix_q};

    // addrFull_uid33_block_rsrvd_fix(BITJOIN,32)@0
    assign addrFull_uid33_block_rsrvd_fix_q = {expOddSelect_uid30_block_rsrvd_fix_q, frac_x_uid12_block_rsrvd_fix_b};

    // yAddr_uid35_block_rsrvd_fix(BITSELECT,34)@0
    assign yAddr_uid35_block_rsrvd_fix_b = addrFull_uid33_block_rsrvd_fix_q[17:12];

    // memoryC2_uid97_sqrtTables(LOOKUP,96)@0
    always @(yAddr_uid35_block_rsrvd_fix_b)
    begin
        // Begin reserved scope level
        unique case (yAddr_uid35_block_rsrvd_fix_b)
            6'b000000 : memoryC2_uid97_sqrtTables_q = 10'b1100000110;
            6'b000001 : memoryC2_uid97_sqrtTables_q = 10'b1100010010;
            6'b000010 : memoryC2_uid97_sqrtTables_q = 10'b1100011100;
            6'b000011 : memoryC2_uid97_sqrtTables_q = 10'b1100100011;
            6'b000100 : memoryC2_uid97_sqrtTables_q = 10'b1100101111;
            6'b000101 : memoryC2_uid97_sqrtTables_q = 10'b1100110101;
            6'b000110 : memoryC2_uid97_sqrtTables_q = 10'b1100111101;
            6'b000111 : memoryC2_uid97_sqrtTables_q = 10'b1101000100;
            6'b001000 : memoryC2_uid97_sqrtTables_q = 10'b1101001100;
            6'b001001 : memoryC2_uid97_sqrtTables_q = 10'b1101010010;
            6'b001010 : memoryC2_uid97_sqrtTables_q = 10'b1101011001;
            6'b001011 : memoryC2_uid97_sqrtTables_q = 10'b1101100001;
            6'b001100 : memoryC2_uid97_sqrtTables_q = 10'b1101100100;
            6'b001101 : memoryC2_uid97_sqrtTables_q = 10'b1101101000;
            6'b001110 : memoryC2_uid97_sqrtTables_q = 10'b1101101101;
            6'b001111 : memoryC2_uid97_sqrtTables_q = 10'b1101110001;
            6'b010000 : memoryC2_uid97_sqrtTables_q = 10'b1101110110;
            6'b010001 : memoryC2_uid97_sqrtTables_q = 10'b1101111010;
            6'b010010 : memoryC2_uid97_sqrtTables_q = 10'b1110000000;
            6'b010011 : memoryC2_uid97_sqrtTables_q = 10'b1110000100;
            6'b010100 : memoryC2_uid97_sqrtTables_q = 10'b1110001000;
            6'b010101 : memoryC2_uid97_sqrtTables_q = 10'b1110001001;
            6'b010110 : memoryC2_uid97_sqrtTables_q = 10'b1110001011;
            6'b010111 : memoryC2_uid97_sqrtTables_q = 10'b1110001110;
            6'b011000 : memoryC2_uid97_sqrtTables_q = 10'b1110010010;
            6'b011001 : memoryC2_uid97_sqrtTables_q = 10'b1110010101;
            6'b011010 : memoryC2_uid97_sqrtTables_q = 10'b1110011000;
            6'b011011 : memoryC2_uid97_sqrtTables_q = 10'b1110011101;
            6'b011100 : memoryC2_uid97_sqrtTables_q = 10'b1110011110;
            6'b011101 : memoryC2_uid97_sqrtTables_q = 10'b1110011111;
            6'b011110 : memoryC2_uid97_sqrtTables_q = 10'b1110100010;
            6'b011111 : memoryC2_uid97_sqrtTables_q = 10'b1110100101;
            6'b100000 : memoryC2_uid97_sqrtTables_q = 10'b1010011110;
            6'b100001 : memoryC2_uid97_sqrtTables_q = 10'b1010101101;
            6'b100010 : memoryC2_uid97_sqrtTables_q = 10'b1010111011;
            6'b100011 : memoryC2_uid97_sqrtTables_q = 10'b1011001011;
            6'b100100 : memoryC2_uid97_sqrtTables_q = 10'b1011010110;
            6'b100101 : memoryC2_uid97_sqrtTables_q = 10'b1011100011;
            6'b100110 : memoryC2_uid97_sqrtTables_q = 10'b1011101100;
            6'b100111 : memoryC2_uid97_sqrtTables_q = 10'b1011111000;
            6'b101000 : memoryC2_uid97_sqrtTables_q = 10'b1100000011;
            6'b101001 : memoryC2_uid97_sqrtTables_q = 10'b1100001001;
            6'b101010 : memoryC2_uid97_sqrtTables_q = 10'b1100010100;
            6'b101011 : memoryC2_uid97_sqrtTables_q = 10'b1100011010;
            6'b101100 : memoryC2_uid97_sqrtTables_q = 10'b1100100011;
            6'b101101 : memoryC2_uid97_sqrtTables_q = 10'b1100101010;
            6'b101110 : memoryC2_uid97_sqrtTables_q = 10'b1100110000;
            6'b101111 : memoryC2_uid97_sqrtTables_q = 10'b1100111010;
            6'b110000 : memoryC2_uid97_sqrtTables_q = 10'b1100111110;
            6'b110001 : memoryC2_uid97_sqrtTables_q = 10'b1101000100;
            6'b110010 : memoryC2_uid97_sqrtTables_q = 10'b1101001001;
            6'b110011 : memoryC2_uid97_sqrtTables_q = 10'b1101001101;
            6'b110100 : memoryC2_uid97_sqrtTables_q = 10'b1101010100;
            6'b110101 : memoryC2_uid97_sqrtTables_q = 10'b1101010111;
            6'b110110 : memoryC2_uid97_sqrtTables_q = 10'b1101011101;
            6'b110111 : memoryC2_uid97_sqrtTables_q = 10'b1101100001;
            6'b111000 : memoryC2_uid97_sqrtTables_q = 10'b1101100110;
            6'b111001 : memoryC2_uid97_sqrtTables_q = 10'b1101101010;
            6'b111010 : memoryC2_uid97_sqrtTables_q = 10'b1101101011;
            6'b111011 : memoryC2_uid97_sqrtTables_q = 10'b1101110001;
            6'b111100 : memoryC2_uid97_sqrtTables_q = 10'b1101110011;
            6'b111101 : memoryC2_uid97_sqrtTables_q = 10'b1101111000;
            6'b111110 : memoryC2_uid97_sqrtTables_q = 10'b1101111100;
            6'b111111 : memoryC2_uid97_sqrtTables_q = 10'b1101111111;
            default : begin
                          // unreachable
                          memoryC2_uid97_sqrtTables_q = 10'bxxxxxxxxxx;
                      end
        endcase
        // End reserved scope level
    end

    // yForPe_uid36_block_rsrvd_fix(BITSELECT,35)@0
    assign yForPe_uid36_block_rsrvd_fix_in = frac_x_uid12_block_rsrvd_fix_b[11:0];
    assign yForPe_uid36_block_rsrvd_fix_b = yForPe_uid36_block_rsrvd_fix_in[11:0];

    // yT1_uid103_invPolyEval(BITSELECT,102)@0
    assign yT1_uid103_invPolyEval_b = yForPe_uid36_block_rsrvd_fix_b[11:2];

    // prodXY_uid116_pT1_uid104_invPolyEval_cma(CHAINMULTADD,136)@0 + 2
    assign prodXY_uid116_pT1_uid104_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid116_pT1_uid104_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid116_pT1_uid104_invPolyEval_cma_ena1 = prodXY_uid116_pT1_uid104_invPolyEval_cma_ena0;
    assign prodXY_uid116_pT1_uid104_invPolyEval_cma_l[0] = $signed({1'b0, prodXY_uid116_pT1_uid104_invPolyEval_cma_a0[0][9:0]});
    assign prodXY_uid116_pT1_uid104_invPolyEval_cma_p[0] = prodXY_uid116_pT1_uid104_invPolyEval_cma_l[0] * prodXY_uid116_pT1_uid104_invPolyEval_cma_c0[0];
    assign prodXY_uid116_pT1_uid104_invPolyEval_cma_u[0] = prodXY_uid116_pT1_uid104_invPolyEval_cma_p[0][21:0];
    assign prodXY_uid116_pT1_uid104_invPolyEval_cma_w[0] = prodXY_uid116_pT1_uid104_invPolyEval_cma_u[0];
    assign prodXY_uid116_pT1_uid104_invPolyEval_cma_x[0] = prodXY_uid116_pT1_uid104_invPolyEval_cma_w[0];
    assign prodXY_uid116_pT1_uid104_invPolyEval_cma_y[0] = prodXY_uid116_pT1_uid104_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid116_pT1_uid104_invPolyEval_cma_a0 <= '{default: '0};
            prodXY_uid116_pT1_uid104_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid116_pT1_uid104_invPolyEval_cma_ena0 == 1'b1)
            begin
                prodXY_uid116_pT1_uid104_invPolyEval_cma_a0[0] <= yT1_uid103_invPolyEval_b;
                prodXY_uid116_pT1_uid104_invPolyEval_cma_c0[0] <= {{1{memoryC2_uid97_sqrtTables_q[9]}}, memoryC2_uid97_sqrtTables_q[9:0]};
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid116_pT1_uid104_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid116_pT1_uid104_invPolyEval_cma_ena1 == 1'b1)
            begin
                prodXY_uid116_pT1_uid104_invPolyEval_cma_s[0] <= prodXY_uid116_pT1_uid104_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(22), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid116_pT1_uid104_invPolyEval_cma_delay ( .xin(prodXY_uid116_pT1_uid104_invPolyEval_cma_s[0]), .xout(prodXY_uid116_pT1_uid104_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid116_pT1_uid104_invPolyEval_cma_q = $unsigned(prodXY_uid116_pT1_uid104_invPolyEval_cma_qq[19:0]);

    // osig_uid117_pT1_uid104_invPolyEval(BITSELECT,116)@2
    assign osig_uid117_pT1_uid104_invPolyEval_b = $unsigned(prodXY_uid116_pT1_uid104_invPolyEval_cma_q[19:9]);

    // highBBits_uid106_invPolyEval(BITSELECT,105)@2
    assign highBBits_uid106_invPolyEval_b = $unsigned(osig_uid117_pT1_uid104_invPolyEval_b[10:1]);

    // redist10_highBBits_uid106_invPolyEval_b_1(DELAY,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_highBBits_uid106_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist10_highBBits_uid106_invPolyEval_b_1_q <= $unsigned(highBBits_uid106_invPolyEval_b);
        end
    end

    // redist18_yAddr_uid35_block_rsrvd_fix_b_2(DELAY,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_yAddr_uid35_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist18_yAddr_uid35_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist18_yAddr_uid35_block_rsrvd_fix_b_2_delay_0 <= $unsigned(yAddr_uid35_block_rsrvd_fix_b);
            redist18_yAddr_uid35_block_rsrvd_fix_b_2_q <= redist18_yAddr_uid35_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // memoryC1_uid94_sqrtTables(LOOKUP,93)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memoryC1_uid94_sqrtTables_q <= $unsigned(7'b0011111);
        end
        else
        begin
            unique case (redist18_yAddr_uid35_block_rsrvd_fix_b_2_q)
                6'b000000 : memoryC1_uid94_sqrtTables_q <= 7'b0011111;
                6'b000001 : memoryC1_uid94_sqrtTables_q <= 7'b0011111;
                6'b000010 : memoryC1_uid94_sqrtTables_q <= 7'b0011111;
                6'b000011 : memoryC1_uid94_sqrtTables_q <= 7'b0011110;
                6'b000100 : memoryC1_uid94_sqrtTables_q <= 7'b0011110;
                6'b000101 : memoryC1_uid94_sqrtTables_q <= 7'b0011101;
                6'b000110 : memoryC1_uid94_sqrtTables_q <= 7'b0011101;
                6'b000111 : memoryC1_uid94_sqrtTables_q <= 7'b0011100;
                6'b001000 : memoryC1_uid94_sqrtTables_q <= 7'b0011100;
                6'b001001 : memoryC1_uid94_sqrtTables_q <= 7'b0011100;
                6'b001010 : memoryC1_uid94_sqrtTables_q <= 7'b0011011;
                6'b001011 : memoryC1_uid94_sqrtTables_q <= 7'b0011011;
                6'b001100 : memoryC1_uid94_sqrtTables_q <= 7'b0011011;
                6'b001101 : memoryC1_uid94_sqrtTables_q <= 7'b0011010;
                6'b001110 : memoryC1_uid94_sqrtTables_q <= 7'b0011010;
                6'b001111 : memoryC1_uid94_sqrtTables_q <= 7'b0011010;
                6'b010000 : memoryC1_uid94_sqrtTables_q <= 7'b0011010;
                6'b010001 : memoryC1_uid94_sqrtTables_q <= 7'b0011001;
                6'b010010 : memoryC1_uid94_sqrtTables_q <= 7'b0011001;
                6'b010011 : memoryC1_uid94_sqrtTables_q <= 7'b0011001;
                6'b010100 : memoryC1_uid94_sqrtTables_q <= 7'b0011001;
                6'b010101 : memoryC1_uid94_sqrtTables_q <= 7'b0011000;
                6'b010110 : memoryC1_uid94_sqrtTables_q <= 7'b0011000;
                6'b010111 : memoryC1_uid94_sqrtTables_q <= 7'b0011000;
                6'b011000 : memoryC1_uid94_sqrtTables_q <= 7'b0011000;
                6'b011001 : memoryC1_uid94_sqrtTables_q <= 7'b0010111;
                6'b011010 : memoryC1_uid94_sqrtTables_q <= 7'b0010111;
                6'b011011 : memoryC1_uid94_sqrtTables_q <= 7'b0010111;
                6'b011100 : memoryC1_uid94_sqrtTables_q <= 7'b0010111;
                6'b011101 : memoryC1_uid94_sqrtTables_q <= 7'b0010111;
                6'b011110 : memoryC1_uid94_sqrtTables_q <= 7'b0010110;
                6'b011111 : memoryC1_uid94_sqrtTables_q <= 7'b0010110;
                6'b100000 : memoryC1_uid94_sqrtTables_q <= 7'b0101101;
                6'b100001 : memoryC1_uid94_sqrtTables_q <= 7'b0101100;
                6'b100010 : memoryC1_uid94_sqrtTables_q <= 7'b0101011;
                6'b100011 : memoryC1_uid94_sqrtTables_q <= 7'b0101011;
                6'b100100 : memoryC1_uid94_sqrtTables_q <= 7'b0101010;
                6'b100101 : memoryC1_uid94_sqrtTables_q <= 7'b0101010;
                6'b100110 : memoryC1_uid94_sqrtTables_q <= 7'b0101001;
                6'b100111 : memoryC1_uid94_sqrtTables_q <= 7'b0101000;
                6'b101000 : memoryC1_uid94_sqrtTables_q <= 7'b0101000;
                6'b101001 : memoryC1_uid94_sqrtTables_q <= 7'b0100111;
                6'b101010 : memoryC1_uid94_sqrtTables_q <= 7'b0100111;
                6'b101011 : memoryC1_uid94_sqrtTables_q <= 7'b0100111;
                6'b101100 : memoryC1_uid94_sqrtTables_q <= 7'b0100110;
                6'b101101 : memoryC1_uid94_sqrtTables_q <= 7'b0100110;
                6'b101110 : memoryC1_uid94_sqrtTables_q <= 7'b0100101;
                6'b101111 : memoryC1_uid94_sqrtTables_q <= 7'b0100101;
                6'b110000 : memoryC1_uid94_sqrtTables_q <= 7'b0100100;
                6'b110001 : memoryC1_uid94_sqrtTables_q <= 7'b0100100;
                6'b110010 : memoryC1_uid94_sqrtTables_q <= 7'b0100100;
                6'b110011 : memoryC1_uid94_sqrtTables_q <= 7'b0100011;
                6'b110100 : memoryC1_uid94_sqrtTables_q <= 7'b0100011;
                6'b110101 : memoryC1_uid94_sqrtTables_q <= 7'b0100011;
                6'b110110 : memoryC1_uid94_sqrtTables_q <= 7'b0100010;
                6'b110111 : memoryC1_uid94_sqrtTables_q <= 7'b0100010;
                6'b111000 : memoryC1_uid94_sqrtTables_q <= 7'b0100010;
                6'b111001 : memoryC1_uid94_sqrtTables_q <= 7'b0100001;
                6'b111010 : memoryC1_uid94_sqrtTables_q <= 7'b0100001;
                6'b111011 : memoryC1_uid94_sqrtTables_q <= 7'b0100001;
                6'b111100 : memoryC1_uid94_sqrtTables_q <= 7'b0100001;
                6'b111101 : memoryC1_uid94_sqrtTables_q <= 7'b0100000;
                6'b111110 : memoryC1_uid94_sqrtTables_q <= 7'b0100000;
                6'b111111 : memoryC1_uid94_sqrtTables_q <= 7'b0100000;
                default : begin
                              // unreachable
                              memoryC1_uid94_sqrtTables_q <= 7'bxxxxxxx;
                          end
            endcase
        end
    end

    // memoryC1_uid93_sqrtTables(LOOKUP,92)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memoryC1_uid93_sqrtTables_q <= $unsigned(10'b1111111110);
        end
        else
        begin
            unique case (redist18_yAddr_uid35_block_rsrvd_fix_b_2_q)
                6'b000000 : memoryC1_uid93_sqrtTables_q <= 10'b1111111110;
                6'b000001 : memoryC1_uid93_sqrtTables_q <= 10'b1000001001;
                6'b000010 : memoryC1_uid93_sqrtTables_q <= 10'b0000101011;
                6'b000011 : memoryC1_uid93_sqrtTables_q <= 10'b1001100100;
                6'b000100 : memoryC1_uid93_sqrtTables_q <= 10'b0010101011;
                6'b000101 : memoryC1_uid93_sqrtTables_q <= 10'b1100001001;
                6'b000110 : memoryC1_uid93_sqrtTables_q <= 10'b0101110110;
                6'b000111 : memoryC1_uid93_sqrtTables_q <= 10'b1111110010;
                6'b001000 : memoryC1_uid93_sqrtTables_q <= 10'b1001111100;
                6'b001001 : memoryC1_uid93_sqrtTables_q <= 10'b0100010100;
                6'b001010 : memoryC1_uid93_sqrtTables_q <= 10'b1110111000;
                6'b001011 : memoryC1_uid93_sqrtTables_q <= 10'b1001101000;
                6'b001100 : memoryC1_uid93_sqrtTables_q <= 10'b0100100111;
                6'b001101 : memoryC1_uid93_sqrtTables_q <= 10'b1111110001;
                6'b001110 : memoryC1_uid93_sqrtTables_q <= 10'b1011000010;
                6'b001111 : memoryC1_uid93_sqrtTables_q <= 10'b0110011111;
                6'b010000 : memoryC1_uid93_sqrtTables_q <= 10'b0010000011;
                6'b010001 : memoryC1_uid93_sqrtTables_q <= 10'b1101110001;
                6'b010010 : memoryC1_uid93_sqrtTables_q <= 10'b1001100101;
                6'b010011 : memoryC1_uid93_sqrtTables_q <= 10'b0101100010;
                6'b010100 : memoryC1_uid93_sqrtTables_q <= 10'b0001100111;
                6'b010101 : memoryC1_uid93_sqrtTables_q <= 10'b1101110101;
                6'b010110 : memoryC1_uid93_sqrtTables_q <= 10'b1010001010;
                6'b010111 : memoryC1_uid93_sqrtTables_q <= 10'b0110100100;
                6'b011000 : memoryC1_uid93_sqrtTables_q <= 10'b0011000011;
                6'b011001 : memoryC1_uid93_sqrtTables_q <= 10'b1111101000;
                6'b011010 : memoryC1_uid93_sqrtTables_q <= 10'b1100010100;
                6'b011011 : memoryC1_uid93_sqrtTables_q <= 10'b1001000010;
                6'b011100 : memoryC1_uid93_sqrtTables_q <= 10'b0101111001;
                6'b011101 : memoryC1_uid93_sqrtTables_q <= 10'b0010110110;
                6'b011110 : memoryC1_uid93_sqrtTables_q <= 10'b1111110101;
                6'b011111 : memoryC1_uid93_sqrtTables_q <= 10'b1100111001;
                6'b100000 : memoryC1_uid93_sqrtTables_q <= 10'b0100000010;
                6'b100001 : memoryC1_uid93_sqrtTables_q <= 10'b1001000000;
                6'b100010 : memoryC1_uid93_sqrtTables_q <= 10'b1110011100;
                6'b100011 : memoryC1_uid93_sqrtTables_q <= 10'b0100010011;
                6'b100100 : memoryC1_uid93_sqrtTables_q <= 10'b1010101001;
                6'b100101 : memoryC1_uid93_sqrtTables_q <= 10'b0001010101;
                6'b100110 : memoryC1_uid93_sqrtTables_q <= 10'b1000011101;
                6'b100111 : memoryC1_uid93_sqrtTables_q <= 10'b1111110110;
                6'b101000 : memoryC1_uid93_sqrtTables_q <= 10'b0111100101;
                6'b101001 : memoryC1_uid93_sqrtTables_q <= 10'b1111101100;
                6'b101010 : memoryC1_uid93_sqrtTables_q <= 10'b0111111111;
                6'b101011 : memoryC1_uid93_sqrtTables_q <= 10'b0000101001;
                6'b101100 : memoryC1_uid93_sqrtTables_q <= 10'b1001011111;
                6'b101101 : memoryC1_uid93_sqrtTables_q <= 10'b0010100101;
                6'b101110 : memoryC1_uid93_sqrtTables_q <= 10'b1011111011;
                6'b101111 : memoryC1_uid93_sqrtTables_q <= 10'b0101011010;
                6'b110000 : memoryC1_uid93_sqrtTables_q <= 10'b1111001100;
                6'b110001 : memoryC1_uid93_sqrtTables_q <= 10'b1001001000;
                6'b110010 : memoryC1_uid93_sqrtTables_q <= 10'b0011010000;
                6'b110011 : memoryC1_uid93_sqrtTables_q <= 10'b1101100100;
                6'b110100 : memoryC1_uid93_sqrtTables_q <= 10'b0111111111;
                6'b110101 : memoryC1_uid93_sqrtTables_q <= 10'b0010101001;
                6'b110110 : memoryC1_uid93_sqrtTables_q <= 10'b1101011001;
                6'b110111 : memoryC1_uid93_sqrtTables_q <= 10'b1000010011;
                6'b111000 : memoryC1_uid93_sqrtTables_q <= 10'b0011010110;
                6'b111001 : memoryC1_uid93_sqrtTables_q <= 10'b1110100000;
                6'b111010 : memoryC1_uid93_sqrtTables_q <= 10'b1001110111;
                6'b111011 : memoryC1_uid93_sqrtTables_q <= 10'b0101001111;
                6'b111100 : memoryC1_uid93_sqrtTables_q <= 10'b0000110100;
                6'b111101 : memoryC1_uid93_sqrtTables_q <= 10'b1100011100;
                6'b111110 : memoryC1_uid93_sqrtTables_q <= 10'b1000001011;
                6'b111111 : memoryC1_uid93_sqrtTables_q <= 10'b0100000010;
                default : begin
                              // unreachable
                              memoryC1_uid93_sqrtTables_q <= 10'bxxxxxxxxxx;
                          end
            endcase
        end
    end

    // os_uid95_sqrtTables(BITJOIN,94)@3
    assign os_uid95_sqrtTables_q = {memoryC1_uid94_sqrtTables_q, memoryC1_uid93_sqrtTables_q};

    // s1sumAHighB_uid107_invPolyEval(ADD,106)@3
    assign s1sumAHighB_uid107_invPolyEval_a = $unsigned({{1{os_uid95_sqrtTables_q[16]}}, os_uid95_sqrtTables_q});
    assign s1sumAHighB_uid107_invPolyEval_b = $unsigned({{8{redist10_highBBits_uid106_invPolyEval_b_1_q[9]}}, redist10_highBBits_uid106_invPolyEval_b_1_q});
    assign s1sumAHighB_uid107_invPolyEval_o = $unsigned($signed(s1sumAHighB_uid107_invPolyEval_a) + $signed(s1sumAHighB_uid107_invPolyEval_b));
    assign s1sumAHighB_uid107_invPolyEval_q = s1sumAHighB_uid107_invPolyEval_o[17:0];

    // lowRangeB_uid105_invPolyEval(BITSELECT,104)@2
    assign lowRangeB_uid105_invPolyEval_in = osig_uid117_pT1_uid104_invPolyEval_b[0:0];
    assign lowRangeB_uid105_invPolyEval_b = lowRangeB_uid105_invPolyEval_in[0:0];

    // redist11_lowRangeB_uid105_invPolyEval_b_1(DELAY,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_lowRangeB_uid105_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist11_lowRangeB_uid105_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid105_invPolyEval_b);
        end
    end

    // s1_uid108_invPolyEval(BITJOIN,107)@3
    assign s1_uid108_invPolyEval_q = {s1sumAHighB_uid107_invPolyEval_q, redist11_lowRangeB_uid105_invPolyEval_b_1_q};

    // redist9_s1_uid108_invPolyEval_q_1(DELAY,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_s1_uid108_invPolyEval_q_1_q <= '0;
        end
        else
        begin
            redist9_s1_uid108_invPolyEval_q_1_q <= $unsigned(s1_uid108_invPolyEval_q);
        end
    end

    // redist17_yForPe_uid36_block_rsrvd_fix_b_4_inputreg0(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_yForPe_uid36_block_rsrvd_fix_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist17_yForPe_uid36_block_rsrvd_fix_b_4_inputreg0_q <= $unsigned(yForPe_uid36_block_rsrvd_fix_b);
        end
    end

    // redist17_yForPe_uid36_block_rsrvd_fix_b_4(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_yForPe_uid36_block_rsrvd_fix_b_4_delay_0 <= '0;
            redist17_yForPe_uid36_block_rsrvd_fix_b_4_delay_1 <= '0;
            redist17_yForPe_uid36_block_rsrvd_fix_b_4_q <= '0;
        end
        else
        begin
            redist17_yForPe_uid36_block_rsrvd_fix_b_4_delay_0 <= $unsigned(redist17_yForPe_uid36_block_rsrvd_fix_b_4_inputreg0_q);
            redist17_yForPe_uid36_block_rsrvd_fix_b_4_delay_1 <= redist17_yForPe_uid36_block_rsrvd_fix_b_4_delay_0;
            redist17_yForPe_uid36_block_rsrvd_fix_b_4_q <= redist17_yForPe_uid36_block_rsrvd_fix_b_4_delay_1;
        end
    end

    // prodXY_uid119_pT2_uid110_invPolyEval_cma(CHAINMULTADD,137)@4 + 2
    assign prodXY_uid119_pT2_uid110_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid119_pT2_uid110_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid119_pT2_uid110_invPolyEval_cma_ena1 = prodXY_uid119_pT2_uid110_invPolyEval_cma_ena0;
    assign prodXY_uid119_pT2_uid110_invPolyEval_cma_l[0] = $signed({1'b0, prodXY_uid119_pT2_uid110_invPolyEval_cma_a0[0][11:0]});
    assign prodXY_uid119_pT2_uid110_invPolyEval_cma_p[0] = prodXY_uid119_pT2_uid110_invPolyEval_cma_l[0] * prodXY_uid119_pT2_uid110_invPolyEval_cma_c0[0];
    assign prodXY_uid119_pT2_uid110_invPolyEval_cma_u[0] = prodXY_uid119_pT2_uid110_invPolyEval_cma_p[0][31:0];
    assign prodXY_uid119_pT2_uid110_invPolyEval_cma_w[0] = prodXY_uid119_pT2_uid110_invPolyEval_cma_u[0];
    assign prodXY_uid119_pT2_uid110_invPolyEval_cma_x[0] = prodXY_uid119_pT2_uid110_invPolyEval_cma_w[0];
    assign prodXY_uid119_pT2_uid110_invPolyEval_cma_y[0] = prodXY_uid119_pT2_uid110_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid119_pT2_uid110_invPolyEval_cma_a0 <= '{default: '0};
            prodXY_uid119_pT2_uid110_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid119_pT2_uid110_invPolyEval_cma_ena0 == 1'b1)
            begin
                prodXY_uid119_pT2_uid110_invPolyEval_cma_a0[0] <= redist17_yForPe_uid36_block_rsrvd_fix_b_4_q;
                prodXY_uid119_pT2_uid110_invPolyEval_cma_c0[0] <= redist9_s1_uid108_invPolyEval_q_1_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid119_pT2_uid110_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid119_pT2_uid110_invPolyEval_cma_ena1 == 1'b1)
            begin
                prodXY_uid119_pT2_uid110_invPolyEval_cma_s[0] <= prodXY_uid119_pT2_uid110_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(32), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid119_pT2_uid110_invPolyEval_cma_delay ( .xin(prodXY_uid119_pT2_uid110_invPolyEval_cma_s[0]), .xout(prodXY_uid119_pT2_uid110_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid119_pT2_uid110_invPolyEval_cma_q = $unsigned(prodXY_uid119_pT2_uid110_invPolyEval_cma_qq[30:0]);

    // osig_uid120_pT2_uid110_invPolyEval(BITSELECT,119)@6
    assign osig_uid120_pT2_uid110_invPolyEval_b = $unsigned(prodXY_uid119_pT2_uid110_invPolyEval_cma_q[30:11]);

    // highBBits_uid112_invPolyEval(BITSELECT,111)@6
    assign highBBits_uid112_invPolyEval_b = $unsigned(osig_uid120_pT2_uid110_invPolyEval_b[19:2]);

    // redist7_highBBits_uid112_invPolyEval_b_1(DELAY,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_highBBits_uid112_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist7_highBBits_uid112_invPolyEval_b_1_q <= $unsigned(highBBits_uid112_invPolyEval_b);
        end
    end

    // redist19_yAddr_uid35_block_rsrvd_fix_b_6(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_yAddr_uid35_block_rsrvd_fix_b_6_delay_0 <= '0;
            redist19_yAddr_uid35_block_rsrvd_fix_b_6_delay_1 <= '0;
            redist19_yAddr_uid35_block_rsrvd_fix_b_6_delay_2 <= '0;
            redist19_yAddr_uid35_block_rsrvd_fix_b_6_q <= '0;
        end
        else
        begin
            redist19_yAddr_uid35_block_rsrvd_fix_b_6_delay_0 <= $unsigned(redist18_yAddr_uid35_block_rsrvd_fix_b_2_q);
            redist19_yAddr_uid35_block_rsrvd_fix_b_6_delay_1 <= redist19_yAddr_uid35_block_rsrvd_fix_b_6_delay_0;
            redist19_yAddr_uid35_block_rsrvd_fix_b_6_delay_2 <= redist19_yAddr_uid35_block_rsrvd_fix_b_6_delay_1;
            redist19_yAddr_uid35_block_rsrvd_fix_b_6_q <= redist19_yAddr_uid35_block_rsrvd_fix_b_6_delay_2;
        end
    end

    // memoryC0_uid90_sqrtTables(LOOKUP,89)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memoryC0_uid90_sqrtTables_q <= $unsigned(3'b010);
        end
        else
        begin
            unique case (redist19_yAddr_uid35_block_rsrvd_fix_b_6_q)
                6'b000000 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b000001 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b000010 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b000011 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b000100 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b000101 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b000110 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b000111 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b001000 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b001001 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b001010 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b001011 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b001100 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b001101 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b001110 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b001111 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b010000 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b010001 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b010010 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b010011 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b010100 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b010101 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b010110 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b010111 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b011000 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b011001 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b011010 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b011011 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b011100 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b011101 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b011110 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b011111 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b100000 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b100001 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b100010 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b100011 : memoryC0_uid90_sqrtTables_q <= 3'b010;
                6'b100100 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b100101 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b100110 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b100111 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b101000 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b101001 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b101010 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b101011 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b101100 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b101101 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b101110 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b101111 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b110000 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b110001 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b110010 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b110011 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b110100 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b110101 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b110110 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b110111 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b111000 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b111001 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b111010 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b111011 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b111100 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b111101 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b111110 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                6'b111111 : memoryC0_uid90_sqrtTables_q <= 3'b011;
                default : begin
                              // unreachable
                              memoryC0_uid90_sqrtTables_q <= 3'bxxx;
                          end
            endcase
        end
    end

    // memoryC0_uid89_sqrtTables(LOOKUP,88)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memoryC0_uid89_sqrtTables_q <= $unsigned(10'b0000000000);
        end
        else
        begin
            unique case (redist19_yAddr_uid35_block_rsrvd_fix_b_6_q)
                6'b000000 : memoryC0_uid89_sqrtTables_q <= 10'b0000000000;
                6'b000001 : memoryC0_uid89_sqrtTables_q <= 10'b0000011111;
                6'b000010 : memoryC0_uid89_sqrtTables_q <= 10'b0000111111;
                6'b000011 : memoryC0_uid89_sqrtTables_q <= 10'b0001011101;
                6'b000100 : memoryC0_uid89_sqrtTables_q <= 10'b0001111100;
                6'b000101 : memoryC0_uid89_sqrtTables_q <= 10'b0010011010;
                6'b000110 : memoryC0_uid89_sqrtTables_q <= 10'b0010110111;
                6'b000111 : memoryC0_uid89_sqrtTables_q <= 10'b0011010100;
                6'b001000 : memoryC0_uid89_sqrtTables_q <= 10'b0011110001;
                6'b001001 : memoryC0_uid89_sqrtTables_q <= 10'b0100001110;
                6'b001010 : memoryC0_uid89_sqrtTables_q <= 10'b0100101010;
                6'b001011 : memoryC0_uid89_sqrtTables_q <= 10'b0101000110;
                6'b001100 : memoryC0_uid89_sqrtTables_q <= 10'b0101100001;
                6'b001101 : memoryC0_uid89_sqrtTables_q <= 10'b0101111100;
                6'b001110 : memoryC0_uid89_sqrtTables_q <= 10'b0110010111;
                6'b001111 : memoryC0_uid89_sqrtTables_q <= 10'b0110110010;
                6'b010000 : memoryC0_uid89_sqrtTables_q <= 10'b0111001100;
                6'b010001 : memoryC0_uid89_sqrtTables_q <= 10'b0111100110;
                6'b010010 : memoryC0_uid89_sqrtTables_q <= 10'b1000000000;
                6'b010011 : memoryC0_uid89_sqrtTables_q <= 10'b1000011001;
                6'b010100 : memoryC0_uid89_sqrtTables_q <= 10'b1000110010;
                6'b010101 : memoryC0_uid89_sqrtTables_q <= 10'b1001001011;
                6'b010110 : memoryC0_uid89_sqrtTables_q <= 10'b1001100100;
                6'b010111 : memoryC0_uid89_sqrtTables_q <= 10'b1001111100;
                6'b011000 : memoryC0_uid89_sqrtTables_q <= 10'b1010010101;
                6'b011001 : memoryC0_uid89_sqrtTables_q <= 10'b1010101101;
                6'b011010 : memoryC0_uid89_sqrtTables_q <= 10'b1011000101;
                6'b011011 : memoryC0_uid89_sqrtTables_q <= 10'b1011011100;
                6'b011100 : memoryC0_uid89_sqrtTables_q <= 10'b1011110100;
                6'b011101 : memoryC0_uid89_sqrtTables_q <= 10'b1100001011;
                6'b011110 : memoryC0_uid89_sqrtTables_q <= 10'b1100100010;
                6'b011111 : memoryC0_uid89_sqrtTables_q <= 10'b1100111001;
                6'b100000 : memoryC0_uid89_sqrtTables_q <= 10'b1101010000;
                6'b100001 : memoryC0_uid89_sqrtTables_q <= 10'b1101111101;
                6'b100010 : memoryC0_uid89_sqrtTables_q <= 10'b1110101001;
                6'b100011 : memoryC0_uid89_sqrtTables_q <= 10'b1111010101;
                6'b100100 : memoryC0_uid89_sqrtTables_q <= 10'b0000000000;
                6'b100101 : memoryC0_uid89_sqrtTables_q <= 10'b0000101010;
                6'b100110 : memoryC0_uid89_sqrtTables_q <= 10'b0001010100;
                6'b100111 : memoryC0_uid89_sqrtTables_q <= 10'b0001111101;
                6'b101000 : memoryC0_uid89_sqrtTables_q <= 10'b0010100110;
                6'b101001 : memoryC0_uid89_sqrtTables_q <= 10'b0011001110;
                6'b101010 : memoryC0_uid89_sqrtTables_q <= 10'b0011110110;
                6'b101011 : memoryC0_uid89_sqrtTables_q <= 10'b0100011101;
                6'b101100 : memoryC0_uid89_sqrtTables_q <= 10'b0101000100;
                6'b101101 : memoryC0_uid89_sqrtTables_q <= 10'b0101101010;
                6'b101110 : memoryC0_uid89_sqrtTables_q <= 10'b0110010000;
                6'b101111 : memoryC0_uid89_sqrtTables_q <= 10'b0110110110;
                6'b110000 : memoryC0_uid89_sqrtTables_q <= 10'b0111011011;
                6'b110001 : memoryC0_uid89_sqrtTables_q <= 10'b1000000000;
                6'b110010 : memoryC0_uid89_sqrtTables_q <= 10'b1000100100;
                6'b110011 : memoryC0_uid89_sqrtTables_q <= 10'b1001001000;
                6'b110100 : memoryC0_uid89_sqrtTables_q <= 10'b1001101100;
                6'b110101 : memoryC0_uid89_sqrtTables_q <= 10'b1010001111;
                6'b110110 : memoryC0_uid89_sqrtTables_q <= 10'b1010110010;
                6'b110111 : memoryC0_uid89_sqrtTables_q <= 10'b1011010101;
                6'b111000 : memoryC0_uid89_sqrtTables_q <= 10'b1011110111;
                6'b111001 : memoryC0_uid89_sqrtTables_q <= 10'b1100011001;
                6'b111010 : memoryC0_uid89_sqrtTables_q <= 10'b1100111011;
                6'b111011 : memoryC0_uid89_sqrtTables_q <= 10'b1101011100;
                6'b111100 : memoryC0_uid89_sqrtTables_q <= 10'b1101111101;
                6'b111101 : memoryC0_uid89_sqrtTables_q <= 10'b1110011110;
                6'b111110 : memoryC0_uid89_sqrtTables_q <= 10'b1110111111;
                6'b111111 : memoryC0_uid89_sqrtTables_q <= 10'b1111011111;
                default : begin
                              // unreachable
                              memoryC0_uid89_sqrtTables_q <= 10'bxxxxxxxxxx;
                          end
            endcase
        end
    end

    // memoryC0_uid88_sqrtTables(LOOKUP,87)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memoryC0_uid88_sqrtTables_q <= $unsigned(10'b0000000100);
        end
        else
        begin
            unique case (redist19_yAddr_uid35_block_rsrvd_fix_b_6_q)
                6'b000000 : memoryC0_uid88_sqrtTables_q <= 10'b0000000100;
                6'b000001 : memoryC0_uid88_sqrtTables_q <= 10'b1100001000;
                6'b000010 : memoryC0_uid88_sqrtTables_q <= 10'b0000100011;
                6'b000011 : memoryC0_uid88_sqrtTables_q <= 10'b1101101010;
                6'b000100 : memoryC0_uid88_sqrtTables_q <= 10'b0011110010;
                6'b000101 : memoryC0_uid88_sqrtTables_q <= 10'b0011001100;
                6'b000110 : memoryC0_uid88_sqrtTables_q <= 10'b1100001010;
                6'b000111 : memoryC0_uid88_sqrtTables_q <= 10'b1110111101;
                6'b001000 : memoryC0_uid88_sqrtTables_q <= 10'b1011110011;
                6'b001001 : memoryC0_uid88_sqrtTables_q <= 10'b0010111011;
                6'b001010 : memoryC0_uid88_sqrtTables_q <= 10'b0100100010;
                6'b001011 : memoryC0_uid88_sqrtTables_q <= 10'b0000110100;
                6'b001100 : memoryC0_uid88_sqrtTables_q <= 10'b0111111101;
                6'b001101 : memoryC0_uid88_sqrtTables_q <= 10'b1010001000;
                6'b001110 : memoryC0_uid88_sqrtTables_q <= 10'b0111100001;
                6'b001111 : memoryC0_uid88_sqrtTables_q <= 10'b0000010000;
                6'b010000 : memoryC0_uid88_sqrtTables_q <= 10'b0100100000;
                6'b010001 : memoryC0_uid88_sqrtTables_q <= 10'b0100011001;
                6'b010010 : memoryC0_uid88_sqrtTables_q <= 10'b0000000100;
                6'b010011 : memoryC0_uid88_sqrtTables_q <= 10'b0111101001;
                6'b010100 : memoryC0_uid88_sqrtTables_q <= 10'b1011001111;
                6'b010101 : memoryC0_uid88_sqrtTables_q <= 10'b1010111110;
                6'b010110 : memoryC0_uid88_sqrtTables_q <= 10'b0110111100;
                6'b010111 : memoryC0_uid88_sqrtTables_q <= 10'b1111010001;
                6'b011000 : memoryC0_uid88_sqrtTables_q <= 10'b0100000011;
                6'b011001 : memoryC0_uid88_sqrtTables_q <= 10'b0101011000;
                6'b011010 : memoryC0_uid88_sqrtTables_q <= 10'b0011010101;
                6'b011011 : memoryC0_uid88_sqrtTables_q <= 10'b1110000001;
                6'b011100 : memoryC0_uid88_sqrtTables_q <= 10'b0101100000;
                6'b011101 : memoryC0_uid88_sqrtTables_q <= 10'b1001110111;
                6'b011110 : memoryC0_uid88_sqrtTables_q <= 10'b1011001100;
                6'b011111 : memoryC0_uid88_sqrtTables_q <= 10'b1001100011;
                6'b100000 : memoryC0_uid88_sqrtTables_q <= 10'b0101000001;
                6'b100001 : memoryC0_uid88_sqrtTables_q <= 10'b0011100001;
                6'b100010 : memoryC0_uid88_sqrtTables_q <= 10'b0111001110;
                6'b100011 : memoryC0_uid88_sqrtTables_q <= 10'b0000100110;
                6'b100100 : memoryC0_uid88_sqrtTables_q <= 10'b0000000100;
                6'b100101 : memoryC0_uid88_sqrtTables_q <= 10'b0110000100;
                6'b100110 : memoryC0_uid88_sqrtTables_q <= 10'b0010111100;
                6'b100111 : memoryC0_uid88_sqrtTables_q <= 10'b0111000110;
                6'b101000 : memoryC0_uid88_sqrtTables_q <= 10'b0010110101;
                6'b101001 : memoryC0_uid88_sqrtTables_q <= 10'b0110011101;
                6'b101010 : memoryC0_uid88_sqrtTables_q <= 10'b0010010011;
                6'b101011 : memoryC0_uid88_sqrtTables_q <= 10'b0110100110;
                6'b101100 : memoryC0_uid88_sqrtTables_q <= 10'b0011101001;
                6'b101101 : memoryC0_uid88_sqrtTables_q <= 10'b1001101011;
                6'b101110 : memoryC0_uid88_sqrtTables_q <= 10'b1000111010;
                6'b101111 : memoryC0_uid88_sqrtTables_q <= 10'b0001100110;
                6'b110000 : memoryC0_uid88_sqrtTables_q <= 10'b0011111010;
                6'b110001 : memoryC0_uid88_sqrtTables_q <= 10'b0000000100;
                6'b110010 : memoryC0_uid88_sqrtTables_q <= 10'b0110010000;
                6'b110011 : memoryC0_uid88_sqrtTables_q <= 10'b0110101001;
                6'b110100 : memoryC0_uid88_sqrtTables_q <= 10'b0001011011;
                6'b110101 : memoryC0_uid88_sqrtTables_q <= 10'b0110101110;
                6'b110110 : memoryC0_uid88_sqrtTables_q <= 10'b0110101110;
                6'b110111 : memoryC0_uid88_sqrtTables_q <= 10'b0001100100;
                6'b111000 : memoryC0_uid88_sqrtTables_q <= 10'b0111011000;
                6'b111001 : memoryC0_uid88_sqrtTables_q <= 10'b1000010100;
                6'b111010 : memoryC0_uid88_sqrtTables_q <= 10'b0100011110;
                6'b111011 : memoryC0_uid88_sqrtTables_q <= 10'b1100000001;
                6'b111100 : memoryC0_uid88_sqrtTables_q <= 10'b1111000001;
                6'b111101 : memoryC0_uid88_sqrtTables_q <= 10'b1101101000;
                6'b111110 : memoryC0_uid88_sqrtTables_q <= 10'b0111111100;
                6'b111111 : memoryC0_uid88_sqrtTables_q <= 10'b1110000011;
                default : begin
                              // unreachable
                              memoryC0_uid88_sqrtTables_q <= 10'bxxxxxxxxxx;
                          end
            endcase
        end
    end

    // os_uid91_sqrtTables(BITJOIN,90)@7
    assign os_uid91_sqrtTables_q = {memoryC0_uid90_sqrtTables_q, memoryC0_uid89_sqrtTables_q, memoryC0_uid88_sqrtTables_q};

    // s2sumAHighB_uid113_invPolyEval(ADD,112)@7
    assign s2sumAHighB_uid113_invPolyEval_a = $unsigned({{1{os_uid91_sqrtTables_q[22]}}, os_uid91_sqrtTables_q});
    assign s2sumAHighB_uid113_invPolyEval_b = $unsigned({{6{redist7_highBBits_uid112_invPolyEval_b_1_q[17]}}, redist7_highBBits_uid112_invPolyEval_b_1_q});
    assign s2sumAHighB_uid113_invPolyEval_o = $unsigned($signed(s2sumAHighB_uid113_invPolyEval_a) + $signed(s2sumAHighB_uid113_invPolyEval_b));
    assign s2sumAHighB_uid113_invPolyEval_q = s2sumAHighB_uid113_invPolyEval_o[23:0];

    // lowRangeB_uid111_invPolyEval(BITSELECT,110)@6
    assign lowRangeB_uid111_invPolyEval_in = osig_uid120_pT2_uid110_invPolyEval_b[1:0];
    assign lowRangeB_uid111_invPolyEval_b = lowRangeB_uid111_invPolyEval_in[1:0];

    // redist8_lowRangeB_uid111_invPolyEval_b_1(DELAY,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_lowRangeB_uid111_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist8_lowRangeB_uid111_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid111_invPolyEval_b);
        end
    end

    // s2_uid114_invPolyEval(BITJOIN,113)@7
    assign s2_uid114_invPolyEval_q = {s2sumAHighB_uid113_invPolyEval_q, redist8_lowRangeB_uid111_invPolyEval_b_1_q};

    // fracRPreCR_uid39_block_rsrvd_fix(BITSELECT,38)@7
    assign fracRPreCR_uid39_block_rsrvd_fix_in = s2_uid114_invPolyEval_q[22:0];
    assign fracRPreCR_uid39_block_rsrvd_fix_b = fracRPreCR_uid39_block_rsrvd_fix_in[22:5];

    // fracPaddingOne_uid41_block_rsrvd_fix(BITJOIN,40)@7
    assign fracPaddingOne_uid41_block_rsrvd_fix_q = {VCC_q, fracRPreCR_uid39_block_rsrvd_fix_b};

    // squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select(BITSELECT,140)@7
    assign squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_b = fracPaddingOne_uid41_block_rsrvd_fix_q[18:18];
    assign squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_c = fracPaddingOne_uid41_block_rsrvd_fix_q[17:0];

    // redist3_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_c_1(DELAY,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist3_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_c_1_q <= $unsigned(squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_c);
        end
    end

    // redist2_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_b_1(DELAY,144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist2_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_b_1_q <= $unsigned(squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_b);
        end
    end

    // squaredResult_uid42_block_rsrvd_fix_ma3_cma(CHAINMULTADD,139)@8 + 2
    assign squaredResult_uid42_block_rsrvd_fix_ma3_cma_reset = ~ (resetn);
    assign squaredResult_uid42_block_rsrvd_fix_ma3_cma_ena0 = 1'b1;
    assign squaredResult_uid42_block_rsrvd_fix_ma3_cma_ena1 = squaredResult_uid42_block_rsrvd_fix_ma3_cma_ena0;
    assign squaredResult_uid42_block_rsrvd_fix_ma3_cma_p[0] = squaredResult_uid42_block_rsrvd_fix_ma3_cma_a0[0] * squaredResult_uid42_block_rsrvd_fix_ma3_cma_c0[0];
    assign squaredResult_uid42_block_rsrvd_fix_ma3_cma_p[1] = squaredResult_uid42_block_rsrvd_fix_ma3_cma_a0[1] * squaredResult_uid42_block_rsrvd_fix_ma3_cma_c0[1];
    assign squaredResult_uid42_block_rsrvd_fix_ma3_cma_u[0] = {1'b0, squaredResult_uid42_block_rsrvd_fix_ma3_cma_p[0][18:0]};
    assign squaredResult_uid42_block_rsrvd_fix_ma3_cma_u[1] = {1'b0, squaredResult_uid42_block_rsrvd_fix_ma3_cma_p[1][18:0]};
    assign squaredResult_uid42_block_rsrvd_fix_ma3_cma_w[0] = squaredResult_uid42_block_rsrvd_fix_ma3_cma_u[0] + squaredResult_uid42_block_rsrvd_fix_ma3_cma_u[1];
    assign squaredResult_uid42_block_rsrvd_fix_ma3_cma_x[0] = squaredResult_uid42_block_rsrvd_fix_ma3_cma_w[0];
    assign squaredResult_uid42_block_rsrvd_fix_ma3_cma_y[0] = squaredResult_uid42_block_rsrvd_fix_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            squaredResult_uid42_block_rsrvd_fix_ma3_cma_a0 <= '{default: '0};
            squaredResult_uid42_block_rsrvd_fix_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (squaredResult_uid42_block_rsrvd_fix_ma3_cma_ena0 == 1'b1)
            begin
                squaredResult_uid42_block_rsrvd_fix_ma3_cma_a0[0] <= redist2_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_b_1_q;
                squaredResult_uid42_block_rsrvd_fix_ma3_cma_a0[1] <= redist2_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_b_1_q;
                squaredResult_uid42_block_rsrvd_fix_ma3_cma_c0[0] <= redist3_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_c_1_q;
                squaredResult_uid42_block_rsrvd_fix_ma3_cma_c0[1] <= redist3_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_c_1_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            squaredResult_uid42_block_rsrvd_fix_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (squaredResult_uid42_block_rsrvd_fix_ma3_cma_ena1 == 1'b1)
            begin
                squaredResult_uid42_block_rsrvd_fix_ma3_cma_s[0] <= squaredResult_uid42_block_rsrvd_fix_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(20), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    squaredResult_uid42_block_rsrvd_fix_ma3_cma_delay ( .xin(squaredResult_uid42_block_rsrvd_fix_ma3_cma_s[0]), .xout(squaredResult_uid42_block_rsrvd_fix_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign squaredResult_uid42_block_rsrvd_fix_ma3_cma_q = $unsigned(squaredResult_uid42_block_rsrvd_fix_ma3_cma_qq[19:0]);

    // redist4_squaredResult_uid42_block_rsrvd_fix_ma3_cma_q_1(DELAY,146)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_squaredResult_uid42_block_rsrvd_fix_ma3_cma_q_1_q <= '0;
        end
        else
        begin
            redist4_squaredResult_uid42_block_rsrvd_fix_ma3_cma_q_1_q <= $unsigned(squaredResult_uid42_block_rsrvd_fix_ma3_cma_q);
        end
    end

    // squaredResult_uid42_block_rsrvd_fix_sums_align_1(BITSHIFT,133)@11
    assign squaredResult_uid42_block_rsrvd_fix_sums_align_1_qint = { redist4_squaredResult_uid42_block_rsrvd_fix_ma3_cma_q_1_q, 18'b000000000000000000 };
    assign squaredResult_uid42_block_rsrvd_fix_sums_align_1_q = squaredResult_uid42_block_rsrvd_fix_sums_align_1_qint[37:0];

    // squaredResult_uid42_block_rsrvd_fix_im0(MULT,121)@8 + 2
    assign squaredResult_uid42_block_rsrvd_fix_im0_pr = $unsigned(squaredResult_uid42_block_rsrvd_fix_im0_a0) * $unsigned(squaredResult_uid42_block_rsrvd_fix_im0_b0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            squaredResult_uid42_block_rsrvd_fix_im0_a0 <= 1'b0;
            squaredResult_uid42_block_rsrvd_fix_im0_b0 <= 1'b0;
            squaredResult_uid42_block_rsrvd_fix_im0_s1 <= 2'b0;
        end
        else
        begin
            squaredResult_uid42_block_rsrvd_fix_im0_a0 <= redist2_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_b_1_q;
            squaredResult_uid42_block_rsrvd_fix_im0_b0 <= redist2_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_b_1_q;
            squaredResult_uid42_block_rsrvd_fix_im0_s1 <= squaredResult_uid42_block_rsrvd_fix_im0_pr;
        end
    end
    assign squaredResult_uid42_block_rsrvd_fix_im0_q = squaredResult_uid42_block_rsrvd_fix_im0_s1;

    // redist6_squaredResult_uid42_block_rsrvd_fix_im0_q_1(DELAY,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_squaredResult_uid42_block_rsrvd_fix_im0_q_1_q <= '0;
        end
        else
        begin
            redist6_squaredResult_uid42_block_rsrvd_fix_im0_q_1_q <= $unsigned(squaredResult_uid42_block_rsrvd_fix_im0_q);
        end
    end

    // squaredResult_uid42_block_rsrvd_fix_im8_cma(CHAINMULTADD,138)@8 + 2
    assign squaredResult_uid42_block_rsrvd_fix_im8_cma_reset = ~ (resetn);
    assign squaredResult_uid42_block_rsrvd_fix_im8_cma_ena0 = 1'b1;
    assign squaredResult_uid42_block_rsrvd_fix_im8_cma_ena1 = squaredResult_uid42_block_rsrvd_fix_im8_cma_ena0;
    assign squaredResult_uid42_block_rsrvd_fix_im8_cma_p[0] = squaredResult_uid42_block_rsrvd_fix_im8_cma_a0[0] * squaredResult_uid42_block_rsrvd_fix_im8_cma_c0[0];
    assign squaredResult_uid42_block_rsrvd_fix_im8_cma_u[0] = squaredResult_uid42_block_rsrvd_fix_im8_cma_p[0][35:0];
    assign squaredResult_uid42_block_rsrvd_fix_im8_cma_w[0] = squaredResult_uid42_block_rsrvd_fix_im8_cma_u[0];
    assign squaredResult_uid42_block_rsrvd_fix_im8_cma_x[0] = squaredResult_uid42_block_rsrvd_fix_im8_cma_w[0];
    assign squaredResult_uid42_block_rsrvd_fix_im8_cma_y[0] = squaredResult_uid42_block_rsrvd_fix_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            squaredResult_uid42_block_rsrvd_fix_im8_cma_a0 <= '{default: '0};
            squaredResult_uid42_block_rsrvd_fix_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (squaredResult_uid42_block_rsrvd_fix_im8_cma_ena0 == 1'b1)
            begin
                squaredResult_uid42_block_rsrvd_fix_im8_cma_a0[0] <= redist3_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_c_1_q;
                squaredResult_uid42_block_rsrvd_fix_im8_cma_c0[0] <= redist3_squaredResult_uid42_block_rsrvd_fix_bs1_merged_bit_select_c_1_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            squaredResult_uid42_block_rsrvd_fix_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (squaredResult_uid42_block_rsrvd_fix_im8_cma_ena1 == 1'b1)
            begin
                squaredResult_uid42_block_rsrvd_fix_im8_cma_s[0] <= squaredResult_uid42_block_rsrvd_fix_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    squaredResult_uid42_block_rsrvd_fix_im8_cma_delay ( .xin(squaredResult_uid42_block_rsrvd_fix_im8_cma_s[0]), .xout(squaredResult_uid42_block_rsrvd_fix_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign squaredResult_uid42_block_rsrvd_fix_im8_cma_q = $unsigned(squaredResult_uid42_block_rsrvd_fix_im8_cma_qq[35:0]);

    // redist5_squaredResult_uid42_block_rsrvd_fix_im8_cma_q_1(DELAY,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_squaredResult_uid42_block_rsrvd_fix_im8_cma_q_1_q <= '0;
        end
        else
        begin
            redist5_squaredResult_uid42_block_rsrvd_fix_im8_cma_q_1_q <= $unsigned(squaredResult_uid42_block_rsrvd_fix_im8_cma_q);
        end
    end

    // squaredResult_uid42_block_rsrvd_fix_sums_join_0(BITJOIN,132)@11
    assign squaredResult_uid42_block_rsrvd_fix_sums_join_0_q = {redist6_squaredResult_uid42_block_rsrvd_fix_im0_q_1_q, redist5_squaredResult_uid42_block_rsrvd_fix_im8_cma_q_1_q};

    // squaredResult_uid42_block_rsrvd_fix_sums_result_add_0_0(ADD,135)@11 + 1
    assign squaredResult_uid42_block_rsrvd_fix_sums_result_add_0_0_a = {1'b0, squaredResult_uid42_block_rsrvd_fix_sums_join_0_q};
    assign squaredResult_uid42_block_rsrvd_fix_sums_result_add_0_0_b = {1'b0, squaredResult_uid42_block_rsrvd_fix_sums_align_1_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            squaredResult_uid42_block_rsrvd_fix_sums_result_add_0_0_o <= 39'b0;
        end
        else
        begin
            squaredResult_uid42_block_rsrvd_fix_sums_result_add_0_0_o <= $unsigned(squaredResult_uid42_block_rsrvd_fix_sums_result_add_0_0_a) + $unsigned(squaredResult_uid42_block_rsrvd_fix_sums_result_add_0_0_b);
        end
    end
    assign squaredResult_uid42_block_rsrvd_fix_sums_result_add_0_0_q = squaredResult_uid42_block_rsrvd_fix_sums_result_add_0_0_o[38:0];

    // squaredResultGTEIn_uid55_block_rsrvd_fix(COMPARE,56)@12 + 1
    assign squaredResultGTEIn_uid55_block_rsrvd_fix_a = {1'b0, squaredResult_uid42_block_rsrvd_fix_sums_result_add_0_0_q};
    assign squaredResultGTEIn_uid55_block_rsrvd_fix_b = {2'b00, updatedY_uid56_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            squaredResultGTEIn_uid55_block_rsrvd_fix_o <= 40'b0;
        end
        else
        begin
            squaredResultGTEIn_uid55_block_rsrvd_fix_o <= $unsigned(squaredResultGTEIn_uid55_block_rsrvd_fix_a) - $unsigned(squaredResultGTEIn_uid55_block_rsrvd_fix_b);
        end
    end
    assign squaredResultGTEIn_uid55_block_rsrvd_fix_n[0] = ~ (squaredResultGTEIn_uid55_block_rsrvd_fix_o[39]);

    // pLTOne_uid58_block_rsrvd_fix(LOGICAL,57)@13
    assign pLTOne_uid58_block_rsrvd_fix_q = ~ (squaredResultGTEIn_uid55_block_rsrvd_fix_n);

    // redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_notEnable(LOGICAL,181)
    assign redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_nor(LOGICAL,182)
    assign redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_nor_q = ~ (redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_notEnable_q | redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_sticky_ena_q);

    // redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_last(CONSTANT,178)
    assign redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_last_q = $unsigned(2'b01);

    // redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_cmp(LOGICAL,179)
    assign redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_cmp_q = $unsigned(redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_last_q == redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_cmpReg(REG,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_cmpReg_q <= $unsigned(redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_cmp_q);
        end
    end

    // redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_sticky_ena(REG,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_nor_q == 1'b1)
        begin
            redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_sticky_ena_q <= $unsigned(redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_cmpReg_q);
        end
    end

    // redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_enaAnd(LOGICAL,184)
    assign redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_enaAnd_q = redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_sticky_ena_q & VCC_q;

    // redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt(COUNTER,176)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_i <= 2'd0;
            redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_i == 2'd1)
            begin
                redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_eq <= 1'b0;
            end
            if (redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_eq == 1'b1)
            begin
                redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_i <= $unsigned(redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_i <= $unsigned(redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_q = redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_i[1:0];

    // redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_inputreg0(DELAY,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_inputreg0_q <= '0;
        end
        else
        begin
            redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_inputreg0_q <= $unsigned(fracRPreCR_uid39_block_rsrvd_fix_b);
        end
    end

    // redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_wraddr(REG,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_wraddr_q <= $unsigned(redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_q);
        end
    end

    // redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem(DUALMEM,175)
    assign redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_ia = $unsigned(redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_inputreg0_q);
    assign redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_aa = redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_wraddr_q;
    assign redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_ab = redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_rdcnt_q;
    assign redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(18),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(18),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_dmem (
        .clocken1(redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_reset0),
        .clock1(clock),
        .address_a(redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_aa),
        .data_a(redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_ab),
        .q_b(redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_iq),
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
    assign redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_q = redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_iq[17:0];

    // redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_outputreg0(DELAY,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_outputreg0_q <= '0;
        end
        else
        begin
            redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_outputreg0_q <= $unsigned(redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_mem_q);
        end
    end

    // fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix(ADD,59)@13
    assign fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_a = {1'b0, redist15_fracRPreCR_uid39_block_rsrvd_fix_b_6_outputreg0_q};
    assign fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_b = {18'b000000000000000000, pLTOne_uid58_block_rsrvd_fix_q};
    assign fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_o = $unsigned(fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_a) + $unsigned(fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_b);
    assign fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_q = fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_o[18:0];

    // expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select(BITSELECT,141)@13
    assign expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_b = fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_q[18:18];
    assign expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c = fxpSqrtResPostUpdateE_uid60_block_rsrvd_fix_q[17:1];

    // redist0_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_b_1(DELAY,142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist0_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // fracPENotOne_uid62_block_rsrvd_fix(LOGICAL,61)@14
    assign fracPENotOne_uid62_block_rsrvd_fix_q = ~ (redist16_expIncPEOnly_uid38_block_rsrvd_fix_b_7_q);

    // fracPENotOneAndCRRoundsExp_uid63_block_rsrvd_fix(LOGICAL,62)@14
    assign fracPENotOneAndCRRoundsExp_uid63_block_rsrvd_fix_q = fracPENotOne_uid62_block_rsrvd_fix_q & redist0_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_b_1_q;

    // expIncPEOnly_uid38_block_rsrvd_fix(BITSELECT,37)@7
    assign expIncPEOnly_uid38_block_rsrvd_fix_in = $unsigned(s2_uid114_invPolyEval_q[24:0]);
    assign expIncPEOnly_uid38_block_rsrvd_fix_b = $unsigned(expIncPEOnly_uid38_block_rsrvd_fix_in[24:24]);

    // redist16_expIncPEOnly_uid38_block_rsrvd_fix_b_7(DELAY,158)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_expIncPEOnly_uid38_block_rsrvd_fix_b_7 ( .xin(expIncPEOnly_uid38_block_rsrvd_fix_b), .xout(redist16_expIncPEOnly_uid38_block_rsrvd_fix_b_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expInc_uid64_block_rsrvd_fix(LOGICAL,63)@14 + 1
    assign expInc_uid64_block_rsrvd_fix_qi = redist16_expIncPEOnly_uid38_block_rsrvd_fix_b_7_q | fracPENotOneAndCRRoundsExp_uid63_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expInc_uid64_block_rsrvd_fix_delay ( .xin(expInc_uid64_block_rsrvd_fix_qi), .xout(expInc_uid64_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sBiasM1_uid26_block_rsrvd_fix(CONSTANT,25)
    assign sBiasM1_uid26_block_rsrvd_fix_q = $unsigned(8'b01111110);

    // expOddSig_uid27_block_rsrvd_fix(ADD,26)@11
    assign expOddSig_uid27_block_rsrvd_fix_a = {1'b0, redist29_expX_uid6_block_rsrvd_fix_b_11_outputreg0_q};
    assign expOddSig_uid27_block_rsrvd_fix_b = {1'b0, sBiasM1_uid26_block_rsrvd_fix_q};
    assign expOddSig_uid27_block_rsrvd_fix_o = $unsigned(expOddSig_uid27_block_rsrvd_fix_a) + $unsigned(expOddSig_uid27_block_rsrvd_fix_b);
    assign expOddSig_uid27_block_rsrvd_fix_q = expOddSig_uid27_block_rsrvd_fix_o[8:0];

    // expROdd_uid28_block_rsrvd_fix(BITSELECT,27)@11
    assign expROdd_uid28_block_rsrvd_fix_b = expOddSig_uid27_block_rsrvd_fix_q[8:1];

    // redist23_expROdd_uid28_block_rsrvd_fix_b_1(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_expROdd_uid28_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist23_expROdd_uid28_block_rsrvd_fix_b_1_q <= $unsigned(expROdd_uid28_block_rsrvd_fix_b);
        end
    end

    // sBias_uid22_block_rsrvd_fix(CONSTANT,21)
    assign sBias_uid22_block_rsrvd_fix_q = $unsigned(8'b01111111);

    // expEvenSig_uid24_block_rsrvd_fix(ADD,23)@11
    assign expEvenSig_uid24_block_rsrvd_fix_a = {1'b0, redist29_expX_uid6_block_rsrvd_fix_b_11_outputreg0_q};
    assign expEvenSig_uid24_block_rsrvd_fix_b = {1'b0, sBias_uid22_block_rsrvd_fix_q};
    assign expEvenSig_uid24_block_rsrvd_fix_o = $unsigned(expEvenSig_uid24_block_rsrvd_fix_a) + $unsigned(expEvenSig_uid24_block_rsrvd_fix_b);
    assign expEvenSig_uid24_block_rsrvd_fix_q = expEvenSig_uid24_block_rsrvd_fix_o[8:0];

    // expREven_uid25_block_rsrvd_fix(BITSELECT,24)@11
    assign expREven_uid25_block_rsrvd_fix_b = expEvenSig_uid24_block_rsrvd_fix_q[8:1];

    // redist24_expREven_uid25_block_rsrvd_fix_b_1(DELAY,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_expREven_uid25_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist24_expREven_uid25_block_rsrvd_fix_b_1_q <= $unsigned(expREven_uid25_block_rsrvd_fix_b);
        end
    end

    // redist22_expOddSelect_uid30_block_rsrvd_fix_q_12(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_expOddSelect_uid30_block_rsrvd_fix_q_12_q <= '0;
        end
        else
        begin
            redist22_expOddSelect_uid30_block_rsrvd_fix_q_12_q <= $unsigned(redist21_expOddSelect_uid30_block_rsrvd_fix_q_11_q);
        end
    end

    // expRMux_uid31_block_rsrvd_fix(MUX,30)@12 + 1
    assign expRMux_uid31_block_rsrvd_fix_s = redist22_expOddSelect_uid30_block_rsrvd_fix_q_12_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expRMux_uid31_block_rsrvd_fix_q <= 8'b0;
        end
        else
        begin
            unique case (expRMux_uid31_block_rsrvd_fix_s)
                1'b0 : expRMux_uid31_block_rsrvd_fix_q <= redist24_expREven_uid25_block_rsrvd_fix_b_1_q;
                1'b1 : expRMux_uid31_block_rsrvd_fix_q <= redist23_expROdd_uid28_block_rsrvd_fix_b_1_q;
                default : expRMux_uid31_block_rsrvd_fix_q <= 8'b0;
            endcase
        end
    end

    // redist20_expRMux_uid31_block_rsrvd_fix_q_3(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_expRMux_uid31_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist20_expRMux_uid31_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist20_expRMux_uid31_block_rsrvd_fix_q_3_delay_0 <= $unsigned(expRMux_uid31_block_rsrvd_fix_q);
            redist20_expRMux_uid31_block_rsrvd_fix_q_3_q <= redist20_expRMux_uid31_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // expR_uid66_block_rsrvd_fix(ADD,65)@15
    assign expR_uid66_block_rsrvd_fix_a = {1'b0, redist20_expRMux_uid31_block_rsrvd_fix_q_3_q};
    assign expR_uid66_block_rsrvd_fix_b = {8'b00000000, expInc_uid64_block_rsrvd_fix_q};
    assign expR_uid66_block_rsrvd_fix_o = $unsigned(expR_uid66_block_rsrvd_fix_a) + $unsigned(expR_uid66_block_rsrvd_fix_b);
    assign expR_uid66_block_rsrvd_fix_q = expR_uid66_block_rsrvd_fix_o[8:0];

    // expRR_uid77_block_rsrvd_fix(BITSELECT,76)@15
    assign expRR_uid77_block_rsrvd_fix_in = expR_uid66_block_rsrvd_fix_q[7:0];
    assign expRR_uid77_block_rsrvd_fix_b = expRR_uid77_block_rsrvd_fix_in[7:0];

    // redist13_expRR_uid77_block_rsrvd_fix_b_1(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_expRR_uid77_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist13_expRR_uid77_block_rsrvd_fix_b_1_q <= $unsigned(expRR_uid77_block_rsrvd_fix_b);
        end
    end

    // expXIsMax_uid14_block_rsrvd_fix(LOGICAL,13)@11 + 1
    assign expXIsMax_uid14_block_rsrvd_fix_qi = $unsigned(redist29_expX_uid6_block_rsrvd_fix_b_11_outputreg0_q == cstAllOWE_uid8_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid14_block_rsrvd_fix_delay ( .xin(expXIsMax_uid14_block_rsrvd_fix_qi), .xout(expXIsMax_uid14_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExpXIsMax_uid19_block_rsrvd_fix(LOGICAL,18)@12
    assign invExpXIsMax_uid19_block_rsrvd_fix_q = ~ (expXIsMax_uid14_block_rsrvd_fix_q);

    // InvExpXIsZero_uid20_block_rsrvd_fix(LOGICAL,19)@12
    assign InvExpXIsZero_uid20_block_rsrvd_fix_q = ~ (excZ_x_uid13_block_rsrvd_fix_q);

    // excR_x_uid21_block_rsrvd_fix(LOGICAL,20)@12
    assign excR_x_uid21_block_rsrvd_fix_q = InvExpXIsZero_uid20_block_rsrvd_fix_q & invExpXIsMax_uid19_block_rsrvd_fix_q;

    // minReg_uid69_block_rsrvd_fix(LOGICAL,68)@12 + 1
    assign minReg_uid69_block_rsrvd_fix_qi = excR_x_uid21_block_rsrvd_fix_q & redist27_signX_uid7_block_rsrvd_fix_b_12_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    minReg_uid69_block_rsrvd_fix_delay ( .xin(minReg_uid69_block_rsrvd_fix_qi), .xout(minReg_uid69_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstZeroWF_uid9_block_rsrvd_fix(CONSTANT,8)
    assign cstZeroWF_uid9_block_rsrvd_fix_q = $unsigned(17'b00000000000000000);

    // fracXIsZero_uid15_block_rsrvd_fix(LOGICAL,14)@11 + 1
    assign fracXIsZero_uid15_block_rsrvd_fix_qi = $unsigned(cstZeroWF_uid9_block_rsrvd_fix_q == redist26_frac_x_uid12_block_rsrvd_fix_b_11_outputreg0_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid15_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid15_block_rsrvd_fix_qi), .xout(fracXIsZero_uid15_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excI_x_uid17_block_rsrvd_fix(LOGICAL,16)@12
    assign excI_x_uid17_block_rsrvd_fix_q = expXIsMax_uid14_block_rsrvd_fix_q & fracXIsZero_uid15_block_rsrvd_fix_q;

    // minInf_uid70_block_rsrvd_fix(LOGICAL,69)@12 + 1
    assign minInf_uid70_block_rsrvd_fix_qi = excI_x_uid17_block_rsrvd_fix_q & redist27_signX_uid7_block_rsrvd_fix_b_12_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    minInf_uid70_block_rsrvd_fix_delay ( .xin(minInf_uid70_block_rsrvd_fix_qi), .xout(minInf_uid70_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid16_block_rsrvd_fix(LOGICAL,15)@12
    assign fracXIsNotZero_uid16_block_rsrvd_fix_q = ~ (fracXIsZero_uid15_block_rsrvd_fix_q);

    // excN_x_uid18_block_rsrvd_fix(LOGICAL,17)@12 + 1
    assign excN_x_uid18_block_rsrvd_fix_qi = expXIsMax_uid14_block_rsrvd_fix_q & fracXIsNotZero_uid16_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_x_uid18_block_rsrvd_fix_delay ( .xin(excN_x_uid18_block_rsrvd_fix_qi), .xout(excN_x_uid18_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excRNaN_uid71_block_rsrvd_fix(LOGICAL,70)@13
    assign excRNaN_uid71_block_rsrvd_fix_q = excN_x_uid18_block_rsrvd_fix_q | minInf_uid70_block_rsrvd_fix_q | minReg_uid69_block_rsrvd_fix_q;

    // invSignX_uid67_block_rsrvd_fix(LOGICAL,66)@12
    assign invSignX_uid67_block_rsrvd_fix_q = ~ (redist27_signX_uid7_block_rsrvd_fix_b_12_q);

    // inInfAndNotNeg_uid68_block_rsrvd_fix(LOGICAL,67)@12 + 1
    assign inInfAndNotNeg_uid68_block_rsrvd_fix_qi = excI_x_uid17_block_rsrvd_fix_q & invSignX_uid67_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    inInfAndNotNeg_uid68_block_rsrvd_fix_delay ( .xin(inInfAndNotNeg_uid68_block_rsrvd_fix_qi), .xout(inInfAndNotNeg_uid68_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excConc_uid72_block_rsrvd_fix(BITJOIN,71)@13
    assign excConc_uid72_block_rsrvd_fix_q = {excRNaN_uid71_block_rsrvd_fix_q, inInfAndNotNeg_uid68_block_rsrvd_fix_q, redist25_excZ_x_uid13_block_rsrvd_fix_q_2_q};

    // fracSelIn_uid73_block_rsrvd_fix(BITJOIN,72)@13
    assign fracSelIn_uid73_block_rsrvd_fix_q = {redist28_signX_uid7_block_rsrvd_fix_b_13_q, excConc_uid72_block_rsrvd_fix_q};

    // fracSel_uid74_block_rsrvd_fix(LOOKUP,73)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            fracSel_uid74_block_rsrvd_fix_q <= $unsigned(2'b01);
        end
        else
        begin
            unique case (fracSelIn_uid73_block_rsrvd_fix_q)
                4'b0000 : fracSel_uid74_block_rsrvd_fix_q <= 2'b01;
                4'b0001 : fracSel_uid74_block_rsrvd_fix_q <= 2'b00;
                4'b0010 : fracSel_uid74_block_rsrvd_fix_q <= 2'b10;
                4'b0011 : fracSel_uid74_block_rsrvd_fix_q <= 2'b00;
                4'b0100 : fracSel_uid74_block_rsrvd_fix_q <= 2'b11;
                4'b0101 : fracSel_uid74_block_rsrvd_fix_q <= 2'b00;
                4'b0110 : fracSel_uid74_block_rsrvd_fix_q <= 2'b10;
                4'b0111 : fracSel_uid74_block_rsrvd_fix_q <= 2'b00;
                4'b1000 : fracSel_uid74_block_rsrvd_fix_q <= 2'b11;
                4'b1001 : fracSel_uid74_block_rsrvd_fix_q <= 2'b00;
                4'b1010 : fracSel_uid74_block_rsrvd_fix_q <= 2'b11;
                4'b1011 : fracSel_uid74_block_rsrvd_fix_q <= 2'b11;
                4'b1100 : fracSel_uid74_block_rsrvd_fix_q <= 2'b11;
                4'b1101 : fracSel_uid74_block_rsrvd_fix_q <= 2'b11;
                4'b1110 : fracSel_uid74_block_rsrvd_fix_q <= 2'b11;
                4'b1111 : fracSel_uid74_block_rsrvd_fix_q <= 2'b11;
                default : begin
                              // unreachable
                              fracSel_uid74_block_rsrvd_fix_q <= 2'bxx;
                          end
            endcase
        end
    end

    // redist14_fracSel_uid74_block_rsrvd_fix_q_3(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_fracSel_uid74_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist14_fracSel_uid74_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist14_fracSel_uid74_block_rsrvd_fix_q_3_delay_0 <= $unsigned(fracSel_uid74_block_rsrvd_fix_q);
            redist14_fracSel_uid74_block_rsrvd_fix_q_3_q <= redist14_fracSel_uid74_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // expRPostExc_uid79_block_rsrvd_fix(MUX,78)@16
    assign expRPostExc_uid79_block_rsrvd_fix_s = redist14_fracSel_uid74_block_rsrvd_fix_q_3_q;
    always @(expRPostExc_uid79_block_rsrvd_fix_s or cstAllZWE_uid10_block_rsrvd_fix_q or redist13_expRR_uid77_block_rsrvd_fix_b_1_q or cstAllOWE_uid8_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid79_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid79_block_rsrvd_fix_q = cstAllZWE_uid10_block_rsrvd_fix_q;
            2'b01 : expRPostExc_uid79_block_rsrvd_fix_q = redist13_expRR_uid77_block_rsrvd_fix_b_1_q;
            2'b10 : expRPostExc_uid79_block_rsrvd_fix_q = cstAllOWE_uid8_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid79_block_rsrvd_fix_q = cstAllOWE_uid8_block_rsrvd_fix_q;
            default : expRPostExc_uid79_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // fracNaN_uid80_block_rsrvd_fix(CONSTANT,79)
    assign fracNaN_uid80_block_rsrvd_fix_q = $unsigned(17'b00000000000000001);

    // redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3_inputreg0(DELAY,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3_inputreg0_q <= '0;
        end
        else
        begin
            redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3_inputreg0_q <= $unsigned(expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3(DELAY,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3_delay_0 <= '0;
            redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3_q <= '0;
        end
        else
        begin
            redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3_delay_0 <= $unsigned(redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3_inputreg0_q);
            redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3_q <= redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3_delay_0;
        end
    end

    // fracRPostExc_uid84_block_rsrvd_fix(MUX,83)@16
    assign fracRPostExc_uid84_block_rsrvd_fix_s = redist14_fracSel_uid74_block_rsrvd_fix_q_3_q;
    always @(fracRPostExc_uid84_block_rsrvd_fix_s or cstZeroWF_uid9_block_rsrvd_fix_q or redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3_q or fracNaN_uid80_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid84_block_rsrvd_fix_s)
            2'b00 : fracRPostExc_uid84_block_rsrvd_fix_q = cstZeroWF_uid9_block_rsrvd_fix_q;
            2'b01 : fracRPostExc_uid84_block_rsrvd_fix_q = redist1_expUpdateCRU_uid61_block_rsrvd_fix_merged_bit_select_c_3_q;
            2'b10 : fracRPostExc_uid84_block_rsrvd_fix_q = cstZeroWF_uid9_block_rsrvd_fix_q;
            2'b11 : fracRPostExc_uid84_block_rsrvd_fix_q = fracNaN_uid80_block_rsrvd_fix_q;
            default : fracRPostExc_uid84_block_rsrvd_fix_q = 17'b0;
        endcase
    end

    // RSqrt_uid86_block_rsrvd_fix(BITJOIN,85)@16
    assign RSqrt_uid86_block_rsrvd_fix_q = {redist12_negZero_uid85_block_rsrvd_fix_q_3_q, expRPostExc_uid79_block_rsrvd_fix_q, fracRPostExc_uid84_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,4)@16
    assign out_primWireOut = RSqrt_uid86_block_rsrvd_fix_q;

endmodule
