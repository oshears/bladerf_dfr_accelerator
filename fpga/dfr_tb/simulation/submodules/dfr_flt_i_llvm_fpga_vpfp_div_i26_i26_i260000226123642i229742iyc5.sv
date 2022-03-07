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

// SystemVerilog created from flt_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i68_1_dfr0_divideBlock_typeSFloatIEEE_17_8_typeSFloatIEEE_17_8_typeSFloatIEEE_17_8_correctRounding_3f2om72cd8df8pfkrfqshq5h31n92jfemr010i10u10p10k10f10410s10h10070770j70870k70f70h80vd0ed0qf0bd0td00l0kj03j0fk00p054cz5iwt7hrliwt7ztlcxti142i226743i226123642i229742iyc5
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:30:00 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_flt_i_llvm_fpga_vpfp_div_i26_i26_i260000226123642i229742iyc5 (
    input wire [25:0] in_0,
    input wire [25:0] in_1,
    output wire [25:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] cstBiasM1_uid7_block_rsrvd_fix_q;
    wire [7:0] cstBias_uid8_block_rsrvd_fix_q;
    wire [7:0] expX_uid10_block_rsrvd_fix_b;
    wire [16:0] fracX_uid11_block_rsrvd_fix_b;
    wire [0:0] signX_uid12_block_rsrvd_fix_b;
    wire [7:0] expY_uid13_block_rsrvd_fix_b;
    wire [16:0] fracY_uid14_block_rsrvd_fix_b;
    wire [0:0] signY_uid15_block_rsrvd_fix_b;
    wire [16:0] paddingY_uid16_block_rsrvd_fix_q;
    wire [17:0] updatedY_uid17_block_rsrvd_fix_q;
    wire [17:0] fracYZero_uid16_block_rsrvd_fix_a;
    wire [0:0] fracYZero_uid16_block_rsrvd_fix_qi;
    reg [0:0] fracYZero_uid16_block_rsrvd_fix_q;
    wire [7:0] cstAllOWE_uid19_block_rsrvd_fix_q;
    wire [7:0] cstAllZWE_uid21_block_rsrvd_fix_q;
    wire [0:0] excZ_x_uid24_block_rsrvd_fix_qi;
    reg [0:0] excZ_x_uid24_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid25_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid25_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid26_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid26_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid27_block_rsrvd_fix_q;
    wire [0:0] excI_x_uid28_block_rsrvd_fix_qi;
    reg [0:0] excI_x_uid28_block_rsrvd_fix_q;
    wire [0:0] excN_x_uid29_block_rsrvd_fix_qi;
    reg [0:0] excN_x_uid29_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid30_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid31_block_rsrvd_fix_q;
    wire [0:0] excR_x_uid32_block_rsrvd_fix_q;
    wire [0:0] excZ_y_uid38_block_rsrvd_fix_qi;
    reg [0:0] excZ_y_uid38_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid39_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid39_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid40_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid40_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid41_block_rsrvd_fix_q;
    wire [0:0] excI_y_uid42_block_rsrvd_fix_qi;
    reg [0:0] excI_y_uid42_block_rsrvd_fix_q;
    wire [0:0] excN_y_uid43_block_rsrvd_fix_qi;
    reg [0:0] excN_y_uid43_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid44_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid45_block_rsrvd_fix_q;
    wire [0:0] excR_y_uid46_block_rsrvd_fix_qi;
    reg [0:0] excR_y_uid46_block_rsrvd_fix_q;
    wire [0:0] signR_uid47_block_rsrvd_fix_qi;
    reg [0:0] signR_uid47_block_rsrvd_fix_q;
    wire [8:0] expXmY_uid48_block_rsrvd_fix_a;
    wire [8:0] expXmY_uid48_block_rsrvd_fix_b;
    logic [8:0] expXmY_uid48_block_rsrvd_fix_o;
    wire [8:0] expXmY_uid48_block_rsrvd_fix_q;
    wire [10:0] expR_uid49_block_rsrvd_fix_a;
    wire [10:0] expR_uid49_block_rsrvd_fix_b;
    logic [10:0] expR_uid49_block_rsrvd_fix_o;
    wire [9:0] expR_uid49_block_rsrvd_fix_q;
    wire [6:0] yAddr_uid52_block_rsrvd_fix_b;
    wire [9:0] yPE_uid53_block_rsrvd_fix_b;
    wire [25:0] invY_uid55_block_rsrvd_fix_in;
    wire [20:0] invY_uid55_block_rsrvd_fix_b;
    wire [26:0] invYO_uid56_block_rsrvd_fix_in;
    wire [0:0] invYO_uid56_block_rsrvd_fix_b;
    wire [17:0] lOAdded_uid58_block_rsrvd_fix_q;
    wire [3:0] z4_uid61_block_rsrvd_fix_q;
    wire [21:0] oFracXZ4_uid62_block_rsrvd_fix_q;
    wire [0:0] divValPreNormYPow2Exc_uid64_block_rsrvd_fix_s;
    reg [21:0] divValPreNormYPow2Exc_uid64_block_rsrvd_fix_q;
    wire [0:0] norm_uid65_block_rsrvd_fix_b;
    wire [20:0] divValPreNormHigh_uid66_block_rsrvd_fix_in;
    wire [18:0] divValPreNormHigh_uid66_block_rsrvd_fix_b;
    wire [19:0] divValPreNormLow_uid67_block_rsrvd_fix_in;
    wire [18:0] divValPreNormLow_uid67_block_rsrvd_fix_b;
    wire [0:0] normFracRnd_uid68_block_rsrvd_fix_s;
    reg [18:0] normFracRnd_uid68_block_rsrvd_fix_q;
    wire [28:0] expFracRnd_uid69_block_rsrvd_fix_q;
    wire [17:0] zeroPaddingInAddition_uid75_block_rsrvd_fix_q;
    wire [19:0] expFracPostRnd_uid76_block_rsrvd_fix_q;
    wire [30:0] expFracPostRnd_uid77_block_rsrvd_fix_a;
    wire [30:0] expFracPostRnd_uid77_block_rsrvd_fix_b;
    logic [30:0] expFracPostRnd_uid77_block_rsrvd_fix_o;
    wire [29:0] expFracPostRnd_uid77_block_rsrvd_fix_q;
    wire [17:0] fracXExt_uid78_block_rsrvd_fix_q;
    wire [18:0] fracPostRndF_uid80_block_rsrvd_fix_in;
    wire [17:0] fracPostRndF_uid80_block_rsrvd_fix_b;
    wire [0:0] fracPostRndF_uid81_block_rsrvd_fix_s;
    reg [17:0] fracPostRndF_uid81_block_rsrvd_fix_q;
    wire [26:0] expPostRndFR_uid82_block_rsrvd_fix_in;
    wire [7:0] expPostRndFR_uid82_block_rsrvd_fix_b;
    wire [0:0] expPostRndF_uid83_block_rsrvd_fix_s;
    reg [7:0] expPostRndF_uid83_block_rsrvd_fix_q;
    wire [18:0] lOAdded_uid85_block_rsrvd_fix_q;
    wire [17:0] lOAdded_uid88_block_rsrvd_fix_q;
    wire [36:0] qDivProdNorm_uid91_block_rsrvd_fix_in;
    wire [0:0] qDivProdNorm_uid91_block_rsrvd_fix_b;
    wire [35:0] qDivProdFracHigh_uid92_block_rsrvd_fix_in;
    wire [17:0] qDivProdFracHigh_uid92_block_rsrvd_fix_b;
    wire [34:0] qDivProdFracLow_uid93_block_rsrvd_fix_in;
    wire [17:0] qDivProdFracLow_uid93_block_rsrvd_fix_b;
    wire [0:0] qDivProdFrac_uid94_block_rsrvd_fix_s;
    reg [17:0] qDivProdFrac_uid94_block_rsrvd_fix_q;
    wire [8:0] qDivProdExp_opA_uid95_block_rsrvd_fix_a;
    wire [8:0] qDivProdExp_opA_uid95_block_rsrvd_fix_b;
    logic [8:0] qDivProdExp_opA_uid95_block_rsrvd_fix_o;
    wire [8:0] qDivProdExp_opA_uid95_block_rsrvd_fix_q;
    wire [8:0] qDivProdExp_opBs_uid96_block_rsrvd_fix_a;
    wire [8:0] qDivProdExp_opBs_uid96_block_rsrvd_fix_b;
    logic [8:0] qDivProdExp_opBs_uid96_block_rsrvd_fix_o;
    wire [8:0] qDivProdExp_opBs_uid96_block_rsrvd_fix_q;
    wire [11:0] qDivProdExp_uid97_block_rsrvd_fix_a;
    wire [11:0] qDivProdExp_uid97_block_rsrvd_fix_b;
    logic [11:0] qDivProdExp_uid97_block_rsrvd_fix_o;
    wire [10:0] qDivProdExp_uid97_block_rsrvd_fix_q;
    wire [16:0] qDivProdFracWF_uid98_block_rsrvd_fix_b;
    wire [7:0] qDivProdLTX_opA_uid99_block_rsrvd_fix_in;
    wire [7:0] qDivProdLTX_opA_uid99_block_rsrvd_fix_b;
    wire [24:0] qDivProdLTX_opA_uid100_block_rsrvd_fix_q;
    wire [24:0] qDivProdLTX_opB_uid101_block_rsrvd_fix_q;
    wire [26:0] qDividerProdLTX_uid102_block_rsrvd_fix_a;
    wire [26:0] qDividerProdLTX_uid102_block_rsrvd_fix_b;
    logic [26:0] qDividerProdLTX_uid102_block_rsrvd_fix_o;
    wire [0:0] qDividerProdLTX_uid102_block_rsrvd_fix_c;
    wire [0:0] betweenFPwF_uid103_block_rsrvd_fix_in;
    wire [0:0] betweenFPwF_uid103_block_rsrvd_fix_b;
    wire [0:0] extraUlp_uid104_block_rsrvd_fix_qi;
    reg [0:0] extraUlp_uid104_block_rsrvd_fix_q;
    wire [16:0] fracPostRndFT_uid105_block_rsrvd_fix_b;
    wire [17:0] fracRPreExcExt_uid106_block_rsrvd_fix_a;
    wire [17:0] fracRPreExcExt_uid106_block_rsrvd_fix_b;
    logic [17:0] fracRPreExcExt_uid106_block_rsrvd_fix_o;
    wire [17:0] fracRPreExcExt_uid106_block_rsrvd_fix_q;
    wire [16:0] fracPostRndFPostUlp_uid107_block_rsrvd_fix_in;
    wire [16:0] fracPostRndFPostUlp_uid107_block_rsrvd_fix_b;
    wire [0:0] fracRPreExc_uid108_block_rsrvd_fix_s;
    reg [16:0] fracRPreExc_uid108_block_rsrvd_fix_q;
    wire [0:0] ovfIncRnd_uid110_block_rsrvd_fix_b;
    wire [8:0] expFracPostRndInc_uid111_block_rsrvd_fix_a;
    wire [8:0] expFracPostRndInc_uid111_block_rsrvd_fix_b;
    logic [8:0] expFracPostRndInc_uid111_block_rsrvd_fix_o;
    wire [8:0] expFracPostRndInc_uid111_block_rsrvd_fix_q;
    wire [7:0] expFracPostRndR_uid112_block_rsrvd_fix_in;
    wire [7:0] expFracPostRndR_uid112_block_rsrvd_fix_b;
    wire [0:0] expRPreExc_uid113_block_rsrvd_fix_s;
    reg [7:0] expRPreExc_uid113_block_rsrvd_fix_q;
    wire [10:0] expRExt_uid115_block_rsrvd_fix_b;
    wire [12:0] expUdf_uid116_block_rsrvd_fix_a;
    wire [12:0] expUdf_uid116_block_rsrvd_fix_b;
    logic [12:0] expUdf_uid116_block_rsrvd_fix_o;
    wire [0:0] expUdf_uid116_block_rsrvd_fix_n;
    wire [12:0] expOvf_uid119_block_rsrvd_fix_a;
    wire [12:0] expOvf_uid119_block_rsrvd_fix_b;
    logic [12:0] expOvf_uid119_block_rsrvd_fix_o;
    wire [0:0] expOvf_uid119_block_rsrvd_fix_n;
    wire [0:0] zeroOverReg_uid120_block_rsrvd_fix_q;
    wire [0:0] regOverRegWithUf_uid121_block_rsrvd_fix_q;
    wire [0:0] xRegOrZero_uid122_block_rsrvd_fix_qi;
    reg [0:0] xRegOrZero_uid122_block_rsrvd_fix_q;
    wire [0:0] regOrZeroOverInf_uid123_block_rsrvd_fix_q;
    wire [0:0] excRZero_uid124_block_rsrvd_fix_qi;
    reg [0:0] excRZero_uid124_block_rsrvd_fix_q;
    wire [0:0] excXRYZ_uid125_block_rsrvd_fix_q;
    wire [0:0] excXRYROvf_uid126_block_rsrvd_fix_q;
    wire [0:0] excXIYZ_uid127_block_rsrvd_fix_q;
    wire [0:0] excXIYR_uid128_block_rsrvd_fix_q;
    wire [0:0] excRInf_uid129_block_rsrvd_fix_qi;
    reg [0:0] excRInf_uid129_block_rsrvd_fix_q;
    wire [0:0] excXZYZ_uid130_block_rsrvd_fix_q;
    wire [0:0] excXIYI_uid131_block_rsrvd_fix_q;
    wire [0:0] excRNaN_uid132_block_rsrvd_fix_qi;
    reg [0:0] excRNaN_uid132_block_rsrvd_fix_q;
    wire [2:0] concExc_uid133_block_rsrvd_fix_q;
    reg [1:0] excREnc_uid134_block_rsrvd_fix_q;
    wire [16:0] oneFracRPostExc2_uid135_block_rsrvd_fix_q;
    wire [1:0] fracRPostExc_uid138_block_rsrvd_fix_s;
    reg [16:0] fracRPostExc_uid138_block_rsrvd_fix_q;
    wire [1:0] expRPostExc_uid142_block_rsrvd_fix_s;
    reg [7:0] expRPostExc_uid142_block_rsrvd_fix_q;
    wire [0:0] invExcRNaN_uid143_block_rsrvd_fix_q;
    wire [0:0] sRPostExc_uid144_block_rsrvd_fix_qi;
    reg [0:0] sRPostExc_uid144_block_rsrvd_fix_q;
    wire [25:0] divR_uid145_block_rsrvd_fix_q;
    reg [25:0] memoryC0_uid147_invTables_q;
    reg [17:0] memoryC1_uid150_invTables_q;
    reg [10:0] memoryC2_uid153_invTables_q;
    wire [0:0] lowRangeB_uid161_invPolyEval_in;
    wire [0:0] lowRangeB_uid161_invPolyEval_b;
    wire [10:0] highBBits_uid162_invPolyEval_b;
    wire [18:0] s1sumAHighB_uid163_invPolyEval_a;
    wire [18:0] s1sumAHighB_uid163_invPolyEval_b;
    logic [18:0] s1sumAHighB_uid163_invPolyEval_o;
    wire [18:0] s1sumAHighB_uid163_invPolyEval_q;
    wire [19:0] s1_uid164_invPolyEval_q;
    wire [1:0] lowRangeB_uid167_invPolyEval_in;
    wire [1:0] lowRangeB_uid167_invPolyEval_b;
    wire [18:0] highBBits_uid168_invPolyEval_b;
    wire [26:0] s2sumAHighB_uid169_invPolyEval_a;
    wire [26:0] s2sumAHighB_uid169_invPolyEval_b;
    logic [26:0] s2sumAHighB_uid169_invPolyEval_o;
    wire [26:0] s2sumAHighB_uid169_invPolyEval_q;
    wire [28:0] s2_uid170_invPolyEval_q;
    wire [38:0] osig_uid173_divValPreNorm_uid60_block_rsrvd_fix_in;
    wire [21:0] osig_uid173_divValPreNorm_uid60_block_rsrvd_fix_b;
    wire [11:0] osig_uid176_pT1_uid160_invPolyEval_b;
    wire [29:0] osig_uid179_pT2_uid166_invPolyEval_in;
    wire [20:0] osig_uid179_pT2_uid166_invPolyEval_b;
    wire [36:0] qDivProd_uid90_block_rsrvd_fix_sums_align_1_q;
    wire [36:0] qDivProd_uid90_block_rsrvd_fix_sums_align_1_qint;
    wire [37:0] qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0_a;
    wire [37:0] qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0_b;
    logic [37:0] qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0_o;
    wire [37:0] qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0_q;
    wire [38:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_align_1_q;
    wire [38:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_align_1_qint;
    wire [39:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_result_add_0_0_a;
    wire [39:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_result_add_0_0_b;
    logic [39:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_result_add_0_0_o;
    wire [39:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_result_add_0_0_q;
    wire [29:0] prodXY_uid178_pT2_uid166_invPolyEval_sums_align_1_q;
    wire [29:0] prodXY_uid178_pT2_uid166_invPolyEval_sums_align_1_qint;
    wire [31:0] prodXY_uid178_pT2_uid166_invPolyEval_sums_result_add_0_0_a;
    wire [31:0] prodXY_uid178_pT2_uid166_invPolyEval_sums_result_add_0_0_b;
    logic [31:0] prodXY_uid178_pT2_uid166_invPolyEval_sums_result_add_0_0_o;
    wire [30:0] prodXY_uid178_pT2_uid166_invPolyEval_sums_result_add_0_0_q;
    wire prodXY_uid175_pT1_uid160_invPolyEval_cma_reset;
    (* preserve *) reg [9:0] prodXY_uid175_pT1_uid160_invPolyEval_cma_a0 [0:0];
    (* preserve *) reg signed [10:0] prodXY_uid175_pT1_uid160_invPolyEval_cma_c0 [0:0];
    wire signed [10:0] prodXY_uid175_pT1_uid160_invPolyEval_cma_l [0:0];
    wire signed [21:0] prodXY_uid175_pT1_uid160_invPolyEval_cma_p [0:0];
    wire signed [21:0] prodXY_uid175_pT1_uid160_invPolyEval_cma_u [0:0];
    wire signed [21:0] prodXY_uid175_pT1_uid160_invPolyEval_cma_w [0:0];
    wire signed [21:0] prodXY_uid175_pT1_uid160_invPolyEval_cma_x [0:0];
    wire signed [21:0] prodXY_uid175_pT1_uid160_invPolyEval_cma_y [0:0];
    reg signed [21:0] prodXY_uid175_pT1_uid160_invPolyEval_cma_s [0:0];
    wire [21:0] prodXY_uid175_pT1_uid160_invPolyEval_cma_qq;
    wire [20:0] prodXY_uid175_pT1_uid160_invPolyEval_cma_q;
    wire prodXY_uid175_pT1_uid160_invPolyEval_cma_ena0;
    wire prodXY_uid175_pT1_uid160_invPolyEval_cma_ena1;
    wire qDivProd_uid90_block_rsrvd_fix_im0_cma_reset;
    (* preserve *) reg [17:0] qDivProd_uid90_block_rsrvd_fix_im0_cma_a0 [0:0];
    (* preserve *) reg [9:0] qDivProd_uid90_block_rsrvd_fix_im0_cma_c0 [0:0];
    wire [27:0] qDivProd_uid90_block_rsrvd_fix_im0_cma_p [0:0];
    wire [27:0] qDivProd_uid90_block_rsrvd_fix_im0_cma_u [0:0];
    wire [27:0] qDivProd_uid90_block_rsrvd_fix_im0_cma_w [0:0];
    wire [27:0] qDivProd_uid90_block_rsrvd_fix_im0_cma_x [0:0];
    wire [27:0] qDivProd_uid90_block_rsrvd_fix_im0_cma_y [0:0];
    reg [27:0] qDivProd_uid90_block_rsrvd_fix_im0_cma_s [0:0];
    wire [27:0] qDivProd_uid90_block_rsrvd_fix_im0_cma_qq;
    wire [18:0] qDivProd_uid90_block_rsrvd_fix_im0_cma_q;
    wire qDivProd_uid90_block_rsrvd_fix_im0_cma_ena0;
    wire qDivProd_uid90_block_rsrvd_fix_im0_cma_ena1;
    wire qDivProd_uid90_block_rsrvd_fix_im3_cma_reset;
    (* preserve *) reg [17:0] qDivProd_uid90_block_rsrvd_fix_im3_cma_a0 [0:0];
    (* preserve *) reg [17:0] qDivProd_uid90_block_rsrvd_fix_im3_cma_c0 [0:0];
    wire [35:0] qDivProd_uid90_block_rsrvd_fix_im3_cma_p [0:0];
    wire [35:0] qDivProd_uid90_block_rsrvd_fix_im3_cma_u [0:0];
    wire [35:0] qDivProd_uid90_block_rsrvd_fix_im3_cma_w [0:0];
    wire [35:0] qDivProd_uid90_block_rsrvd_fix_im3_cma_x [0:0];
    wire [35:0] qDivProd_uid90_block_rsrvd_fix_im3_cma_y [0:0];
    reg [35:0] qDivProd_uid90_block_rsrvd_fix_im3_cma_s [0:0];
    wire [35:0] qDivProd_uid90_block_rsrvd_fix_im3_cma_qq;
    wire [35:0] qDivProd_uid90_block_rsrvd_fix_im3_cma_q;
    wire qDivProd_uid90_block_rsrvd_fix_im3_cma_ena0;
    wire qDivProd_uid90_block_rsrvd_fix_im3_cma_ena1;
    wire prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_reset;
    (* preserve *) reg [17:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_a0 [0:0];
    (* preserve *) reg [9:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_c0 [0:0];
    wire [27:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_p [0:0];
    wire [27:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_u [0:0];
    wire [27:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_w [0:0];
    wire [27:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_x [0:0];
    wire [27:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_y [0:0];
    reg [27:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_s [0:0];
    wire [27:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_qq;
    wire [20:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_q;
    wire prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_ena0;
    wire prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_ena1;
    wire prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_reset;
    (* preserve *) reg [17:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_a0 [0:0];
    (* preserve *) reg [17:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_c0 [0:0];
    wire [35:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_p [0:0];
    wire [35:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_u [0:0];
    wire [35:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_w [0:0];
    wire [35:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_x [0:0];
    wire [35:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_y [0:0];
    reg [35:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_s [0:0];
    wire [35:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_qq;
    wire [35:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_q;
    wire prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_ena0;
    wire prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_ena1;
    wire prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_reset;
    (* preserve *) reg [9:0] prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_a0 [0:0];
    (* preserve *) reg signed [10:0] prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_c0 [0:0];
    wire signed [10:0] prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_l [0:0];
    wire signed [21:0] prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_p [0:0];
    wire signed [21:0] prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_u [0:0];
    wire signed [21:0] prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_w [0:0];
    wire signed [21:0] prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_x [0:0];
    wire signed [21:0] prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_y [0:0];
    reg signed [21:0] prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_s [0:0];
    wire [21:0] prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_qq;
    wire [11:0] prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_q;
    wire prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_ena0;
    wire prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_ena1;
    wire prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_reset;
    (* preserve *) reg [17:0] prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_a0 [0:0];
    (* preserve *) reg [9:0] prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_c0 [0:0];
    wire [27:0] prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_p [0:0];
    wire [27:0] prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_u [0:0];
    wire [27:0] prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_w [0:0];
    wire [27:0] prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_x [0:0];
    wire [27:0] prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_y [0:0];
    reg [27:0] prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_s [0:0];
    wire [27:0] prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_qq;
    wire [27:0] prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_q;
    wire prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_ena0;
    wire prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_ena1;
    wire [2:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_bs1_merged_bit_select_b;
    wire [17:0] prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_bs1_merged_bit_select_c;
    wire [0:0] qDivProd_uid90_block_rsrvd_fix_bs1_merged_bit_select_b;
    wire [17:0] qDivProd_uid90_block_rsrvd_fix_bs1_merged_bit_select_c;
    wire [1:0] prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_b;
    wire [17:0] prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_c;
    reg [1:0] redist0_prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_b_1_q;
    reg [17:0] redist1_prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_c_1_q;
    reg [27:0] redist2_prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_q_1_q;
    reg [11:0] redist3_prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_q_1_q;
    reg [35:0] redist4_prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_q_1_q;
    reg [20:0] redist5_prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_q_1_q;
    reg [35:0] redist6_qDivProd_uid90_block_rsrvd_fix_im3_cma_q_1_q;
    reg [18:0] redist7_qDivProd_uid90_block_rsrvd_fix_im0_cma_q_1_q;
    reg [20:0] redist8_osig_uid179_pT2_uid166_invPolyEval_b_1_q;
    reg [21:0] redist9_osig_uid173_divValPreNorm_uid60_block_rsrvd_fix_b_1_q;
    reg [10:0] redist10_highBBits_uid162_invPolyEval_b_1_q;
    reg [0:0] redist11_lowRangeB_uid161_invPolyEval_b_1_q;
    reg [0:0] redist12_sRPostExc_uid144_block_rsrvd_fix_q_8_q;
    reg [1:0] redist13_excREnc_uid134_block_rsrvd_fix_q_8_q;
    reg [7:0] redist14_expFracPostRndR_uid112_block_rsrvd_fix_b_1_q;
    reg [0:0] redist15_ovfIncRnd_uid110_block_rsrvd_fix_b_1_q;
    reg [16:0] redist16_fracPostRndFPostUlp_uid107_block_rsrvd_fix_b_1_q;
    reg [16:0] redist17_fracPostRndFT_uid105_block_rsrvd_fix_b_1_q;
    reg [16:0] redist18_fracPostRndFT_uid105_block_rsrvd_fix_b_2_q;
    reg [0:0] redist19_extraUlp_uid104_block_rsrvd_fix_q_2_q;
    reg [0:0] redist20_extraUlp_uid104_block_rsrvd_fix_q_3_q;
    reg [7:0] redist22_qDivProdLTX_opA_uid99_block_rsrvd_fix_b_1_q;
    reg [16:0] redist23_qDivProdFracWF_uid98_block_rsrvd_fix_b_2_q;
    reg [16:0] redist23_qDivProdFracWF_uid98_block_rsrvd_fix_b_2_delay_0;
    reg [8:0] redist24_qDivProdExp_opA_uid95_block_rsrvd_fix_q_4_q;
    reg [8:0] redist24_qDivProdExp_opA_uid95_block_rsrvd_fix_q_4_delay_0;
    reg [8:0] redist24_qDivProdExp_opA_uid95_block_rsrvd_fix_q_4_delay_1;
    reg [17:0] redist25_qDivProdFracLow_uid93_block_rsrvd_fix_b_1_q;
    reg [17:0] redist26_qDivProdFracHigh_uid92_block_rsrvd_fix_b_1_q;
    reg [0:0] redist27_qDivProdNorm_uid91_block_rsrvd_fix_b_1_q;
    reg [7:0] redist29_expPostRndFR_uid82_block_rsrvd_fix_b_10_q;
    reg [0:0] redist31_norm_uid65_block_rsrvd_fix_b_1_q;
    reg [17:0] redist32_lOAdded_uid58_block_rsrvd_fix_q_4_q;
    reg [17:0] redist32_lOAdded_uid58_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist33_invYO_uid56_block_rsrvd_fix_b_7_q;
    reg [20:0] redist34_invY_uid55_block_rsrvd_fix_b_1_q;
    reg [9:0] redist35_yPE_uid53_block_rsrvd_fix_b_1_q;
    reg [9:0] redist36_yPE_uid53_block_rsrvd_fix_b_5_q;
    reg [9:0] redist36_yPE_uid53_block_rsrvd_fix_b_5_delay_0;
    reg [9:0] redist36_yPE_uid53_block_rsrvd_fix_b_5_delay_1;
    reg [6:0] redist37_yAddr_uid52_block_rsrvd_fix_b_3_q;
    reg [6:0] redist37_yAddr_uid52_block_rsrvd_fix_b_3_delay_0;
    reg [6:0] redist37_yAddr_uid52_block_rsrvd_fix_b_3_delay_1;
    reg [6:0] redist38_yAddr_uid52_block_rsrvd_fix_b_8_q;
    reg [6:0] redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_0;
    reg [6:0] redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_1;
    reg [6:0] redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_2;
    reg [6:0] redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_3;
    reg [0:0] redist39_signR_uid47_block_rsrvd_fix_q_8_q;
    reg [0:0] redist40_excZ_y_uid38_block_rsrvd_fix_q_2_q;
    reg [0:0] redist41_excR_x_uid32_block_rsrvd_fix_q_1_q;
    reg [0:0] redist42_excZ_x_uid24_block_rsrvd_fix_q_2_q;
    reg [0:0] redist43_signY_uid15_block_rsrvd_fix_b_10_q;
    reg [16:0] redist45_fracY_uid14_block_rsrvd_fix_b_15_q;
    reg [16:0] redist45_fracY_uid14_block_rsrvd_fix_b_15_delay_0;
    reg [16:0] redist46_fracY_uid14_block_rsrvd_fix_b_16_q;
    reg [7:0] redist48_expY_uid13_block_rsrvd_fix_b_15_q;
    reg [7:0] redist48_expY_uid13_block_rsrvd_fix_b_15_delay_0;
    reg [7:0] redist49_expY_uid13_block_rsrvd_fix_b_17_q;
    reg [7:0] redist49_expY_uid13_block_rsrvd_fix_b_17_delay_0;
    reg [16:0] redist51_fracX_uid11_block_rsrvd_fix_b_6_q;
    reg [7:0] redist52_expX_uid10_block_rsrvd_fix_b_3_q;
    reg [7:0] redist52_expX_uid10_block_rsrvd_fix_b_3_delay_0;
    reg [7:0] redist52_expX_uid10_block_rsrvd_fix_b_3_delay_1;
    reg [7:0] redist53_expX_uid10_block_rsrvd_fix_b_5_q;
    reg [7:0] redist53_expX_uid10_block_rsrvd_fix_b_5_delay_0;
    reg [7:0] redist54_expX_uid10_block_rsrvd_fix_b_6_q;
    reg [24:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_inputreg0_q;
    reg [24:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_outputreg0_q;
    wire redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_reset0;
    wire [24:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_ia;
    wire [1:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_aa;
    wire [1:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_ab;
    wire [24:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_iq;
    wire [24:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_q;
    wire [1:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_q;
    (* preserve *) reg [1:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_i;
    (* preserve *) reg redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_eq;
    reg [1:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_wraddr_q;
    wire [1:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_last_q;
    wire [0:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_cmp_q;
    (* dont_merge *) reg [0:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_cmpReg_q;
    wire [0:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_notEnable_q;
    wire [0:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_nor_q;
    (* dont_merge *) reg [0:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_sticky_ena_q;
    wire [0:0] redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_enaAnd_q;
    reg [7:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_inputreg0_q;
    reg [7:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_outputreg0_q;
    wire redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_reset0;
    wire [7:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_ia;
    wire [2:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_aa;
    wire [2:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_ab;
    wire [7:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_iq;
    wire [7:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_q;
    wire [2:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_q;
    (* preserve *) reg [2:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_i;
    (* preserve *) reg redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_eq;
    reg [2:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_wraddr_q;
    wire [3:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_last_q;
    wire [3:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_cmp_b;
    wire [0:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_cmp_q;
    (* dont_merge *) reg [0:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_cmpReg_q;
    wire [0:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_notEnable_q;
    wire [0:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_nor_q;
    (* dont_merge *) reg [0:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_sticky_ena_q;
    wire [0:0] redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_enaAnd_q;
    reg [17:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_inputreg0_q;
    reg [17:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_outputreg0_q;
    wire redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_reset0;
    wire [17:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_ia;
    wire [1:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_aa;
    wire [1:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_ab;
    wire [17:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_iq;
    wire [17:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_q;
    wire [1:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_rdcnt_q;
    (* preserve *) reg [1:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_rdcnt_i;
    reg [1:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_wraddr_q;
    wire [2:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_last_q;
    wire [2:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_cmp_b;
    wire [0:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_cmp_q;
    (* dont_merge *) reg [0:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_cmpReg_q;
    wire [0:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_notEnable_q;
    wire [0:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_nor_q;
    (* dont_merge *) reg [0:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_sticky_ena_q;
    wire [0:0] redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_enaAnd_q;
    reg [17:0] redist32_lOAdded_uid58_block_rsrvd_fix_q_4_inputreg0_q;
    reg [17:0] redist32_lOAdded_uid58_block_rsrvd_fix_q_4_outputreg0_q;
    reg [9:0] redist36_yPE_uid53_block_rsrvd_fix_b_5_inputreg0_q;
    reg [16:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_inputreg0_q;
    reg [16:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_outputreg0_q;
    wire redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_reset0;
    wire [16:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_ia;
    wire [3:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_aa;
    wire [3:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_ab;
    wire [16:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_iq;
    wire [16:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_q;
    wire [3:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_q;
    (* preserve *) reg [3:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_i;
    (* preserve *) reg redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_eq;
    reg [3:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_wraddr_q;
    wire [4:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_last_q;
    wire [4:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_cmp_b;
    wire [0:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_cmp_q;
    (* dont_merge *) reg [0:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_cmpReg_q;
    wire [0:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_notEnable_q;
    wire [0:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_nor_q;
    (* dont_merge *) reg [0:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_sticky_ena_q;
    wire [0:0] redist44_fracY_uid14_block_rsrvd_fix_b_13_enaAnd_q;
    reg [7:0] redist47_expY_uid13_block_rsrvd_fix_b_13_inputreg0_q;
    reg [7:0] redist47_expY_uid13_block_rsrvd_fix_b_13_outputreg0_q;
    wire redist47_expY_uid13_block_rsrvd_fix_b_13_mem_reset0;
    wire [7:0] redist47_expY_uid13_block_rsrvd_fix_b_13_mem_ia;
    wire [3:0] redist47_expY_uid13_block_rsrvd_fix_b_13_mem_aa;
    wire [3:0] redist47_expY_uid13_block_rsrvd_fix_b_13_mem_ab;
    wire [7:0] redist47_expY_uid13_block_rsrvd_fix_b_13_mem_iq;
    wire [7:0] redist47_expY_uid13_block_rsrvd_fix_b_13_mem_q;
    wire [3:0] redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_q;
    (* preserve *) reg [3:0] redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_i;
    (* preserve *) reg redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_eq;
    reg [3:0] redist47_expY_uid13_block_rsrvd_fix_b_13_wraddr_q;
    wire [4:0] redist47_expY_uid13_block_rsrvd_fix_b_13_mem_last_q;
    wire [4:0] redist47_expY_uid13_block_rsrvd_fix_b_13_cmp_b;
    wire [0:0] redist47_expY_uid13_block_rsrvd_fix_b_13_cmp_q;
    (* dont_merge *) reg [0:0] redist47_expY_uid13_block_rsrvd_fix_b_13_cmpReg_q;
    wire [0:0] redist47_expY_uid13_block_rsrvd_fix_b_13_notEnable_q;
    wire [0:0] redist47_expY_uid13_block_rsrvd_fix_b_13_nor_q;
    (* dont_merge *) reg [0:0] redist47_expY_uid13_block_rsrvd_fix_b_13_sticky_ena_q;
    wire [0:0] redist47_expY_uid13_block_rsrvd_fix_b_13_enaAnd_q;
    reg [16:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_inputreg0_q;
    reg [16:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_outputreg0_q;
    wire redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_reset0;
    wire [16:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_ia;
    wire [0:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_aa;
    wire [0:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_ab;
    wire [16:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_iq;
    wire [16:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_q;
    wire [0:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_rdcnt_q;
    (* preserve *) reg [0:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_rdcnt_i;
    reg [0:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_wraddr_q;
    (* dont_merge *) reg [0:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_cmpReg_q;
    wire [0:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_notEnable_q;
    wire [0:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_nor_q;
    (* dont_merge *) reg [0:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_sticky_ena_q;
    wire [0:0] redist50_fracX_uid11_block_rsrvd_fix_b_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist44_fracY_uid14_block_rsrvd_fix_b_13_notEnable(LOGICAL,322)
    assign redist44_fracY_uid14_block_rsrvd_fix_b_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist44_fracY_uid14_block_rsrvd_fix_b_13_nor(LOGICAL,323)
    assign redist44_fracY_uid14_block_rsrvd_fix_b_13_nor_q = ~ (redist44_fracY_uid14_block_rsrvd_fix_b_13_notEnable_q | redist44_fracY_uid14_block_rsrvd_fix_b_13_sticky_ena_q);

    // redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_last(CONSTANT,319)
    assign redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_last_q = $unsigned(5'b01000);

    // redist44_fracY_uid14_block_rsrvd_fix_b_13_cmp(LOGICAL,320)
    assign redist44_fracY_uid14_block_rsrvd_fix_b_13_cmp_b = {1'b0, redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_q};
    assign redist44_fracY_uid14_block_rsrvd_fix_b_13_cmp_q = $unsigned(redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_last_q == redist44_fracY_uid14_block_rsrvd_fix_b_13_cmp_b ? 1'b1 : 1'b0);

    // redist44_fracY_uid14_block_rsrvd_fix_b_13_cmpReg(REG,321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_fracY_uid14_block_rsrvd_fix_b_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist44_fracY_uid14_block_rsrvd_fix_b_13_cmpReg_q <= $unsigned(redist44_fracY_uid14_block_rsrvd_fix_b_13_cmp_q);
        end
    end

    // redist44_fracY_uid14_block_rsrvd_fix_b_13_sticky_ena(REG,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_fracY_uid14_block_rsrvd_fix_b_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist44_fracY_uid14_block_rsrvd_fix_b_13_nor_q == 1'b1)
        begin
            redist44_fracY_uid14_block_rsrvd_fix_b_13_sticky_ena_q <= $unsigned(redist44_fracY_uid14_block_rsrvd_fix_b_13_cmpReg_q);
        end
    end

    // redist44_fracY_uid14_block_rsrvd_fix_b_13_enaAnd(LOGICAL,325)
    assign redist44_fracY_uid14_block_rsrvd_fix_b_13_enaAnd_q = redist44_fracY_uid14_block_rsrvd_fix_b_13_sticky_ena_q & VCC_q;

    // redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt(COUNTER,317)
    // low=0, high=9, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_i <= 4'd0;
            redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_i == 4'd8)
            begin
                redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_eq <= 1'b0;
            end
            if (redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_eq == 1'b1)
            begin
                redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_i <= $unsigned(redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_i) + $unsigned(4'd7);
            end
            else
            begin
                redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_i <= $unsigned(redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_q = redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_i[3:0];

    // fracY_uid14_block_rsrvd_fix(BITSELECT,13)@0
    assign fracY_uid14_block_rsrvd_fix_b = in_1[16:0];

    // redist44_fracY_uid14_block_rsrvd_fix_b_13_inputreg0(DELAY,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_fracY_uid14_block_rsrvd_fix_b_13_inputreg0_q <= '0;
        end
        else
        begin
            redist44_fracY_uid14_block_rsrvd_fix_b_13_inputreg0_q <= $unsigned(fracY_uid14_block_rsrvd_fix_b);
        end
    end

    // redist44_fracY_uid14_block_rsrvd_fix_b_13_wraddr(REG,318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_fracY_uid14_block_rsrvd_fix_b_13_wraddr_q <= $unsigned(4'b1001);
        end
        else
        begin
            redist44_fracY_uid14_block_rsrvd_fix_b_13_wraddr_q <= $unsigned(redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_q);
        end
    end

    // redist44_fracY_uid14_block_rsrvd_fix_b_13_mem(DUALMEM,316)
    assign redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_ia = $unsigned(redist44_fracY_uid14_block_rsrvd_fix_b_13_inputreg0_q);
    assign redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_aa = redist44_fracY_uid14_block_rsrvd_fix_b_13_wraddr_q;
    assign redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_ab = redist44_fracY_uid14_block_rsrvd_fix_b_13_rdcnt_q;
    assign redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(17),
        .widthad_a(4),
        .numwords_a(10),
        .width_b(17),
        .widthad_b(4),
        .numwords_b(10),
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
    ) redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_dmem (
        .clocken1(redist44_fracY_uid14_block_rsrvd_fix_b_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_reset0),
        .clock1(clock),
        .address_a(redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_aa),
        .data_a(redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_ab),
        .q_b(redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_iq),
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
    assign redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_q = redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_iq[16:0];

    // redist44_fracY_uid14_block_rsrvd_fix_b_13_outputreg0(DELAY,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_fracY_uid14_block_rsrvd_fix_b_13_outputreg0_q <= '0;
        end
        else
        begin
            redist44_fracY_uid14_block_rsrvd_fix_b_13_outputreg0_q <= $unsigned(redist44_fracY_uid14_block_rsrvd_fix_b_13_mem_q);
        end
    end

    // redist45_fracY_uid14_block_rsrvd_fix_b_15(DELAY,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_fracY_uid14_block_rsrvd_fix_b_15_delay_0 <= '0;
            redist45_fracY_uid14_block_rsrvd_fix_b_15_q <= '0;
        end
        else
        begin
            redist45_fracY_uid14_block_rsrvd_fix_b_15_delay_0 <= $unsigned(redist44_fracY_uid14_block_rsrvd_fix_b_13_outputreg0_q);
            redist45_fracY_uid14_block_rsrvd_fix_b_15_q <= redist45_fracY_uid14_block_rsrvd_fix_b_15_delay_0;
        end
    end

    // paddingY_uid16_block_rsrvd_fix(CONSTANT,15)
    assign paddingY_uid16_block_rsrvd_fix_q = $unsigned(17'b00000000000000000);

    // fracXIsZero_uid40_block_rsrvd_fix(LOGICAL,39)@15 + 1
    assign fracXIsZero_uid40_block_rsrvd_fix_qi = $unsigned(paddingY_uid16_block_rsrvd_fix_q == redist45_fracY_uid14_block_rsrvd_fix_b_15_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid40_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid40_block_rsrvd_fix_qi), .xout(fracXIsZero_uid40_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllOWE_uid19_block_rsrvd_fix(CONSTANT,18)
    assign cstAllOWE_uid19_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // redist47_expY_uid13_block_rsrvd_fix_b_13_notEnable(LOGICAL,334)
    assign redist47_expY_uid13_block_rsrvd_fix_b_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist47_expY_uid13_block_rsrvd_fix_b_13_nor(LOGICAL,335)
    assign redist47_expY_uid13_block_rsrvd_fix_b_13_nor_q = ~ (redist47_expY_uid13_block_rsrvd_fix_b_13_notEnable_q | redist47_expY_uid13_block_rsrvd_fix_b_13_sticky_ena_q);

    // redist47_expY_uid13_block_rsrvd_fix_b_13_mem_last(CONSTANT,331)
    assign redist47_expY_uid13_block_rsrvd_fix_b_13_mem_last_q = $unsigned(5'b01000);

    // redist47_expY_uid13_block_rsrvd_fix_b_13_cmp(LOGICAL,332)
    assign redist47_expY_uid13_block_rsrvd_fix_b_13_cmp_b = {1'b0, redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_q};
    assign redist47_expY_uid13_block_rsrvd_fix_b_13_cmp_q = $unsigned(redist47_expY_uid13_block_rsrvd_fix_b_13_mem_last_q == redist47_expY_uid13_block_rsrvd_fix_b_13_cmp_b ? 1'b1 : 1'b0);

    // redist47_expY_uid13_block_rsrvd_fix_b_13_cmpReg(REG,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_expY_uid13_block_rsrvd_fix_b_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist47_expY_uid13_block_rsrvd_fix_b_13_cmpReg_q <= $unsigned(redist47_expY_uid13_block_rsrvd_fix_b_13_cmp_q);
        end
    end

    // redist47_expY_uid13_block_rsrvd_fix_b_13_sticky_ena(REG,336)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_expY_uid13_block_rsrvd_fix_b_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist47_expY_uid13_block_rsrvd_fix_b_13_nor_q == 1'b1)
        begin
            redist47_expY_uid13_block_rsrvd_fix_b_13_sticky_ena_q <= $unsigned(redist47_expY_uid13_block_rsrvd_fix_b_13_cmpReg_q);
        end
    end

    // redist47_expY_uid13_block_rsrvd_fix_b_13_enaAnd(LOGICAL,337)
    assign redist47_expY_uid13_block_rsrvd_fix_b_13_enaAnd_q = redist47_expY_uid13_block_rsrvd_fix_b_13_sticky_ena_q & VCC_q;

    // redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt(COUNTER,329)
    // low=0, high=9, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_i <= 4'd0;
            redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_i == 4'd8)
            begin
                redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_eq <= 1'b0;
            end
            if (redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_eq == 1'b1)
            begin
                redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_i <= $unsigned(redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_i) + $unsigned(4'd7);
            end
            else
            begin
                redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_i <= $unsigned(redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_q = redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_i[3:0];

    // expY_uid13_block_rsrvd_fix(BITSELECT,12)@0
    assign expY_uid13_block_rsrvd_fix_b = in_1[24:17];

    // redist47_expY_uid13_block_rsrvd_fix_b_13_inputreg0(DELAY,326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_expY_uid13_block_rsrvd_fix_b_13_inputreg0_q <= '0;
        end
        else
        begin
            redist47_expY_uid13_block_rsrvd_fix_b_13_inputreg0_q <= $unsigned(expY_uid13_block_rsrvd_fix_b);
        end
    end

    // redist47_expY_uid13_block_rsrvd_fix_b_13_wraddr(REG,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_expY_uid13_block_rsrvd_fix_b_13_wraddr_q <= $unsigned(4'b1001);
        end
        else
        begin
            redist47_expY_uid13_block_rsrvd_fix_b_13_wraddr_q <= $unsigned(redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_q);
        end
    end

    // redist47_expY_uid13_block_rsrvd_fix_b_13_mem(DUALMEM,328)
    assign redist47_expY_uid13_block_rsrvd_fix_b_13_mem_ia = $unsigned(redist47_expY_uid13_block_rsrvd_fix_b_13_inputreg0_q);
    assign redist47_expY_uid13_block_rsrvd_fix_b_13_mem_aa = redist47_expY_uid13_block_rsrvd_fix_b_13_wraddr_q;
    assign redist47_expY_uid13_block_rsrvd_fix_b_13_mem_ab = redist47_expY_uid13_block_rsrvd_fix_b_13_rdcnt_q;
    assign redist47_expY_uid13_block_rsrvd_fix_b_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(4),
        .numwords_a(10),
        .width_b(8),
        .widthad_b(4),
        .numwords_b(10),
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
    ) redist47_expY_uid13_block_rsrvd_fix_b_13_mem_dmem (
        .clocken1(redist47_expY_uid13_block_rsrvd_fix_b_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist47_expY_uid13_block_rsrvd_fix_b_13_mem_reset0),
        .clock1(clock),
        .address_a(redist47_expY_uid13_block_rsrvd_fix_b_13_mem_aa),
        .data_a(redist47_expY_uid13_block_rsrvd_fix_b_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist47_expY_uid13_block_rsrvd_fix_b_13_mem_ab),
        .q_b(redist47_expY_uid13_block_rsrvd_fix_b_13_mem_iq),
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
    assign redist47_expY_uid13_block_rsrvd_fix_b_13_mem_q = redist47_expY_uid13_block_rsrvd_fix_b_13_mem_iq[7:0];

    // redist47_expY_uid13_block_rsrvd_fix_b_13_outputreg0(DELAY,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_expY_uid13_block_rsrvd_fix_b_13_outputreg0_q <= '0;
        end
        else
        begin
            redist47_expY_uid13_block_rsrvd_fix_b_13_outputreg0_q <= $unsigned(redist47_expY_uid13_block_rsrvd_fix_b_13_mem_q);
        end
    end

    // redist48_expY_uid13_block_rsrvd_fix_b_15(DELAY,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_expY_uid13_block_rsrvd_fix_b_15_delay_0 <= '0;
            redist48_expY_uid13_block_rsrvd_fix_b_15_q <= '0;
        end
        else
        begin
            redist48_expY_uid13_block_rsrvd_fix_b_15_delay_0 <= $unsigned(redist47_expY_uid13_block_rsrvd_fix_b_13_outputreg0_q);
            redist48_expY_uid13_block_rsrvd_fix_b_15_q <= redist48_expY_uid13_block_rsrvd_fix_b_15_delay_0;
        end
    end

    // expXIsMax_uid39_block_rsrvd_fix(LOGICAL,38)@15 + 1
    assign expXIsMax_uid39_block_rsrvd_fix_qi = $unsigned(redist48_expY_uid13_block_rsrvd_fix_b_15_q == cstAllOWE_uid19_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid39_block_rsrvd_fix_delay ( .xin(expXIsMax_uid39_block_rsrvd_fix_qi), .xout(expXIsMax_uid39_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excI_y_uid42_block_rsrvd_fix(LOGICAL,41)@16 + 1
    assign excI_y_uid42_block_rsrvd_fix_qi = expXIsMax_uid39_block_rsrvd_fix_q & fracXIsZero_uid40_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_y_uid42_block_rsrvd_fix_delay ( .xin(excI_y_uid42_block_rsrvd_fix_qi), .xout(excI_y_uid42_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist50_fracX_uid11_block_rsrvd_fix_b_5_notEnable(LOGICAL,344)
    assign redist50_fracX_uid11_block_rsrvd_fix_b_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist50_fracX_uid11_block_rsrvd_fix_b_5_nor(LOGICAL,345)
    assign redist50_fracX_uid11_block_rsrvd_fix_b_5_nor_q = ~ (redist50_fracX_uid11_block_rsrvd_fix_b_5_notEnable_q | redist50_fracX_uid11_block_rsrvd_fix_b_5_sticky_ena_q);

    // redist50_fracX_uid11_block_rsrvd_fix_b_5_cmpReg(REG,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_fracX_uid11_block_rsrvd_fix_b_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist50_fracX_uid11_block_rsrvd_fix_b_5_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist50_fracX_uid11_block_rsrvd_fix_b_5_sticky_ena(REG,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_fracX_uid11_block_rsrvd_fix_b_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist50_fracX_uid11_block_rsrvd_fix_b_5_nor_q == 1'b1)
        begin
            redist50_fracX_uid11_block_rsrvd_fix_b_5_sticky_ena_q <= $unsigned(redist50_fracX_uid11_block_rsrvd_fix_b_5_cmpReg_q);
        end
    end

    // redist50_fracX_uid11_block_rsrvd_fix_b_5_enaAnd(LOGICAL,347)
    assign redist50_fracX_uid11_block_rsrvd_fix_b_5_enaAnd_q = redist50_fracX_uid11_block_rsrvd_fix_b_5_sticky_ena_q & VCC_q;

    // redist50_fracX_uid11_block_rsrvd_fix_b_5_rdcnt(COUNTER,341)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_fracX_uid11_block_rsrvd_fix_b_5_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist50_fracX_uid11_block_rsrvd_fix_b_5_rdcnt_i <= $unsigned(redist50_fracX_uid11_block_rsrvd_fix_b_5_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist50_fracX_uid11_block_rsrvd_fix_b_5_rdcnt_q = redist50_fracX_uid11_block_rsrvd_fix_b_5_rdcnt_i[0:0];

    // fracX_uid11_block_rsrvd_fix(BITSELECT,10)@10
    assign fracX_uid11_block_rsrvd_fix_b = in_0[16:0];

    // redist50_fracX_uid11_block_rsrvd_fix_b_5_inputreg0(DELAY,338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_fracX_uid11_block_rsrvd_fix_b_5_inputreg0_q <= '0;
        end
        else
        begin
            redist50_fracX_uid11_block_rsrvd_fix_b_5_inputreg0_q <= $unsigned(fracX_uid11_block_rsrvd_fix_b);
        end
    end

    // redist50_fracX_uid11_block_rsrvd_fix_b_5_wraddr(REG,342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_fracX_uid11_block_rsrvd_fix_b_5_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist50_fracX_uid11_block_rsrvd_fix_b_5_wraddr_q <= $unsigned(redist50_fracX_uid11_block_rsrvd_fix_b_5_rdcnt_q);
        end
    end

    // redist50_fracX_uid11_block_rsrvd_fix_b_5_mem(DUALMEM,340)
    assign redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_ia = $unsigned(redist50_fracX_uid11_block_rsrvd_fix_b_5_inputreg0_q);
    assign redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_aa = redist50_fracX_uid11_block_rsrvd_fix_b_5_wraddr_q;
    assign redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_ab = redist50_fracX_uid11_block_rsrvd_fix_b_5_rdcnt_q;
    assign redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(17),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(17),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_dmem (
        .clocken1(redist50_fracX_uid11_block_rsrvd_fix_b_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_reset0),
        .clock1(clock),
        .address_a(redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_aa),
        .data_a(redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_ab),
        .q_b(redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_iq),
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
    assign redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_q = redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_iq[16:0];

    // redist50_fracX_uid11_block_rsrvd_fix_b_5_outputreg0(DELAY,339)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_fracX_uid11_block_rsrvd_fix_b_5_outputreg0_q <= '0;
        end
        else
        begin
            redist50_fracX_uid11_block_rsrvd_fix_b_5_outputreg0_q <= $unsigned(redist50_fracX_uid11_block_rsrvd_fix_b_5_mem_q);
        end
    end

    // fracXIsZero_uid26_block_rsrvd_fix(LOGICAL,25)@15 + 1
    assign fracXIsZero_uid26_block_rsrvd_fix_qi = $unsigned(paddingY_uid16_block_rsrvd_fix_q == redist50_fracX_uid11_block_rsrvd_fix_b_5_outputreg0_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid26_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid26_block_rsrvd_fix_qi), .xout(fracXIsZero_uid26_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expX_uid10_block_rsrvd_fix(BITSELECT,9)@10
    assign expX_uid10_block_rsrvd_fix_b = in_0[24:17];

    // redist52_expX_uid10_block_rsrvd_fix_b_3(DELAY,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_expX_uid10_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist52_expX_uid10_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist52_expX_uid10_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist52_expX_uid10_block_rsrvd_fix_b_3_delay_0 <= $unsigned(expX_uid10_block_rsrvd_fix_b);
            redist52_expX_uid10_block_rsrvd_fix_b_3_delay_1 <= redist52_expX_uid10_block_rsrvd_fix_b_3_delay_0;
            redist52_expX_uid10_block_rsrvd_fix_b_3_q <= redist52_expX_uid10_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // redist53_expX_uid10_block_rsrvd_fix_b_5(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_expX_uid10_block_rsrvd_fix_b_5_delay_0 <= '0;
            redist53_expX_uid10_block_rsrvd_fix_b_5_q <= '0;
        end
        else
        begin
            redist53_expX_uid10_block_rsrvd_fix_b_5_delay_0 <= $unsigned(redist52_expX_uid10_block_rsrvd_fix_b_3_q);
            redist53_expX_uid10_block_rsrvd_fix_b_5_q <= redist53_expX_uid10_block_rsrvd_fix_b_5_delay_0;
        end
    end

    // expXIsMax_uid25_block_rsrvd_fix(LOGICAL,24)@15 + 1
    assign expXIsMax_uid25_block_rsrvd_fix_qi = $unsigned(redist53_expX_uid10_block_rsrvd_fix_b_5_q == cstAllOWE_uid19_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid25_block_rsrvd_fix_delay ( .xin(expXIsMax_uid25_block_rsrvd_fix_qi), .xout(expXIsMax_uid25_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excI_x_uid28_block_rsrvd_fix(LOGICAL,27)@16 + 1
    assign excI_x_uid28_block_rsrvd_fix_qi = expXIsMax_uid25_block_rsrvd_fix_q & fracXIsZero_uid26_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_x_uid28_block_rsrvd_fix_delay ( .xin(excI_x_uid28_block_rsrvd_fix_qi), .xout(excI_x_uid28_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excXIYI_uid131_block_rsrvd_fix(LOGICAL,130)@17
    assign excXIYI_uid131_block_rsrvd_fix_q = excI_x_uid28_block_rsrvd_fix_q & excI_y_uid42_block_rsrvd_fix_q;

    // fracXIsNotZero_uid41_block_rsrvd_fix(LOGICAL,40)@16
    assign fracXIsNotZero_uid41_block_rsrvd_fix_q = ~ (fracXIsZero_uid40_block_rsrvd_fix_q);

    // excN_y_uid43_block_rsrvd_fix(LOGICAL,42)@16 + 1
    assign excN_y_uid43_block_rsrvd_fix_qi = expXIsMax_uid39_block_rsrvd_fix_q & fracXIsNotZero_uid41_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_y_uid43_block_rsrvd_fix_delay ( .xin(excN_y_uid43_block_rsrvd_fix_qi), .xout(excN_y_uid43_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid27_block_rsrvd_fix(LOGICAL,26)@16
    assign fracXIsNotZero_uid27_block_rsrvd_fix_q = ~ (fracXIsZero_uid26_block_rsrvd_fix_q);

    // excN_x_uid29_block_rsrvd_fix(LOGICAL,28)@16 + 1
    assign excN_x_uid29_block_rsrvd_fix_qi = expXIsMax_uid25_block_rsrvd_fix_q & fracXIsNotZero_uid27_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_x_uid29_block_rsrvd_fix_delay ( .xin(excN_x_uid29_block_rsrvd_fix_qi), .xout(excN_x_uid29_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllZWE_uid21_block_rsrvd_fix(CONSTANT,20)
    assign cstAllZWE_uid21_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // excZ_y_uid38_block_rsrvd_fix(LOGICAL,37)@15 + 1
    assign excZ_y_uid38_block_rsrvd_fix_qi = $unsigned(redist48_expY_uid13_block_rsrvd_fix_b_15_q == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_y_uid38_block_rsrvd_fix_delay ( .xin(excZ_y_uid38_block_rsrvd_fix_qi), .xout(excZ_y_uid38_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist40_excZ_y_uid38_block_rsrvd_fix_q_2(DELAY,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_excZ_y_uid38_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist40_excZ_y_uid38_block_rsrvd_fix_q_2_q <= $unsigned(excZ_y_uid38_block_rsrvd_fix_q);
        end
    end

    // excZ_x_uid24_block_rsrvd_fix(LOGICAL,23)@15 + 1
    assign excZ_x_uid24_block_rsrvd_fix_qi = $unsigned(redist53_expX_uid10_block_rsrvd_fix_b_5_q == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid24_block_rsrvd_fix_delay ( .xin(excZ_x_uid24_block_rsrvd_fix_qi), .xout(excZ_x_uid24_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist42_excZ_x_uid24_block_rsrvd_fix_q_2(DELAY,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_excZ_x_uid24_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist42_excZ_x_uid24_block_rsrvd_fix_q_2_q <= $unsigned(excZ_x_uid24_block_rsrvd_fix_q);
        end
    end

    // excXZYZ_uid130_block_rsrvd_fix(LOGICAL,129)@17
    assign excXZYZ_uid130_block_rsrvd_fix_q = redist42_excZ_x_uid24_block_rsrvd_fix_q_2_q & redist40_excZ_y_uid38_block_rsrvd_fix_q_2_q;

    // excRNaN_uid132_block_rsrvd_fix(LOGICAL,131)@17 + 1
    assign excRNaN_uid132_block_rsrvd_fix_qi = excXZYZ_uid130_block_rsrvd_fix_q | excN_x_uid29_block_rsrvd_fix_q | excN_y_uid43_block_rsrvd_fix_q | excXIYI_uid131_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRNaN_uid132_block_rsrvd_fix_delay ( .xin(excRNaN_uid132_block_rsrvd_fix_qi), .xout(excRNaN_uid132_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcRNaN_uid143_block_rsrvd_fix(LOGICAL,142)@18
    assign invExcRNaN_uid143_block_rsrvd_fix_q = ~ (excRNaN_uid132_block_rsrvd_fix_q);

    // signY_uid15_block_rsrvd_fix(BITSELECT,14)@0
    assign signY_uid15_block_rsrvd_fix_b = $unsigned(in_1[25:25]);

    // redist43_signY_uid15_block_rsrvd_fix_b_10(DELAY,263)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist43_signY_uid15_block_rsrvd_fix_b_10 ( .xin(signY_uid15_block_rsrvd_fix_b), .xout(redist43_signY_uid15_block_rsrvd_fix_b_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // signX_uid12_block_rsrvd_fix(BITSELECT,11)@10
    assign signX_uid12_block_rsrvd_fix_b = $unsigned(in_0[25:25]);

    // signR_uid47_block_rsrvd_fix(LOGICAL,46)@10 + 1
    assign signR_uid47_block_rsrvd_fix_qi = signX_uid12_block_rsrvd_fix_b ^ redist43_signY_uid15_block_rsrvd_fix_b_10_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signR_uid47_block_rsrvd_fix_delay ( .xin(signR_uid47_block_rsrvd_fix_qi), .xout(signR_uid47_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist39_signR_uid47_block_rsrvd_fix_q_8(DELAY,259)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist39_signR_uid47_block_rsrvd_fix_q_8 ( .xin(signR_uid47_block_rsrvd_fix_q), .xout(redist39_signR_uid47_block_rsrvd_fix_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sRPostExc_uid144_block_rsrvd_fix(LOGICAL,143)@18 + 1
    assign sRPostExc_uid144_block_rsrvd_fix_qi = redist39_signR_uid47_block_rsrvd_fix_q_8_q & invExcRNaN_uid143_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sRPostExc_uid144_block_rsrvd_fix_delay ( .xin(sRPostExc_uid144_block_rsrvd_fix_qi), .xout(sRPostExc_uid144_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_sRPostExc_uid144_block_rsrvd_fix_q_8(DELAY,232)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_sRPostExc_uid144_block_rsrvd_fix_q_8 ( .xin(sRPostExc_uid144_block_rsrvd_fix_q), .xout(redist12_sRPostExc_uid144_block_rsrvd_fix_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_notEnable(LOGICAL,307)
    assign redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_nor(LOGICAL,308)
    assign redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_nor_q = ~ (redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_notEnable_q | redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_sticky_ena_q);

    // redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_last(CONSTANT,304)
    assign redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_last_q = $unsigned(3'b010);

    // redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_cmp(LOGICAL,305)
    assign redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_cmp_b = {1'b0, redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_rdcnt_q};
    assign redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_cmp_q = $unsigned(redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_last_q == redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_cmp_b ? 1'b1 : 1'b0);

    // redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_cmpReg(REG,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_cmpReg_q <= $unsigned(redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_cmp_q);
        end
    end

    // redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_sticky_ena(REG,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_nor_q == 1'b1)
        begin
            redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_sticky_ena_q <= $unsigned(redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_cmpReg_q);
        end
    end

    // redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_enaAnd(LOGICAL,310)
    assign redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_enaAnd_q = redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_sticky_ena_q & VCC_q;

    // redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_rdcnt(COUNTER,302)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_rdcnt_i <= $unsigned(redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_rdcnt_q = redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_rdcnt_i[1:0];

    // redist51_fracX_uid11_block_rsrvd_fix_b_6(DELAY,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_fracX_uid11_block_rsrvd_fix_b_6_q <= '0;
        end
        else
        begin
            redist51_fracX_uid11_block_rsrvd_fix_b_6_q <= $unsigned(redist50_fracX_uid11_block_rsrvd_fix_b_5_outputreg0_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // fracXExt_uid78_block_rsrvd_fix(BITJOIN,77)@16
    assign fracXExt_uid78_block_rsrvd_fix_q = {redist51_fracX_uid11_block_rsrvd_fix_b_6_q, GND_q};

    // lOAdded_uid58_block_rsrvd_fix(BITJOIN,57)@10
    assign lOAdded_uid58_block_rsrvd_fix_q = {VCC_q, fracX_uid11_block_rsrvd_fix_b};

    // redist32_lOAdded_uid58_block_rsrvd_fix_q_4_inputreg0(DELAY,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_lOAdded_uid58_block_rsrvd_fix_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist32_lOAdded_uid58_block_rsrvd_fix_q_4_inputreg0_q <= $unsigned(lOAdded_uid58_block_rsrvd_fix_q);
        end
    end

    // redist32_lOAdded_uid58_block_rsrvd_fix_q_4(DELAY,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_lOAdded_uid58_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist32_lOAdded_uid58_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist32_lOAdded_uid58_block_rsrvd_fix_q_4_delay_0 <= $unsigned(redist32_lOAdded_uid58_block_rsrvd_fix_q_4_inputreg0_q);
            redist32_lOAdded_uid58_block_rsrvd_fix_q_4_q <= redist32_lOAdded_uid58_block_rsrvd_fix_q_4_delay_0;
        end
    end

    // redist32_lOAdded_uid58_block_rsrvd_fix_q_4_outputreg0(DELAY,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_lOAdded_uid58_block_rsrvd_fix_q_4_outputreg0_q <= '0;
        end
        else
        begin
            redist32_lOAdded_uid58_block_rsrvd_fix_q_4_outputreg0_q <= $unsigned(redist32_lOAdded_uid58_block_rsrvd_fix_q_4_q);
        end
    end

    // z4_uid61_block_rsrvd_fix(CONSTANT,60)
    assign z4_uid61_block_rsrvd_fix_q = $unsigned(4'b0000);

    // oFracXZ4_uid62_block_rsrvd_fix(BITJOIN,61)@14
    assign oFracXZ4_uid62_block_rsrvd_fix_q = {redist32_lOAdded_uid58_block_rsrvd_fix_q_4_outputreg0_q, z4_uid61_block_rsrvd_fix_q};

    // yAddr_uid52_block_rsrvd_fix(BITSELECT,51)@0
    assign yAddr_uid52_block_rsrvd_fix_b = fracY_uid14_block_rsrvd_fix_b[16:10];

    // memoryC2_uid153_invTables(LOOKUP,152)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memoryC2_uid153_invTables_q <= $unsigned(11'b01111110100);
        end
        else
        begin
            unique case (yAddr_uid52_block_rsrvd_fix_b)
                7'b0000000 : memoryC2_uid153_invTables_q <= 11'b01111110100;
                7'b0000001 : memoryC2_uid153_invTables_q <= 11'b01111011101;
                7'b0000010 : memoryC2_uid153_invTables_q <= 11'b01111000110;
                7'b0000011 : memoryC2_uid153_invTables_q <= 11'b01110110010;
                7'b0000100 : memoryC2_uid153_invTables_q <= 11'b01110011011;
                7'b0000101 : memoryC2_uid153_invTables_q <= 11'b01110000111;
                7'b0000110 : memoryC2_uid153_invTables_q <= 11'b01101110001;
                7'b0000111 : memoryC2_uid153_invTables_q <= 11'b01101011111;
                7'b0001000 : memoryC2_uid153_invTables_q <= 11'b01101001100;
                7'b0001001 : memoryC2_uid153_invTables_q <= 11'b01100111011;
                7'b0001010 : memoryC2_uid153_invTables_q <= 11'b01100101010;
                7'b0001011 : memoryC2_uid153_invTables_q <= 11'b01100010110;
                7'b0001100 : memoryC2_uid153_invTables_q <= 11'b01100001000;
                7'b0001101 : memoryC2_uid153_invTables_q <= 11'b01011110100;
                7'b0001110 : memoryC2_uid153_invTables_q <= 11'b01011100101;
                7'b0001111 : memoryC2_uid153_invTables_q <= 11'b01011010111;
                7'b0010000 : memoryC2_uid153_invTables_q <= 11'b01011001000;
                7'b0010001 : memoryC2_uid153_invTables_q <= 11'b01010111001;
                7'b0010010 : memoryC2_uid153_invTables_q <= 11'b01010101010;
                7'b0010011 : memoryC2_uid153_invTables_q <= 11'b01010011101;
                7'b0010100 : memoryC2_uid153_invTables_q <= 11'b01010010001;
                7'b0010101 : memoryC2_uid153_invTables_q <= 11'b01010000100;
                7'b0010110 : memoryC2_uid153_invTables_q <= 11'b01001110111;
                7'b0010111 : memoryC2_uid153_invTables_q <= 11'b01001101010;
                7'b0011000 : memoryC2_uid153_invTables_q <= 11'b01001011110;
                7'b0011001 : memoryC2_uid153_invTables_q <= 11'b01001010010;
                7'b0011010 : memoryC2_uid153_invTables_q <= 11'b01001000110;
                7'b0011011 : memoryC2_uid153_invTables_q <= 11'b01000111011;
                7'b0011100 : memoryC2_uid153_invTables_q <= 11'b01000110001;
                7'b0011101 : memoryC2_uid153_invTables_q <= 11'b01000100111;
                7'b0011110 : memoryC2_uid153_invTables_q <= 11'b01000011110;
                7'b0011111 : memoryC2_uid153_invTables_q <= 11'b01000010001;
                7'b0100000 : memoryC2_uid153_invTables_q <= 11'b01000001001;
                7'b0100001 : memoryC2_uid153_invTables_q <= 11'b00111111111;
                7'b0100010 : memoryC2_uid153_invTables_q <= 11'b00111110100;
                7'b0100011 : memoryC2_uid153_invTables_q <= 11'b00111101100;
                7'b0100100 : memoryC2_uid153_invTables_q <= 11'b00111100000;
                7'b0100101 : memoryC2_uid153_invTables_q <= 11'b00111011010;
                7'b0100110 : memoryC2_uid153_invTables_q <= 11'b00111010001;
                7'b0100111 : memoryC2_uid153_invTables_q <= 11'b00111001000;
                7'b0101000 : memoryC2_uid153_invTables_q <= 11'b00111000010;
                7'b0101001 : memoryC2_uid153_invTables_q <= 11'b00110111010;
                7'b0101010 : memoryC2_uid153_invTables_q <= 11'b00110110010;
                7'b0101011 : memoryC2_uid153_invTables_q <= 11'b00110101010;
                7'b0101100 : memoryC2_uid153_invTables_q <= 11'b00110100010;
                7'b0101101 : memoryC2_uid153_invTables_q <= 11'b00110011010;
                7'b0101110 : memoryC2_uid153_invTables_q <= 11'b00110010100;
                7'b0101111 : memoryC2_uid153_invTables_q <= 11'b00110001110;
                7'b0110000 : memoryC2_uid153_invTables_q <= 11'b00110001000;
                7'b0110001 : memoryC2_uid153_invTables_q <= 11'b00110000000;
                7'b0110010 : memoryC2_uid153_invTables_q <= 11'b00101111001;
                7'b0110011 : memoryC2_uid153_invTables_q <= 11'b00101110011;
                7'b0110100 : memoryC2_uid153_invTables_q <= 11'b00101101111;
                7'b0110101 : memoryC2_uid153_invTables_q <= 11'b00101100111;
                7'b0110110 : memoryC2_uid153_invTables_q <= 11'b00101100001;
                7'b0110111 : memoryC2_uid153_invTables_q <= 11'b00101011011;
                7'b0111000 : memoryC2_uid153_invTables_q <= 11'b00101010111;
                7'b0111001 : memoryC2_uid153_invTables_q <= 11'b00101010001;
                7'b0111010 : memoryC2_uid153_invTables_q <= 11'b00101001100;
                7'b0111011 : memoryC2_uid153_invTables_q <= 11'b00101000101;
                7'b0111100 : memoryC2_uid153_invTables_q <= 11'b00100111111;
                7'b0111101 : memoryC2_uid153_invTables_q <= 11'b00100111100;
                7'b0111110 : memoryC2_uid153_invTables_q <= 11'b00100110110;
                7'b0111111 : memoryC2_uid153_invTables_q <= 11'b00100110011;
                7'b1000000 : memoryC2_uid153_invTables_q <= 11'b00100101101;
                7'b1000001 : memoryC2_uid153_invTables_q <= 11'b00100100111;
                7'b1000010 : memoryC2_uid153_invTables_q <= 11'b00100100100;
                7'b1000011 : memoryC2_uid153_invTables_q <= 11'b00100100000;
                7'b1000100 : memoryC2_uid153_invTables_q <= 11'b00100011010;
                7'b1000101 : memoryC2_uid153_invTables_q <= 11'b00100010110;
                7'b1000110 : memoryC2_uid153_invTables_q <= 11'b00100010010;
                7'b1000111 : memoryC2_uid153_invTables_q <= 11'b00100001110;
                7'b1001000 : memoryC2_uid153_invTables_q <= 11'b00100001001;
                7'b1001001 : memoryC2_uid153_invTables_q <= 11'b00100000101;
                7'b1001010 : memoryC2_uid153_invTables_q <= 11'b00100000010;
                7'b1001011 : memoryC2_uid153_invTables_q <= 11'b00011111111;
                7'b1001100 : memoryC2_uid153_invTables_q <= 11'b00011111100;
                7'b1001101 : memoryC2_uid153_invTables_q <= 11'b00011111000;
                7'b1001110 : memoryC2_uid153_invTables_q <= 11'b00011110100;
                7'b1001111 : memoryC2_uid153_invTables_q <= 11'b00011110001;
                7'b1010000 : memoryC2_uid153_invTables_q <= 11'b00011101101;
                7'b1010001 : memoryC2_uid153_invTables_q <= 11'b00011101010;
                7'b1010010 : memoryC2_uid153_invTables_q <= 11'b00011101000;
                7'b1010011 : memoryC2_uid153_invTables_q <= 11'b00011100100;
                7'b1010100 : memoryC2_uid153_invTables_q <= 11'b00011100001;
                7'b1010101 : memoryC2_uid153_invTables_q <= 11'b00011011100;
                7'b1010110 : memoryC2_uid153_invTables_q <= 11'b00011011001;
                7'b1010111 : memoryC2_uid153_invTables_q <= 11'b00011010111;
                7'b1011000 : memoryC2_uid153_invTables_q <= 11'b00011010100;
                7'b1011001 : memoryC2_uid153_invTables_q <= 11'b00011010000;
                7'b1011010 : memoryC2_uid153_invTables_q <= 11'b00011001100;
                7'b1011011 : memoryC2_uid153_invTables_q <= 11'b00011001001;
                7'b1011100 : memoryC2_uid153_invTables_q <= 11'b00011001001;
                7'b1011101 : memoryC2_uid153_invTables_q <= 11'b00011000111;
                7'b1011110 : memoryC2_uid153_invTables_q <= 11'b00011000101;
                7'b1011111 : memoryC2_uid153_invTables_q <= 11'b00011000000;
                7'b1100000 : memoryC2_uid153_invTables_q <= 11'b00011000000;
                7'b1100001 : memoryC2_uid153_invTables_q <= 11'b00010111100;
                7'b1100010 : memoryC2_uid153_invTables_q <= 11'b00010111000;
                7'b1100011 : memoryC2_uid153_invTables_q <= 11'b00010110110;
                7'b1100100 : memoryC2_uid153_invTables_q <= 11'b00010110101;
                7'b1100101 : memoryC2_uid153_invTables_q <= 11'b00010110001;
                7'b1100110 : memoryC2_uid153_invTables_q <= 11'b00010101110;
                7'b1100111 : memoryC2_uid153_invTables_q <= 11'b00010101101;
                7'b1101000 : memoryC2_uid153_invTables_q <= 11'b00010101011;
                7'b1101001 : memoryC2_uid153_invTables_q <= 11'b00010101010;
                7'b1101010 : memoryC2_uid153_invTables_q <= 11'b00010100111;
                7'b1101011 : memoryC2_uid153_invTables_q <= 11'b00010100100;
                7'b1101100 : memoryC2_uid153_invTables_q <= 11'b00010100001;
                7'b1101101 : memoryC2_uid153_invTables_q <= 11'b00010011110;
                7'b1101110 : memoryC2_uid153_invTables_q <= 11'b00010011111;
                7'b1101111 : memoryC2_uid153_invTables_q <= 11'b00010011101;
                7'b1110000 : memoryC2_uid153_invTables_q <= 11'b00010011101;
                7'b1110001 : memoryC2_uid153_invTables_q <= 11'b00010011001;
                7'b1110010 : memoryC2_uid153_invTables_q <= 11'b00010010101;
                7'b1110011 : memoryC2_uid153_invTables_q <= 11'b00010010011;
                7'b1110100 : memoryC2_uid153_invTables_q <= 11'b00010010001;
                7'b1110101 : memoryC2_uid153_invTables_q <= 11'b00010001111;
                7'b1110110 : memoryC2_uid153_invTables_q <= 11'b00010001111;
                7'b1110111 : memoryC2_uid153_invTables_q <= 11'b00010001110;
                7'b1111000 : memoryC2_uid153_invTables_q <= 11'b00010001010;
                7'b1111001 : memoryC2_uid153_invTables_q <= 11'b00010001010;
                7'b1111010 : memoryC2_uid153_invTables_q <= 11'b00010001010;
                7'b1111011 : memoryC2_uid153_invTables_q <= 11'b00010001001;
                7'b1111100 : memoryC2_uid153_invTables_q <= 11'b00010000101;
                7'b1111101 : memoryC2_uid153_invTables_q <= 11'b00010000101;
                7'b1111110 : memoryC2_uid153_invTables_q <= 11'b00010000100;
                7'b1111111 : memoryC2_uid153_invTables_q <= 11'b00001111111;
                default : begin
                              // unreachable
                              memoryC2_uid153_invTables_q <= 11'bxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // yPE_uid53_block_rsrvd_fix(BITSELECT,52)@0
    assign yPE_uid53_block_rsrvd_fix_b = in_1[9:0];

    // redist35_yPE_uid53_block_rsrvd_fix_b_1(DELAY,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_yPE_uid53_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist35_yPE_uid53_block_rsrvd_fix_b_1_q <= $unsigned(yPE_uid53_block_rsrvd_fix_b);
        end
    end

    // prodXY_uid175_pT1_uid160_invPolyEval_cma(CHAINMULTADD,210)@1 + 2
    assign prodXY_uid175_pT1_uid160_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid175_pT1_uid160_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid175_pT1_uid160_invPolyEval_cma_ena1 = prodXY_uid175_pT1_uid160_invPolyEval_cma_ena0;
    assign prodXY_uid175_pT1_uid160_invPolyEval_cma_l[0] = $signed({1'b0, prodXY_uid175_pT1_uid160_invPolyEval_cma_a0[0][9:0]});
    assign prodXY_uid175_pT1_uid160_invPolyEval_cma_p[0] = prodXY_uid175_pT1_uid160_invPolyEval_cma_l[0] * prodXY_uid175_pT1_uid160_invPolyEval_cma_c0[0];
    assign prodXY_uid175_pT1_uid160_invPolyEval_cma_u[0] = prodXY_uid175_pT1_uid160_invPolyEval_cma_p[0][21:0];
    assign prodXY_uid175_pT1_uid160_invPolyEval_cma_w[0] = prodXY_uid175_pT1_uid160_invPolyEval_cma_u[0];
    assign prodXY_uid175_pT1_uid160_invPolyEval_cma_x[0] = prodXY_uid175_pT1_uid160_invPolyEval_cma_w[0];
    assign prodXY_uid175_pT1_uid160_invPolyEval_cma_y[0] = prodXY_uid175_pT1_uid160_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid175_pT1_uid160_invPolyEval_cma_a0 <= '{default: '0};
            prodXY_uid175_pT1_uid160_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid175_pT1_uid160_invPolyEval_cma_ena0 == 1'b1)
            begin
                prodXY_uid175_pT1_uid160_invPolyEval_cma_a0[0] <= redist35_yPE_uid53_block_rsrvd_fix_b_1_q;
                prodXY_uid175_pT1_uid160_invPolyEval_cma_c0[0] <= memoryC2_uid153_invTables_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid175_pT1_uid160_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid175_pT1_uid160_invPolyEval_cma_ena1 == 1'b1)
            begin
                prodXY_uid175_pT1_uid160_invPolyEval_cma_s[0] <= prodXY_uid175_pT1_uid160_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(22), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid175_pT1_uid160_invPolyEval_cma_delay ( .xin(prodXY_uid175_pT1_uid160_invPolyEval_cma_s[0]), .xout(prodXY_uid175_pT1_uid160_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid175_pT1_uid160_invPolyEval_cma_q = $unsigned(prodXY_uid175_pT1_uid160_invPolyEval_cma_qq[20:0]);

    // osig_uid176_pT1_uid160_invPolyEval(BITSELECT,175)@3
    assign osig_uid176_pT1_uid160_invPolyEval_b = $unsigned(prodXY_uid175_pT1_uid160_invPolyEval_cma_q[20:9]);

    // highBBits_uid162_invPolyEval(BITSELECT,161)@3
    assign highBBits_uid162_invPolyEval_b = $unsigned(osig_uid176_pT1_uid160_invPolyEval_b[11:1]);

    // redist10_highBBits_uid162_invPolyEval_b_1(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_highBBits_uid162_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist10_highBBits_uid162_invPolyEval_b_1_q <= $unsigned(highBBits_uid162_invPolyEval_b);
        end
    end

    // redist37_yAddr_uid52_block_rsrvd_fix_b_3(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_yAddr_uid52_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist37_yAddr_uid52_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist37_yAddr_uid52_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist37_yAddr_uid52_block_rsrvd_fix_b_3_delay_0 <= $unsigned(yAddr_uid52_block_rsrvd_fix_b);
            redist37_yAddr_uid52_block_rsrvd_fix_b_3_delay_1 <= redist37_yAddr_uid52_block_rsrvd_fix_b_3_delay_0;
            redist37_yAddr_uid52_block_rsrvd_fix_b_3_q <= redist37_yAddr_uid52_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // memoryC1_uid150_invTables(LOOKUP,149)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memoryC1_uid150_invTables_q <= $unsigned(18'b100000000000000100);
        end
        else
        begin
            unique case (redist37_yAddr_uid52_block_rsrvd_fix_b_3_q)
                7'b0000000 : memoryC1_uid150_invTables_q <= 18'b100000000000000100;
                7'b0000001 : memoryC1_uid150_invTables_q <= 18'b100000011111101100;
                7'b0000010 : memoryC1_uid150_invTables_q <= 18'b100000111110100110;
                7'b0000011 : memoryC1_uid150_invTables_q <= 18'b100001011100110001;
                7'b0000100 : memoryC1_uid150_invTables_q <= 18'b100001111010010100;
                7'b0000101 : memoryC1_uid150_invTables_q <= 18'b100010010111001010;
                7'b0000110 : memoryC1_uid150_invTables_q <= 18'b100010110011011000;
                7'b0000111 : memoryC1_uid150_invTables_q <= 18'b100011001110111100;
                7'b0001000 : memoryC1_uid150_invTables_q <= 18'b100011101001111010;
                7'b0001001 : memoryC1_uid150_invTables_q <= 18'b100100000100010010;
                7'b0001010 : memoryC1_uid150_invTables_q <= 18'b100100011110000101;
                7'b0001011 : memoryC1_uid150_invTables_q <= 18'b100100110111011001;
                7'b0001100 : memoryC1_uid150_invTables_q <= 18'b100101010000000100;
                7'b0001101 : memoryC1_uid150_invTables_q <= 18'b100101101000010100;
                7'b0001110 : memoryC1_uid150_invTables_q <= 18'b100101111111111111;
                7'b0001111 : memoryC1_uid150_invTables_q <= 18'b100110010111001010;
                7'b0010000 : memoryC1_uid150_invTables_q <= 18'b100110101101110111;
                7'b0010001 : memoryC1_uid150_invTables_q <= 18'b100111000100000111;
                7'b0010010 : memoryC1_uid150_invTables_q <= 18'b100111011001111010;
                7'b0010011 : memoryC1_uid150_invTables_q <= 18'b100111101111010000;
                7'b0010100 : memoryC1_uid150_invTables_q <= 18'b101000000100001000;
                7'b0010101 : memoryC1_uid150_invTables_q <= 18'b101000011000101000;
                7'b0010110 : memoryC1_uid150_invTables_q <= 18'b101000101100101101;
                7'b0010111 : memoryC1_uid150_invTables_q <= 18'b101001000000011010;
                7'b0011000 : memoryC1_uid150_invTables_q <= 18'b101001010011101101;
                7'b0011001 : memoryC1_uid150_invTables_q <= 18'b101001100110101000;
                7'b0011010 : memoryC1_uid150_invTables_q <= 18'b101001111001001100;
                7'b0011011 : memoryC1_uid150_invTables_q <= 18'b101010001011011001;
                7'b0011100 : memoryC1_uid150_invTables_q <= 18'b101010011101001110;
                7'b0011101 : memoryC1_uid150_invTables_q <= 18'b101010101110101110;
                7'b0011110 : memoryC1_uid150_invTables_q <= 18'b101010111111111000;
                7'b0011111 : memoryC1_uid150_invTables_q <= 18'b101011010000110010;
                7'b0100000 : memoryC1_uid150_invTables_q <= 18'b101011100001010010;
                7'b0100001 : memoryC1_uid150_invTables_q <= 18'b101011110001100001;
                7'b0100010 : memoryC1_uid150_invTables_q <= 18'b101100000001011110;
                7'b0100011 : memoryC1_uid150_invTables_q <= 18'b101100010001000111;
                7'b0100100 : memoryC1_uid150_invTables_q <= 18'b101100100000100000;
                7'b0100101 : memoryC1_uid150_invTables_q <= 18'b101100101111100011;
                7'b0100110 : memoryC1_uid150_invTables_q <= 18'b101100111110010111;
                7'b0100111 : memoryC1_uid150_invTables_q <= 18'b101101001100111010;
                7'b0101000 : memoryC1_uid150_invTables_q <= 18'b101101011011001001;
                7'b0101001 : memoryC1_uid150_invTables_q <= 18'b101101101001001011;
                7'b0101010 : memoryC1_uid150_invTables_q <= 18'b101101110110111101;
                7'b0101011 : memoryC1_uid150_invTables_q <= 18'b101110000100100000;
                7'b0101100 : memoryC1_uid150_invTables_q <= 18'b101110010001110100;
                7'b0101101 : memoryC1_uid150_invTables_q <= 18'b101110011110111010;
                7'b0101110 : memoryC1_uid150_invTables_q <= 18'b101110101011101111;
                7'b0101111 : memoryC1_uid150_invTables_q <= 18'b101110111000010111;
                7'b0110000 : memoryC1_uid150_invTables_q <= 18'b101111000100110000;
                7'b0110001 : memoryC1_uid150_invTables_q <= 18'b101111010000111111;
                7'b0110010 : memoryC1_uid150_invTables_q <= 18'b101111011100111111;
                7'b0110011 : memoryC1_uid150_invTables_q <= 18'b101111101000110011;
                7'b0110100 : memoryC1_uid150_invTables_q <= 18'b101111110100010111;
                7'b0110101 : memoryC1_uid150_invTables_q <= 18'b101111111111110100;
                7'b0110110 : memoryC1_uid150_invTables_q <= 18'b110000001011000001;
                7'b0110111 : memoryC1_uid150_invTables_q <= 18'b110000010110000101;
                7'b0111000 : memoryC1_uid150_invTables_q <= 18'b110000100000111010;
                7'b0111001 : memoryC1_uid150_invTables_q <= 18'b110000101011100110;
                7'b0111010 : memoryC1_uid150_invTables_q <= 18'b110000110110000111;
                7'b0111011 : memoryC1_uid150_invTables_q <= 18'b110001000000011110;
                7'b0111100 : memoryC1_uid150_invTables_q <= 18'b110001001010101011;
                7'b0111101 : memoryC1_uid150_invTables_q <= 18'b110001010100101011;
                7'b0111110 : memoryC1_uid150_invTables_q <= 18'b110001011110100011;
                7'b0111111 : memoryC1_uid150_invTables_q <= 18'b110001101000001110;
                7'b1000000 : memoryC1_uid150_invTables_q <= 18'b110001110001110010;
                7'b1000001 : memoryC1_uid150_invTables_q <= 18'b110001111011001110;
                7'b1000010 : memoryC1_uid150_invTables_q <= 18'b110010000100011110;
                7'b1000011 : memoryC1_uid150_invTables_q <= 18'b110010001101100100;
                7'b1000100 : memoryC1_uid150_invTables_q <= 18'b110010010110100101;
                7'b1000101 : memoryC1_uid150_invTables_q <= 18'b110010011111011011;
                7'b1000110 : memoryC1_uid150_invTables_q <= 18'b110010101000001000;
                7'b1000111 : memoryC1_uid150_invTables_q <= 18'b110010110000101101;
                7'b1001000 : memoryC1_uid150_invTables_q <= 18'b110010111001001011;
                7'b1001001 : memoryC1_uid150_invTables_q <= 18'b110011000001100000;
                7'b1001010 : memoryC1_uid150_invTables_q <= 18'b110011001001101100;
                7'b1001011 : memoryC1_uid150_invTables_q <= 18'b110011010001110001;
                7'b1001100 : memoryC1_uid150_invTables_q <= 18'b110011011001101101;
                7'b1001101 : memoryC1_uid150_invTables_q <= 18'b110011100001100100;
                7'b1001110 : memoryC1_uid150_invTables_q <= 18'b110011101001010011;
                7'b1001111 : memoryC1_uid150_invTables_q <= 18'b110011110000111011;
                7'b1010000 : memoryC1_uid150_invTables_q <= 18'b110011111000011011;
                7'b1010001 : memoryC1_uid150_invTables_q <= 18'b110011111111110110;
                7'b1010010 : memoryC1_uid150_invTables_q <= 18'b110100000111000111;
                7'b1010011 : memoryC1_uid150_invTables_q <= 18'b110100001110010100;
                7'b1010100 : memoryC1_uid150_invTables_q <= 18'b110100010101011010;
                7'b1010101 : memoryC1_uid150_invTables_q <= 18'b110100011100011011;
                7'b1010110 : memoryC1_uid150_invTables_q <= 18'b110100100011010101;
                7'b1010111 : memoryC1_uid150_invTables_q <= 18'b110100101010000111;
                7'b1011000 : memoryC1_uid150_invTables_q <= 18'b110100110000110100;
                7'b1011001 : memoryC1_uid150_invTables_q <= 18'b110100110111011100;
                7'b1011010 : memoryC1_uid150_invTables_q <= 18'b110100111101111111;
                7'b1011011 : memoryC1_uid150_invTables_q <= 18'b110101000100011011;
                7'b1011100 : memoryC1_uid150_invTables_q <= 18'b110101001010101111;
                7'b1011101 : memoryC1_uid150_invTables_q <= 18'b110101010000111110;
                7'b1011110 : memoryC1_uid150_invTables_q <= 18'b110101010111001001;
                7'b1011111 : memoryC1_uid150_invTables_q <= 18'b110101011101010010;
                7'b1100000 : memoryC1_uid150_invTables_q <= 18'b110101100011001111;
                7'b1100001 : memoryC1_uid150_invTables_q <= 18'b110101101001001100;
                7'b1100010 : memoryC1_uid150_invTables_q <= 18'b110101101111000100;
                7'b1100011 : memoryC1_uid150_invTables_q <= 18'b110101110100110110;
                7'b1100100 : memoryC1_uid150_invTables_q <= 18'b110101111010100001;
                7'b1100101 : memoryC1_uid150_invTables_q <= 18'b110110000000001010;
                7'b1100110 : memoryC1_uid150_invTables_q <= 18'b110110000101101111;
                7'b1100111 : memoryC1_uid150_invTables_q <= 18'b110110001011001100;
                7'b1101000 : memoryC1_uid150_invTables_q <= 18'b110110010000100110;
                7'b1101001 : memoryC1_uid150_invTables_q <= 18'b110110010101111011;
                7'b1101010 : memoryC1_uid150_invTables_q <= 18'b110110011011001100;
                7'b1101011 : memoryC1_uid150_invTables_q <= 18'b110110100000011011;
                7'b1101100 : memoryC1_uid150_invTables_q <= 18'b110110100101100100;
                7'b1101101 : memoryC1_uid150_invTables_q <= 18'b110110101010101010;
                7'b1101110 : memoryC1_uid150_invTables_q <= 18'b110110101111100111;
                7'b1101111 : memoryC1_uid150_invTables_q <= 18'b110110110100100101;
                7'b1110000 : memoryC1_uid150_invTables_q <= 18'b110110111001011011;
                7'b1110001 : memoryC1_uid150_invTables_q <= 18'b110110111110010001;
                7'b1110010 : memoryC1_uid150_invTables_q <= 18'b110111000011000101;
                7'b1110011 : memoryC1_uid150_invTables_q <= 18'b110111000111110010;
                7'b1110100 : memoryC1_uid150_invTables_q <= 18'b110111001100011100;
                7'b1110101 : memoryC1_uid150_invTables_q <= 18'b110111010001000010;
                7'b1110110 : memoryC1_uid150_invTables_q <= 18'b110111010101100011;
                7'b1110111 : memoryC1_uid150_invTables_q <= 18'b110111011010000000;
                7'b1111000 : memoryC1_uid150_invTables_q <= 18'b110111011110011110;
                7'b1111001 : memoryC1_uid150_invTables_q <= 18'b110111100010110101;
                7'b1111010 : memoryC1_uid150_invTables_q <= 18'b110111100111000111;
                7'b1111011 : memoryC1_uid150_invTables_q <= 18'b110111101011011000;
                7'b1111100 : memoryC1_uid150_invTables_q <= 18'b110111101111101001;
                7'b1111101 : memoryC1_uid150_invTables_q <= 18'b110111110011110001;
                7'b1111110 : memoryC1_uid150_invTables_q <= 18'b110111110111111001;
                7'b1111111 : memoryC1_uid150_invTables_q <= 18'b110111111100000001;
                default : begin
                              // unreachable
                              memoryC1_uid150_invTables_q <= 18'bxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // s1sumAHighB_uid163_invPolyEval(ADD,162)@4
    assign s1sumAHighB_uid163_invPolyEval_a = $unsigned({{1{memoryC1_uid150_invTables_q[17]}}, memoryC1_uid150_invTables_q});
    assign s1sumAHighB_uid163_invPolyEval_b = $unsigned({{8{redist10_highBBits_uid162_invPolyEval_b_1_q[10]}}, redist10_highBBits_uid162_invPolyEval_b_1_q});
    assign s1sumAHighB_uid163_invPolyEval_o = $unsigned($signed(s1sumAHighB_uid163_invPolyEval_a) + $signed(s1sumAHighB_uid163_invPolyEval_b));
    assign s1sumAHighB_uid163_invPolyEval_q = s1sumAHighB_uid163_invPolyEval_o[18:0];

    // lowRangeB_uid161_invPolyEval(BITSELECT,160)@3
    assign lowRangeB_uid161_invPolyEval_in = osig_uid176_pT1_uid160_invPolyEval_b[0:0];
    assign lowRangeB_uid161_invPolyEval_b = lowRangeB_uid161_invPolyEval_in[0:0];

    // redist11_lowRangeB_uid161_invPolyEval_b_1(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_lowRangeB_uid161_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist11_lowRangeB_uid161_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid161_invPolyEval_b);
        end
    end

    // s1_uid164_invPolyEval(BITJOIN,163)@4
    assign s1_uid164_invPolyEval_q = {s1sumAHighB_uid163_invPolyEval_q, redist11_lowRangeB_uid161_invPolyEval_b_1_q};

    // prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select(BITSELECT,219)@4
    assign prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_b = $unsigned(s1_uid164_invPolyEval_q[19:18]);
    assign prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_c = $unsigned(s1_uid164_invPolyEval_q[17:0]);

    // redist0_prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_b_1(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist0_prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_b_1_q <= $unsigned(prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_b);
        end
    end

    // redist36_yPE_uid53_block_rsrvd_fix_b_5_inputreg0(DELAY,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_yPE_uid53_block_rsrvd_fix_b_5_inputreg0_q <= '0;
        end
        else
        begin
            redist36_yPE_uid53_block_rsrvd_fix_b_5_inputreg0_q <= $unsigned(redist35_yPE_uid53_block_rsrvd_fix_b_1_q);
        end
    end

    // redist36_yPE_uid53_block_rsrvd_fix_b_5(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_yPE_uid53_block_rsrvd_fix_b_5_delay_0 <= '0;
            redist36_yPE_uid53_block_rsrvd_fix_b_5_delay_1 <= '0;
            redist36_yPE_uid53_block_rsrvd_fix_b_5_q <= '0;
        end
        else
        begin
            redist36_yPE_uid53_block_rsrvd_fix_b_5_delay_0 <= $unsigned(redist36_yPE_uid53_block_rsrvd_fix_b_5_inputreg0_q);
            redist36_yPE_uid53_block_rsrvd_fix_b_5_delay_1 <= redist36_yPE_uid53_block_rsrvd_fix_b_5_delay_0;
            redist36_yPE_uid53_block_rsrvd_fix_b_5_q <= redist36_yPE_uid53_block_rsrvd_fix_b_5_delay_1;
        end
    end

    // prodXY_uid178_pT2_uid166_invPolyEval_im0_cma(CHAINMULTADD,215)@5 + 2
    assign prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_reset = ~ (resetn);
    assign prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_ena0 = 1'b1;
    assign prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_ena1 = prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_ena0;
    assign prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_l[0] = $signed({1'b0, prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_a0[0][9:0]});
    assign prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_p[0] = prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_l[0] * prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_c0[0];
    assign prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_u[0] = prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_p[0][21:0];
    assign prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_w[0] = prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_u[0];
    assign prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_x[0] = prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_w[0];
    assign prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_y[0] = prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_a0 <= '{default: '0};
            prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_ena0 == 1'b1)
            begin
                prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_a0[0] <= redist36_yPE_uid53_block_rsrvd_fix_b_5_q;
                prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_c0[0] <= {{9{redist0_prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_b_1_q[1]}}, redist0_prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_b_1_q[1:0]};
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_ena1 == 1'b1)
            begin
                prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_s[0] <= prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(22), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_delay ( .xin(prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_s[0]), .xout(prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_q = $unsigned(prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_qq[11:0]);

    // redist3_prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_q_1(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_q_1_q <= '0;
        end
        else
        begin
            redist3_prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_q_1_q <= $unsigned(prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_q);
        end
    end

    // prodXY_uid178_pT2_uid166_invPolyEval_sums_align_1(BITSHIFT,207)@8
    assign prodXY_uid178_pT2_uid166_invPolyEval_sums_align_1_qint = { redist3_prodXY_uid178_pT2_uid166_invPolyEval_im0_cma_q_1_q, 18'b000000000000000000 };
    assign prodXY_uid178_pT2_uid166_invPolyEval_sums_align_1_q = prodXY_uid178_pT2_uid166_invPolyEval_sums_align_1_qint[29:0];

    // redist1_prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_c_1(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_c_1_q <= $unsigned(prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_c);
        end
    end

    // prodXY_uid178_pT2_uid166_invPolyEval_im3_cma(CHAINMULTADD,216)@5 + 2
    assign prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_reset = ~ (resetn);
    assign prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_ena0 = 1'b1;
    assign prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_ena1 = prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_ena0;
    assign prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_p[0] = prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_a0[0] * prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_c0[0];
    assign prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_u[0] = prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_p[0][27:0];
    assign prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_w[0] = prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_u[0];
    assign prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_x[0] = prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_w[0];
    assign prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_y[0] = prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_a0 <= '{default: '0};
            prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_ena0 == 1'b1)
            begin
                prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_a0[0] <= redist1_prodXY_uid178_pT2_uid166_invPolyEval_bs2_merged_bit_select_c_1_q;
                prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_c0[0] <= redist36_yPE_uid53_block_rsrvd_fix_b_5_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_ena1 == 1'b1)
            begin
                prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_s[0] <= prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_delay ( .xin(prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_s[0]), .xout(prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_q = $unsigned(prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_qq[27:0]);

    // redist2_prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_q_1(DELAY,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_q_1_q <= '0;
        end
        else
        begin
            redist2_prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_q_1_q <= $unsigned(prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_q);
        end
    end

    // prodXY_uid178_pT2_uid166_invPolyEval_sums_result_add_0_0(ADD,209)@8
    assign prodXY_uid178_pT2_uid166_invPolyEval_sums_result_add_0_0_a = $unsigned({4'b0000, redist2_prodXY_uid178_pT2_uid166_invPolyEval_im3_cma_q_1_q});
    assign prodXY_uid178_pT2_uid166_invPolyEval_sums_result_add_0_0_b = $unsigned({{2{prodXY_uid178_pT2_uid166_invPolyEval_sums_align_1_q[29]}}, prodXY_uid178_pT2_uid166_invPolyEval_sums_align_1_q});
    assign prodXY_uid178_pT2_uid166_invPolyEval_sums_result_add_0_0_o = $unsigned($signed(prodXY_uid178_pT2_uid166_invPolyEval_sums_result_add_0_0_a) + $signed(prodXY_uid178_pT2_uid166_invPolyEval_sums_result_add_0_0_b));
    assign prodXY_uid178_pT2_uid166_invPolyEval_sums_result_add_0_0_q = prodXY_uid178_pT2_uid166_invPolyEval_sums_result_add_0_0_o[30:0];

    // osig_uid179_pT2_uid166_invPolyEval(BITSELECT,178)@8
    assign osig_uid179_pT2_uid166_invPolyEval_in = $unsigned(prodXY_uid178_pT2_uid166_invPolyEval_sums_result_add_0_0_q[29:0]);
    assign osig_uid179_pT2_uid166_invPolyEval_b = $unsigned(osig_uid179_pT2_uid166_invPolyEval_in[29:9]);

    // redist8_osig_uid179_pT2_uid166_invPolyEval_b_1(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_osig_uid179_pT2_uid166_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist8_osig_uid179_pT2_uid166_invPolyEval_b_1_q <= $unsigned(osig_uid179_pT2_uid166_invPolyEval_b);
        end
    end

    // highBBits_uid168_invPolyEval(BITSELECT,167)@9
    assign highBBits_uid168_invPolyEval_b = $unsigned(redist8_osig_uid179_pT2_uid166_invPolyEval_b_1_q[20:2]);

    // redist38_yAddr_uid52_block_rsrvd_fix_b_8(DELAY,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_0 <= '0;
            redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_1 <= '0;
            redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_2 <= '0;
            redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_3 <= '0;
            redist38_yAddr_uid52_block_rsrvd_fix_b_8_q <= '0;
        end
        else
        begin
            redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_0 <= $unsigned(redist37_yAddr_uid52_block_rsrvd_fix_b_3_q);
            redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_1 <= redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_0;
            redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_2 <= redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_1;
            redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_3 <= redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_2;
            redist38_yAddr_uid52_block_rsrvd_fix_b_8_q <= redist38_yAddr_uid52_block_rsrvd_fix_b_8_delay_3;
        end
    end

    // memoryC0_uid147_invTables(LOOKUP,146)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memoryC0_uid147_invTables_q <= $unsigned(26'b01000000000000000000000100);
        end
        else
        begin
            unique case (redist38_yAddr_uid52_block_rsrvd_fix_b_8_q)
                7'b0000000 : memoryC0_uid147_invTables_q <= 26'b01000000000000000000000100;
                7'b0000001 : memoryC0_uid147_invTables_q <= 26'b00111111100000001111111100;
                7'b0000010 : memoryC0_uid147_invTables_q <= 26'b00111111000000111111000101;
                7'b0000011 : memoryC0_uid147_invTables_q <= 26'b00111110100010001100110001;
                7'b0000100 : memoryC0_uid147_invTables_q <= 26'b00111110000011111000010011;
                7'b0000101 : memoryC0_uid147_invTables_q <= 26'b00111101100110000001000001;
                7'b0000110 : memoryC0_uid147_invTables_q <= 26'b00111101001000100110010001;
                7'b0000111 : memoryC0_uid147_invTables_q <= 26'b00111100101011100111011010;
                7'b0001000 : memoryC0_uid147_invTables_q <= 26'b00111100001111000011110101;
                7'b0001001 : memoryC0_uid147_invTables_q <= 26'b00111011110010111010111011;
                7'b0001010 : memoryC0_uid147_invTables_q <= 26'b00111011010111001100001000;
                7'b0001011 : memoryC0_uid147_invTables_q <= 26'b00111010111011110110110110;
                7'b0001100 : memoryC0_uid147_invTables_q <= 26'b00111010100000111010100101;
                7'b0001101 : memoryC0_uid147_invTables_q <= 26'b00111010000110010110110000;
                7'b0001110 : memoryC0_uid147_invTables_q <= 26'b00111001101100001010111000;
                7'b0001111 : memoryC0_uid147_invTables_q <= 26'b00111001010010010110011100;
                7'b0010000 : memoryC0_uid147_invTables_q <= 26'b00111000111000111000111101;
                7'b0010001 : memoryC0_uid147_invTables_q <= 26'b00111000011111110001111100;
                7'b0010010 : memoryC0_uid147_invTables_q <= 26'b00111000000111000000111100;
                7'b0010011 : memoryC0_uid147_invTables_q <= 26'b00110111101110100101100000;
                7'b0010100 : memoryC0_uid147_invTables_q <= 26'b00110111010110011111001101;
                7'b0010101 : memoryC0_uid147_invTables_q <= 26'b00110110111110101101100110;
                7'b0010110 : memoryC0_uid147_invTables_q <= 26'b00110110100111010000010010;
                7'b0010111 : memoryC0_uid147_invTables_q <= 26'b00110110010000000110110110;
                7'b0011000 : memoryC0_uid147_invTables_q <= 26'b00110101111001010000111010;
                7'b0011001 : memoryC0_uid147_invTables_q <= 26'b00110101100010101110000101;
                7'b0011010 : memoryC0_uid147_invTables_q <= 26'b00110101001100011101111111;
                7'b0011011 : memoryC0_uid147_invTables_q <= 26'b00110100110110100000010001;
                7'b0011100 : memoryC0_uid147_invTables_q <= 26'b00110100100000110100100101;
                7'b0011101 : memoryC0_uid147_invTables_q <= 26'b00110100001011011010100100;
                7'b0011110 : memoryC0_uid147_invTables_q <= 26'b00110011110110010001111001;
                7'b0011111 : memoryC0_uid147_invTables_q <= 26'b00110011100001011010001110;
                7'b0100000 : memoryC0_uid147_invTables_q <= 26'b00110011001100110011010001;
                7'b0100001 : memoryC0_uid147_invTables_q <= 26'b00110010111000011100101100;
                7'b0100010 : memoryC0_uid147_invTables_q <= 26'b00110010100100010110001100;
                7'b0100011 : memoryC0_uid147_invTables_q <= 26'b00110010010000011111011110;
                7'b0100100 : memoryC0_uid147_invTables_q <= 26'b00110001111100111000010000;
                7'b0100101 : memoryC0_uid147_invTables_q <= 26'b00110001101001100000010000;
                7'b0100110 : memoryC0_uid147_invTables_q <= 26'b00110001010110010111001100;
                7'b0100111 : memoryC0_uid147_invTables_q <= 26'b00110001000011011100110011;
                7'b0101000 : memoryC0_uid147_invTables_q <= 26'b00110000110000110000110101;
                7'b0101001 : memoryC0_uid147_invTables_q <= 26'b00110000011110010011000000;
                7'b0101010 : memoryC0_uid147_invTables_q <= 26'b00110000001100000011000101;
                7'b0101011 : memoryC0_uid147_invTables_q <= 26'b00101111111010000000110100;
                7'b0101100 : memoryC0_uid147_invTables_q <= 26'b00101111101000001011111110;
                7'b0101101 : memoryC0_uid147_invTables_q <= 26'b00101111010110100100010100;
                7'b0101110 : memoryC0_uid147_invTables_q <= 26'b00101111000101001001101000;
                7'b0101111 : memoryC0_uid147_invTables_q <= 26'b00101110110011111011101011;
                7'b0110000 : memoryC0_uid147_invTables_q <= 26'b00101110100010111010010000;
                7'b0110001 : memoryC0_uid147_invTables_q <= 26'b00101110010010000101001000;
                7'b0110010 : memoryC0_uid147_invTables_q <= 26'b00101110000001011100000111;
                7'b0110011 : memoryC0_uid147_invTables_q <= 26'b00101101110000111110111111;
                7'b0110100 : memoryC0_uid147_invTables_q <= 26'b00101101100000101101100101;
                7'b0110101 : memoryC0_uid147_invTables_q <= 26'b00101101010000100111101010;
                7'b0110110 : memoryC0_uid147_invTables_q <= 26'b00101101000000101101000101;
                7'b0110111 : memoryC0_uid147_invTables_q <= 26'b00101100110000111101100111;
                7'b0111000 : memoryC0_uid147_invTables_q <= 26'b00101100100001011001000111;
                7'b0111001 : memoryC0_uid147_invTables_q <= 26'b00101100010001111111011000;
                7'b0111010 : memoryC0_uid147_invTables_q <= 26'b00101100000010110000001111;
                7'b0111011 : memoryC0_uid147_invTables_q <= 26'b00101011110011101011100010;
                7'b0111100 : memoryC0_uid147_invTables_q <= 26'b00101011100100110001000101;
                7'b0111101 : memoryC0_uid147_invTables_q <= 26'b00101011010110000000101111;
                7'b0111110 : memoryC0_uid147_invTables_q <= 26'b00101011000111011010010101;
                7'b0111111 : memoryC0_uid147_invTables_q <= 26'b00101010111000111101101110;
                7'b1000000 : memoryC0_uid147_invTables_q <= 26'b00101010101010101010101111;
                7'b1000001 : memoryC0_uid147_invTables_q <= 26'b00101010011100100001001110;
                7'b1000010 : memoryC0_uid147_invTables_q <= 26'b00101010001110100001000011;
                7'b1000011 : memoryC0_uid147_invTables_q <= 26'b00101010000000101010000101;
                7'b1000100 : memoryC0_uid147_invTables_q <= 26'b00101001110010111100001001;
                7'b1000101 : memoryC0_uid147_invTables_q <= 26'b00101001100101010111001000;
                7'b1000110 : memoryC0_uid147_invTables_q <= 26'b00101001010111111010111001;
                7'b1000111 : memoryC0_uid147_invTables_q <= 26'b00101001001010100111010011;
                7'b1001000 : memoryC0_uid147_invTables_q <= 26'b00101000111101011100001110;
                7'b1001001 : memoryC0_uid147_invTables_q <= 26'b00101000110000011001100010;
                7'b1001010 : memoryC0_uid147_invTables_q <= 26'b00101000100011011111000111;
                7'b1001011 : memoryC0_uid147_invTables_q <= 26'b00101000010110101100110101;
                7'b1001100 : memoryC0_uid147_invTables_q <= 26'b00101000001010000010100101;
                7'b1001101 : memoryC0_uid147_invTables_q <= 26'b00100111111101100000001110;
                7'b1001110 : memoryC0_uid147_invTables_q <= 26'b00100111110001000101101010;
                7'b1001111 : memoryC0_uid147_invTables_q <= 26'b00100111100100110010110001;
                7'b1010000 : memoryC0_uid147_invTables_q <= 26'b00100111011000100111011101;
                7'b1010001 : memoryC0_uid147_invTables_q <= 26'b00100111001100100011100101;
                7'b1010010 : memoryC0_uid147_invTables_q <= 26'b00100111000000100111000101;
                7'b1010011 : memoryC0_uid147_invTables_q <= 26'b00100110110100110001110100;
                7'b1010100 : memoryC0_uid147_invTables_q <= 26'b00100110101001000011101100;
                7'b1010101 : memoryC0_uid147_invTables_q <= 26'b00100110011101011100100111;
                7'b1010110 : memoryC0_uid147_invTables_q <= 26'b00100110010001111100011110;
                7'b1010111 : memoryC0_uid147_invTables_q <= 26'b00100110000110100011001100;
                7'b1011000 : memoryC0_uid147_invTables_q <= 26'b00100101111011010000101010;
                7'b1011001 : memoryC0_uid147_invTables_q <= 26'b00100101110000000100110010;
                7'b1011010 : memoryC0_uid147_invTables_q <= 26'b00100101100100111111011110;
                7'b1011011 : memoryC0_uid147_invTables_q <= 26'b00100101011010000000101001;
                7'b1011100 : memoryC0_uid147_invTables_q <= 26'b00100101001111001000001101;
                7'b1011101 : memoryC0_uid147_invTables_q <= 26'b00100101000100010110000101;
                7'b1011110 : memoryC0_uid147_invTables_q <= 26'b00100100111001101010001010;
                7'b1011111 : memoryC0_uid147_invTables_q <= 26'b00100100101111000100010111;
                7'b1100000 : memoryC0_uid147_invTables_q <= 26'b00100100100100100100101001;
                7'b1100001 : memoryC0_uid147_invTables_q <= 26'b00100100011010001010111000;
                7'b1100010 : memoryC0_uid147_invTables_q <= 26'b00100100001111110111000000;
                7'b1100011 : memoryC0_uid147_invTables_q <= 26'b00100100000101101000111100;
                7'b1100100 : memoryC0_uid147_invTables_q <= 26'b00100011111011100000101000;
                7'b1100101 : memoryC0_uid147_invTables_q <= 26'b00100011110001011101111110;
                7'b1100110 : memoryC0_uid147_invTables_q <= 26'b00100011100111100000111001;
                7'b1100111 : memoryC0_uid147_invTables_q <= 26'b00100011011101101001010110;
                7'b1101000 : memoryC0_uid147_invTables_q <= 26'b00100011010011110111001111;
                7'b1101001 : memoryC0_uid147_invTables_q <= 26'b00100011001010001010100000;
                7'b1101010 : memoryC0_uid147_invTables_q <= 26'b00100011000000100011000101;
                7'b1101011 : memoryC0_uid147_invTables_q <= 26'b00100010110111000000111000;
                7'b1101100 : memoryC0_uid147_invTables_q <= 26'b00100010101101100011110111;
                7'b1101101 : memoryC0_uid147_invTables_q <= 26'b00100010100100001011111100;
                7'b1101110 : memoryC0_uid147_invTables_q <= 26'b00100010011010111001000101;
                7'b1101111 : memoryC0_uid147_invTables_q <= 26'b00100010010001101011001011;
                7'b1110000 : memoryC0_uid147_invTables_q <= 26'b00100010001000100010001101;
                7'b1110001 : memoryC0_uid147_invTables_q <= 26'b00100001111111011110000101;
                7'b1110010 : memoryC0_uid147_invTables_q <= 26'b00100001110110011110101111;
                7'b1110011 : memoryC0_uid147_invTables_q <= 26'b00100001101101100100001001;
                7'b1110100 : memoryC0_uid147_invTables_q <= 26'b00100001100100101110001110;
                7'b1110101 : memoryC0_uid147_invTables_q <= 26'b00100001011011111100111011;
                7'b1110110 : memoryC0_uid147_invTables_q <= 26'b00100001010011010000001100;
                7'b1110111 : memoryC0_uid147_invTables_q <= 26'b00100001001010100111111110;
                7'b1111000 : memoryC0_uid147_invTables_q <= 26'b00100001000010000100001100;
                7'b1111001 : memoryC0_uid147_invTables_q <= 26'b00100000111001100100110100;
                7'b1111010 : memoryC0_uid147_invTables_q <= 26'b00100000110001001001110011;
                7'b1111011 : memoryC0_uid147_invTables_q <= 26'b00100000101000110011000100;
                7'b1111100 : memoryC0_uid147_invTables_q <= 26'b00100000100000100000100100;
                7'b1111101 : memoryC0_uid147_invTables_q <= 26'b00100000011000010010010010;
                7'b1111110 : memoryC0_uid147_invTables_q <= 26'b00100000010000001000001000;
                7'b1111111 : memoryC0_uid147_invTables_q <= 26'b00100000001000000010000100;
                default : begin
                              // unreachable
                              memoryC0_uid147_invTables_q <= 26'bxxxxxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // s2sumAHighB_uid169_invPolyEval(ADD,168)@9
    assign s2sumAHighB_uid169_invPolyEval_a = $unsigned({{1{memoryC0_uid147_invTables_q[25]}}, memoryC0_uid147_invTables_q});
    assign s2sumAHighB_uid169_invPolyEval_b = $unsigned({{8{highBBits_uid168_invPolyEval_b[18]}}, highBBits_uid168_invPolyEval_b});
    assign s2sumAHighB_uid169_invPolyEval_o = $unsigned($signed(s2sumAHighB_uid169_invPolyEval_a) + $signed(s2sumAHighB_uid169_invPolyEval_b));
    assign s2sumAHighB_uid169_invPolyEval_q = s2sumAHighB_uid169_invPolyEval_o[26:0];

    // lowRangeB_uid167_invPolyEval(BITSELECT,166)@9
    assign lowRangeB_uid167_invPolyEval_in = redist8_osig_uid179_pT2_uid166_invPolyEval_b_1_q[1:0];
    assign lowRangeB_uid167_invPolyEval_b = lowRangeB_uid167_invPolyEval_in[1:0];

    // s2_uid170_invPolyEval(BITJOIN,169)@9
    assign s2_uid170_invPolyEval_q = {s2sumAHighB_uid169_invPolyEval_q, lowRangeB_uid167_invPolyEval_b};

    // invY_uid55_block_rsrvd_fix(BITSELECT,54)@9
    assign invY_uid55_block_rsrvd_fix_in = s2_uid170_invPolyEval_q[25:0];
    assign invY_uid55_block_rsrvd_fix_b = invY_uid55_block_rsrvd_fix_in[25:5];

    // redist34_invY_uid55_block_rsrvd_fix_b_1(DELAY,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_invY_uid55_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist34_invY_uid55_block_rsrvd_fix_b_1_q <= $unsigned(invY_uid55_block_rsrvd_fix_b);
        end
    end

    // prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_bs1_merged_bit_select(BITSELECT,217)@10
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_bs1_merged_bit_select_b = redist34_invY_uid55_block_rsrvd_fix_b_1_q[20:18];
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_bs1_merged_bit_select_c = redist34_invY_uid55_block_rsrvd_fix_b_1_q[17:0];

    // prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma(CHAINMULTADD,213)@10 + 2
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_reset = ~ (resetn);
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_ena0 = 1'b1;
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_ena1 = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_ena0;
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_p[0] = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_a0[0] * prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_c0[0];
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_u[0] = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_p[0][27:0];
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_w[0] = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_u[0];
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_x[0] = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_w[0];
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_y[0] = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_a0 <= '{default: '0};
            prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_ena0 == 1'b1)
            begin
                prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_a0[0] <= lOAdded_uid58_block_rsrvd_fix_q;
                prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_c0[0] <= {7'b0000000, prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_bs1_merged_bit_select_b[2:0]};
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_ena1 == 1'b1)
            begin
                prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_s[0] <= prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_delay ( .xin(prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_s[0]), .xout(prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_q = $unsigned(prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_qq[20:0]);

    // redist5_prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_q_1(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_q_1_q <= '0;
        end
        else
        begin
            redist5_prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_q_1_q <= $unsigned(prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_q);
        end
    end

    // prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_align_1(BITSHIFT,197)@13
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_align_1_qint = { redist5_prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im0_cma_q_1_q, 18'b000000000000000000 };
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_align_1_q = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_align_1_qint[38:0];

    // prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma(CHAINMULTADD,214)@10 + 2
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_reset = ~ (resetn);
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_ena0 = 1'b1;
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_ena1 = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_ena0;
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_p[0] = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_a0[0] * prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_c0[0];
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_u[0] = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_p[0][35:0];
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_w[0] = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_u[0];
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_x[0] = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_w[0];
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_y[0] = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_a0 <= '{default: '0};
            prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_ena0 == 1'b1)
            begin
                prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_a0[0] <= prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_bs1_merged_bit_select_c;
                prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_c0[0] <= lOAdded_uid58_block_rsrvd_fix_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_ena1 == 1'b1)
            begin
                prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_s[0] <= prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_delay ( .xin(prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_s[0]), .xout(prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_q = $unsigned(prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_qq[35:0]);

    // redist4_prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_q_1(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_q_1_q <= '0;
        end
        else
        begin
            redist4_prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_q_1_q <= $unsigned(prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_q);
        end
    end

    // prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_result_add_0_0(ADD,199)@13
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_result_add_0_0_a = {4'b0000, redist4_prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_im3_cma_q_1_q};
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_result_add_0_0_b = {1'b0, prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_align_1_q};
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_result_add_0_0_o = $unsigned(prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_result_add_0_0_a) + $unsigned(prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_result_add_0_0_b);
    assign prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_result_add_0_0_q = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_result_add_0_0_o[39:0];

    // osig_uid173_divValPreNorm_uid60_block_rsrvd_fix(BITSELECT,172)@13
    assign osig_uid173_divValPreNorm_uid60_block_rsrvd_fix_in = prodXY_uid172_divValPreNorm_uid60_block_rsrvd_fix_sums_result_add_0_0_q[38:0];
    assign osig_uid173_divValPreNorm_uid60_block_rsrvd_fix_b = osig_uid173_divValPreNorm_uid60_block_rsrvd_fix_in[38:17];

    // redist9_osig_uid173_divValPreNorm_uid60_block_rsrvd_fix_b_1(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_osig_uid173_divValPreNorm_uid60_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist9_osig_uid173_divValPreNorm_uid60_block_rsrvd_fix_b_1_q <= $unsigned(osig_uid173_divValPreNorm_uid60_block_rsrvd_fix_b);
        end
    end

    // updatedY_uid17_block_rsrvd_fix(BITJOIN,16)@13
    assign updatedY_uid17_block_rsrvd_fix_q = {GND_q, paddingY_uid16_block_rsrvd_fix_q};

    // fracYZero_uid16_block_rsrvd_fix(LOGICAL,17)@13 + 1
    assign fracYZero_uid16_block_rsrvd_fix_a = {1'b0, redist44_fracY_uid14_block_rsrvd_fix_b_13_outputreg0_q};
    assign fracYZero_uid16_block_rsrvd_fix_qi = $unsigned(fracYZero_uid16_block_rsrvd_fix_a == updatedY_uid17_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracYZero_uid16_block_rsrvd_fix_delay ( .xin(fracYZero_uid16_block_rsrvd_fix_qi), .xout(fracYZero_uid16_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // divValPreNormYPow2Exc_uid64_block_rsrvd_fix(MUX,63)@14
    assign divValPreNormYPow2Exc_uid64_block_rsrvd_fix_s = fracYZero_uid16_block_rsrvd_fix_q;
    always @(divValPreNormYPow2Exc_uid64_block_rsrvd_fix_s or redist9_osig_uid173_divValPreNorm_uid60_block_rsrvd_fix_b_1_q or oFracXZ4_uid62_block_rsrvd_fix_q)
    begin
        unique case (divValPreNormYPow2Exc_uid64_block_rsrvd_fix_s)
            1'b0 : divValPreNormYPow2Exc_uid64_block_rsrvd_fix_q = redist9_osig_uid173_divValPreNorm_uid60_block_rsrvd_fix_b_1_q;
            1'b1 : divValPreNormYPow2Exc_uid64_block_rsrvd_fix_q = oFracXZ4_uid62_block_rsrvd_fix_q;
            default : divValPreNormYPow2Exc_uid64_block_rsrvd_fix_q = 22'b0;
        endcase
    end

    // norm_uid65_block_rsrvd_fix(BITSELECT,64)@14
    assign norm_uid65_block_rsrvd_fix_b = $unsigned(divValPreNormYPow2Exc_uid64_block_rsrvd_fix_q[21:21]);

    // redist31_norm_uid65_block_rsrvd_fix_b_1(DELAY,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_norm_uid65_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist31_norm_uid65_block_rsrvd_fix_b_1_q <= $unsigned(norm_uid65_block_rsrvd_fix_b);
        end
    end

    // zeroPaddingInAddition_uid75_block_rsrvd_fix(CONSTANT,74)
    assign zeroPaddingInAddition_uid75_block_rsrvd_fix_q = $unsigned(18'b000000000000000000);

    // expFracPostRnd_uid76_block_rsrvd_fix(BITJOIN,75)@15
    assign expFracPostRnd_uid76_block_rsrvd_fix_q = {redist31_norm_uid65_block_rsrvd_fix_b_1_q, zeroPaddingInAddition_uid75_block_rsrvd_fix_q, VCC_q};

    // cstBiasM1_uid7_block_rsrvd_fix(CONSTANT,6)
    assign cstBiasM1_uid7_block_rsrvd_fix_q = $unsigned(8'b01111110);

    // expXmY_uid48_block_rsrvd_fix(SUB,47)@13 + 1
    assign expXmY_uid48_block_rsrvd_fix_a = {1'b0, redist52_expX_uid10_block_rsrvd_fix_b_3_q};
    assign expXmY_uid48_block_rsrvd_fix_b = {1'b0, redist47_expY_uid13_block_rsrvd_fix_b_13_outputreg0_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expXmY_uid48_block_rsrvd_fix_o <= 9'b0;
        end
        else
        begin
            expXmY_uid48_block_rsrvd_fix_o <= $unsigned(expXmY_uid48_block_rsrvd_fix_a) - $unsigned(expXmY_uid48_block_rsrvd_fix_b);
        end
    end
    assign expXmY_uid48_block_rsrvd_fix_q = expXmY_uid48_block_rsrvd_fix_o[8:0];

    // expR_uid49_block_rsrvd_fix(ADD,48)@14 + 1
    assign expR_uid49_block_rsrvd_fix_a = $unsigned({{2{expXmY_uid48_block_rsrvd_fix_q[8]}}, expXmY_uid48_block_rsrvd_fix_q});
    assign expR_uid49_block_rsrvd_fix_b = $unsigned({3'b000, cstBiasM1_uid7_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expR_uid49_block_rsrvd_fix_o <= 11'b0;
        end
        else
        begin
            expR_uid49_block_rsrvd_fix_o <= $unsigned($signed(expR_uid49_block_rsrvd_fix_a) + $signed(expR_uid49_block_rsrvd_fix_b));
        end
    end
    assign expR_uid49_block_rsrvd_fix_q = expR_uid49_block_rsrvd_fix_o[9:0];

    // divValPreNormHigh_uid66_block_rsrvd_fix(BITSELECT,65)@14
    assign divValPreNormHigh_uid66_block_rsrvd_fix_in = divValPreNormYPow2Exc_uid64_block_rsrvd_fix_q[20:0];
    assign divValPreNormHigh_uid66_block_rsrvd_fix_b = divValPreNormHigh_uid66_block_rsrvd_fix_in[20:2];

    // divValPreNormLow_uid67_block_rsrvd_fix(BITSELECT,66)@14
    assign divValPreNormLow_uid67_block_rsrvd_fix_in = divValPreNormYPow2Exc_uid64_block_rsrvd_fix_q[19:0];
    assign divValPreNormLow_uid67_block_rsrvd_fix_b = divValPreNormLow_uid67_block_rsrvd_fix_in[19:1];

    // normFracRnd_uid68_block_rsrvd_fix(MUX,67)@14 + 1
    assign normFracRnd_uid68_block_rsrvd_fix_s = norm_uid65_block_rsrvd_fix_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            normFracRnd_uid68_block_rsrvd_fix_q <= 19'b0;
        end
        else
        begin
            unique case (normFracRnd_uid68_block_rsrvd_fix_s)
                1'b0 : normFracRnd_uid68_block_rsrvd_fix_q <= divValPreNormLow_uid67_block_rsrvd_fix_b;
                1'b1 : normFracRnd_uid68_block_rsrvd_fix_q <= divValPreNormHigh_uid66_block_rsrvd_fix_b;
                default : normFracRnd_uid68_block_rsrvd_fix_q <= 19'b0;
            endcase
        end
    end

    // expFracRnd_uid69_block_rsrvd_fix(BITJOIN,68)@15
    assign expFracRnd_uid69_block_rsrvd_fix_q = {expR_uid49_block_rsrvd_fix_q, normFracRnd_uid68_block_rsrvd_fix_q};

    // expFracPostRnd_uid77_block_rsrvd_fix(ADD,76)@15 + 1
    assign expFracPostRnd_uid77_block_rsrvd_fix_a = $unsigned({{2{expFracRnd_uid69_block_rsrvd_fix_q[28]}}, expFracRnd_uid69_block_rsrvd_fix_q});
    assign expFracPostRnd_uid77_block_rsrvd_fix_b = $unsigned({11'b00000000000, expFracPostRnd_uid76_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expFracPostRnd_uid77_block_rsrvd_fix_o <= 31'b0;
        end
        else
        begin
            expFracPostRnd_uid77_block_rsrvd_fix_o <= $unsigned($signed(expFracPostRnd_uid77_block_rsrvd_fix_a) + $signed(expFracPostRnd_uid77_block_rsrvd_fix_b));
        end
    end
    assign expFracPostRnd_uid77_block_rsrvd_fix_q = expFracPostRnd_uid77_block_rsrvd_fix_o[29:0];

    // fracPostRndF_uid80_block_rsrvd_fix(BITSELECT,79)@16
    assign fracPostRndF_uid80_block_rsrvd_fix_in = expFracPostRnd_uid77_block_rsrvd_fix_q[18:0];
    assign fracPostRndF_uid80_block_rsrvd_fix_b = fracPostRndF_uid80_block_rsrvd_fix_in[18:1];

    // invYO_uid56_block_rsrvd_fix(BITSELECT,55)@9
    assign invYO_uid56_block_rsrvd_fix_in = $unsigned(s2_uid170_invPolyEval_q[26:0]);
    assign invYO_uid56_block_rsrvd_fix_b = $unsigned(invYO_uid56_block_rsrvd_fix_in[26:26]);

    // redist33_invYO_uid56_block_rsrvd_fix_b_7(DELAY,253)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist33_invYO_uid56_block_rsrvd_fix_b_7 ( .xin(invYO_uid56_block_rsrvd_fix_b), .xout(redist33_invYO_uid56_block_rsrvd_fix_b_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracPostRndF_uid81_block_rsrvd_fix(MUX,80)@16
    assign fracPostRndF_uid81_block_rsrvd_fix_s = redist33_invYO_uid56_block_rsrvd_fix_b_7_q;
    always @(fracPostRndF_uid81_block_rsrvd_fix_s or fracPostRndF_uid80_block_rsrvd_fix_b or fracXExt_uid78_block_rsrvd_fix_q)
    begin
        unique case (fracPostRndF_uid81_block_rsrvd_fix_s)
            1'b0 : fracPostRndF_uid81_block_rsrvd_fix_q = fracPostRndF_uid80_block_rsrvd_fix_b;
            1'b1 : fracPostRndF_uid81_block_rsrvd_fix_q = fracXExt_uid78_block_rsrvd_fix_q;
            default : fracPostRndF_uid81_block_rsrvd_fix_q = 18'b0;
        endcase
    end

    // redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_inputreg0(DELAY,299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_inputreg0_q <= '0;
        end
        else
        begin
            redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_inputreg0_q <= $unsigned(fracPostRndF_uid81_block_rsrvd_fix_q);
        end
    end

    // redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_wraddr(REG,303)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_wraddr_q <= $unsigned(redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_rdcnt_q);
        end
    end

    // redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem(DUALMEM,301)
    assign redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_ia = $unsigned(redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_inputreg0_q);
    assign redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_aa = redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_wraddr_q;
    assign redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_ab = redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_rdcnt_q;
    assign redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(18),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(18),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_dmem (
        .clocken1(redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_reset0),
        .clock1(clock),
        .address_a(redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_aa),
        .data_a(redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_ab),
        .q_b(redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_iq),
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
    assign redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_q = redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_iq[17:0];

    // redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_outputreg0(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_outputreg0_q <= '0;
        end
        else
        begin
            redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_outputreg0_q <= $unsigned(redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_mem_q);
        end
    end

    // betweenFPwF_uid103_block_rsrvd_fix(BITSELECT,102)@23
    assign betweenFPwF_uid103_block_rsrvd_fix_in = $unsigned(redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_outputreg0_q[0:0]);
    assign betweenFPwF_uid103_block_rsrvd_fix_b = $unsigned(betweenFPwF_uid103_block_rsrvd_fix_in[0:0]);

    // redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_notEnable(LOGICAL,283)
    assign redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_nor(LOGICAL,284)
    assign redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_nor_q = ~ (redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_notEnable_q | redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_sticky_ena_q);

    // redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_last(CONSTANT,280)
    assign redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_last_q = $unsigned(2'b01);

    // redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_cmp(LOGICAL,281)
    assign redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_cmp_q = $unsigned(redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_last_q == redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_cmpReg(REG,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_cmpReg_q <= $unsigned(redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_cmp_q);
        end
    end

    // redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_sticky_ena(REG,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_nor_q == 1'b1)
        begin
            redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_sticky_ena_q <= $unsigned(redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_cmpReg_q);
        end
    end

    // redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_enaAnd(LOGICAL,286)
    assign redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_enaAnd_q = redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_sticky_ena_q & VCC_q;

    // redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt(COUNTER,278)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_i <= 2'd0;
            redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_i == 2'd1)
            begin
                redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_eq <= 1'b0;
            end
            if (redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_eq == 1'b1)
            begin
                redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_i <= $unsigned(redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_i <= $unsigned(redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_q = redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_i[1:0];

    // redist54_expX_uid10_block_rsrvd_fix_b_6(DELAY,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_expX_uid10_block_rsrvd_fix_b_6_q <= '0;
        end
        else
        begin
            redist54_expX_uid10_block_rsrvd_fix_b_6_q <= $unsigned(redist53_expX_uid10_block_rsrvd_fix_b_5_q);
        end
    end

    // qDivProdLTX_opB_uid101_block_rsrvd_fix(BITJOIN,100)@16
    assign qDivProdLTX_opB_uid101_block_rsrvd_fix_q = {redist54_expX_uid10_block_rsrvd_fix_b_6_q, redist51_fracX_uid11_block_rsrvd_fix_b_6_q};

    // redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_inputreg0(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_inputreg0_q <= '0;
        end
        else
        begin
            redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_inputreg0_q <= $unsigned(qDivProdLTX_opB_uid101_block_rsrvd_fix_q);
        end
    end

    // redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_wraddr(REG,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_wraddr_q <= $unsigned(redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_q);
        end
    end

    // redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem(DUALMEM,277)
    assign redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_ia = $unsigned(redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_inputreg0_q);
    assign redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_aa = redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_wraddr_q;
    assign redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_ab = redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_rdcnt_q;
    assign redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(25),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(25),
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
    ) redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_dmem (
        .clocken1(redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_reset0),
        .clock1(clock),
        .address_a(redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_aa),
        .data_a(redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_ab),
        .q_b(redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_iq),
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
    assign redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_q = redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_iq[24:0];

    // redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_outputreg0(DELAY,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_outputreg0_q <= '0;
        end
        else
        begin
            redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_outputreg0_q <= $unsigned(redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_mem_q);
        end
    end

    // lOAdded_uid85_block_rsrvd_fix(BITJOIN,84)@16
    assign lOAdded_uid85_block_rsrvd_fix_q = {VCC_q, fracPostRndF_uid81_block_rsrvd_fix_q};

    // qDivProd_uid90_block_rsrvd_fix_bs1_merged_bit_select(BITSELECT,218)@16
    assign qDivProd_uid90_block_rsrvd_fix_bs1_merged_bit_select_b = lOAdded_uid85_block_rsrvd_fix_q[18:18];
    assign qDivProd_uid90_block_rsrvd_fix_bs1_merged_bit_select_c = lOAdded_uid85_block_rsrvd_fix_q[17:0];

    // redist46_fracY_uid14_block_rsrvd_fix_b_16(DELAY,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_fracY_uid14_block_rsrvd_fix_b_16_q <= '0;
        end
        else
        begin
            redist46_fracY_uid14_block_rsrvd_fix_b_16_q <= $unsigned(redist45_fracY_uid14_block_rsrvd_fix_b_15_q);
        end
    end

    // lOAdded_uid88_block_rsrvd_fix(BITJOIN,87)@16
    assign lOAdded_uid88_block_rsrvd_fix_q = {VCC_q, redist46_fracY_uid14_block_rsrvd_fix_b_16_q};

    // qDivProd_uid90_block_rsrvd_fix_im0_cma(CHAINMULTADD,211)@16 + 2
    assign qDivProd_uid90_block_rsrvd_fix_im0_cma_reset = ~ (resetn);
    assign qDivProd_uid90_block_rsrvd_fix_im0_cma_ena0 = 1'b1;
    assign qDivProd_uid90_block_rsrvd_fix_im0_cma_ena1 = qDivProd_uid90_block_rsrvd_fix_im0_cma_ena0;
    assign qDivProd_uid90_block_rsrvd_fix_im0_cma_p[0] = qDivProd_uid90_block_rsrvd_fix_im0_cma_a0[0] * qDivProd_uid90_block_rsrvd_fix_im0_cma_c0[0];
    assign qDivProd_uid90_block_rsrvd_fix_im0_cma_u[0] = qDivProd_uid90_block_rsrvd_fix_im0_cma_p[0][27:0];
    assign qDivProd_uid90_block_rsrvd_fix_im0_cma_w[0] = qDivProd_uid90_block_rsrvd_fix_im0_cma_u[0];
    assign qDivProd_uid90_block_rsrvd_fix_im0_cma_x[0] = qDivProd_uid90_block_rsrvd_fix_im0_cma_w[0];
    assign qDivProd_uid90_block_rsrvd_fix_im0_cma_y[0] = qDivProd_uid90_block_rsrvd_fix_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            qDivProd_uid90_block_rsrvd_fix_im0_cma_a0 <= '{default: '0};
            qDivProd_uid90_block_rsrvd_fix_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (qDivProd_uid90_block_rsrvd_fix_im0_cma_ena0 == 1'b1)
            begin
                qDivProd_uid90_block_rsrvd_fix_im0_cma_a0[0] <= lOAdded_uid88_block_rsrvd_fix_q;
                qDivProd_uid90_block_rsrvd_fix_im0_cma_c0[0] <= {9'b000000000, qDivProd_uid90_block_rsrvd_fix_bs1_merged_bit_select_b[0:0]};
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            qDivProd_uid90_block_rsrvd_fix_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (qDivProd_uid90_block_rsrvd_fix_im0_cma_ena1 == 1'b1)
            begin
                qDivProd_uid90_block_rsrvd_fix_im0_cma_s[0] <= qDivProd_uid90_block_rsrvd_fix_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    qDivProd_uid90_block_rsrvd_fix_im0_cma_delay ( .xin(qDivProd_uid90_block_rsrvd_fix_im0_cma_s[0]), .xout(qDivProd_uid90_block_rsrvd_fix_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign qDivProd_uid90_block_rsrvd_fix_im0_cma_q = $unsigned(qDivProd_uid90_block_rsrvd_fix_im0_cma_qq[18:0]);

    // redist7_qDivProd_uid90_block_rsrvd_fix_im0_cma_q_1(DELAY,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_qDivProd_uid90_block_rsrvd_fix_im0_cma_q_1_q <= '0;
        end
        else
        begin
            redist7_qDivProd_uid90_block_rsrvd_fix_im0_cma_q_1_q <= $unsigned(qDivProd_uid90_block_rsrvd_fix_im0_cma_q);
        end
    end

    // qDivProd_uid90_block_rsrvd_fix_sums_align_1(BITSHIFT,187)@19
    assign qDivProd_uid90_block_rsrvd_fix_sums_align_1_qint = { redist7_qDivProd_uid90_block_rsrvd_fix_im0_cma_q_1_q, 18'b000000000000000000 };
    assign qDivProd_uid90_block_rsrvd_fix_sums_align_1_q = qDivProd_uid90_block_rsrvd_fix_sums_align_1_qint[36:0];

    // qDivProd_uid90_block_rsrvd_fix_im3_cma(CHAINMULTADD,212)@16 + 2
    assign qDivProd_uid90_block_rsrvd_fix_im3_cma_reset = ~ (resetn);
    assign qDivProd_uid90_block_rsrvd_fix_im3_cma_ena0 = 1'b1;
    assign qDivProd_uid90_block_rsrvd_fix_im3_cma_ena1 = qDivProd_uid90_block_rsrvd_fix_im3_cma_ena0;
    assign qDivProd_uid90_block_rsrvd_fix_im3_cma_p[0] = qDivProd_uid90_block_rsrvd_fix_im3_cma_a0[0] * qDivProd_uid90_block_rsrvd_fix_im3_cma_c0[0];
    assign qDivProd_uid90_block_rsrvd_fix_im3_cma_u[0] = qDivProd_uid90_block_rsrvd_fix_im3_cma_p[0][35:0];
    assign qDivProd_uid90_block_rsrvd_fix_im3_cma_w[0] = qDivProd_uid90_block_rsrvd_fix_im3_cma_u[0];
    assign qDivProd_uid90_block_rsrvd_fix_im3_cma_x[0] = qDivProd_uid90_block_rsrvd_fix_im3_cma_w[0];
    assign qDivProd_uid90_block_rsrvd_fix_im3_cma_y[0] = qDivProd_uid90_block_rsrvd_fix_im3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            qDivProd_uid90_block_rsrvd_fix_im3_cma_a0 <= '{default: '0};
            qDivProd_uid90_block_rsrvd_fix_im3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (qDivProd_uid90_block_rsrvd_fix_im3_cma_ena0 == 1'b1)
            begin
                qDivProd_uid90_block_rsrvd_fix_im3_cma_a0[0] <= qDivProd_uid90_block_rsrvd_fix_bs1_merged_bit_select_c;
                qDivProd_uid90_block_rsrvd_fix_im3_cma_c0[0] <= lOAdded_uid88_block_rsrvd_fix_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            qDivProd_uid90_block_rsrvd_fix_im3_cma_s <= '{default: '0};
        end
        else
        begin
            if (qDivProd_uid90_block_rsrvd_fix_im3_cma_ena1 == 1'b1)
            begin
                qDivProd_uid90_block_rsrvd_fix_im3_cma_s[0] <= qDivProd_uid90_block_rsrvd_fix_im3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    qDivProd_uid90_block_rsrvd_fix_im3_cma_delay ( .xin(qDivProd_uid90_block_rsrvd_fix_im3_cma_s[0]), .xout(qDivProd_uid90_block_rsrvd_fix_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign qDivProd_uid90_block_rsrvd_fix_im3_cma_q = $unsigned(qDivProd_uid90_block_rsrvd_fix_im3_cma_qq[35:0]);

    // redist6_qDivProd_uid90_block_rsrvd_fix_im3_cma_q_1(DELAY,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_qDivProd_uid90_block_rsrvd_fix_im3_cma_q_1_q <= '0;
        end
        else
        begin
            redist6_qDivProd_uid90_block_rsrvd_fix_im3_cma_q_1_q <= $unsigned(qDivProd_uid90_block_rsrvd_fix_im3_cma_q);
        end
    end

    // qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0(ADD,189)@19
    assign qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0_a = {2'b00, redist6_qDivProd_uid90_block_rsrvd_fix_im3_cma_q_1_q};
    assign qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0_b = {1'b0, qDivProd_uid90_block_rsrvd_fix_sums_align_1_q};
    assign qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0_o = $unsigned(qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0_a) + $unsigned(qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0_b);
    assign qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0_q = qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0_o[37:0];

    // qDivProdNorm_uid91_block_rsrvd_fix(BITSELECT,90)@19
    assign qDivProdNorm_uid91_block_rsrvd_fix_in = $unsigned(qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0_q[36:0]);
    assign qDivProdNorm_uid91_block_rsrvd_fix_b = $unsigned(qDivProdNorm_uid91_block_rsrvd_fix_in[36:36]);

    // redist27_qDivProdNorm_uid91_block_rsrvd_fix_b_1(DELAY,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_qDivProdNorm_uid91_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist27_qDivProdNorm_uid91_block_rsrvd_fix_b_1_q <= $unsigned(qDivProdNorm_uid91_block_rsrvd_fix_b);
        end
    end

    // cstBias_uid8_block_rsrvd_fix(CONSTANT,7)
    assign cstBias_uid8_block_rsrvd_fix_q = $unsigned(8'b01111111);

    // qDivProdExp_opBs_uid96_block_rsrvd_fix(SUB,95)@20 + 1
    assign qDivProdExp_opBs_uid96_block_rsrvd_fix_a = {1'b0, cstBias_uid8_block_rsrvd_fix_q};
    assign qDivProdExp_opBs_uid96_block_rsrvd_fix_b = {8'b00000000, redist27_qDivProdNorm_uid91_block_rsrvd_fix_b_1_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            qDivProdExp_opBs_uid96_block_rsrvd_fix_o <= 9'b0;
        end
        else
        begin
            qDivProdExp_opBs_uid96_block_rsrvd_fix_o <= $unsigned(qDivProdExp_opBs_uid96_block_rsrvd_fix_a) - $unsigned(qDivProdExp_opBs_uid96_block_rsrvd_fix_b);
        end
    end
    assign qDivProdExp_opBs_uid96_block_rsrvd_fix_q = qDivProdExp_opBs_uid96_block_rsrvd_fix_o[8:0];

    // expPostRndFR_uid82_block_rsrvd_fix(BITSELECT,81)@16
    assign expPostRndFR_uid82_block_rsrvd_fix_in = expFracPostRnd_uid77_block_rsrvd_fix_q[26:0];
    assign expPostRndFR_uid82_block_rsrvd_fix_b = expPostRndFR_uid82_block_rsrvd_fix_in[26:19];

    // expPostRndF_uid83_block_rsrvd_fix(MUX,82)@16 + 1
    assign expPostRndF_uid83_block_rsrvd_fix_s = redist33_invYO_uid56_block_rsrvd_fix_b_7_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expPostRndF_uid83_block_rsrvd_fix_q <= 8'b0;
        end
        else
        begin
            unique case (expPostRndF_uid83_block_rsrvd_fix_s)
                1'b0 : expPostRndF_uid83_block_rsrvd_fix_q <= expPostRndFR_uid82_block_rsrvd_fix_b;
                1'b1 : expPostRndF_uid83_block_rsrvd_fix_q <= redist54_expX_uid10_block_rsrvd_fix_b_6_q;
                default : expPostRndF_uid83_block_rsrvd_fix_q <= 8'b0;
            endcase
        end
    end

    // redist49_expY_uid13_block_rsrvd_fix_b_17(DELAY,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_expY_uid13_block_rsrvd_fix_b_17_delay_0 <= '0;
            redist49_expY_uid13_block_rsrvd_fix_b_17_q <= '0;
        end
        else
        begin
            redist49_expY_uid13_block_rsrvd_fix_b_17_delay_0 <= $unsigned(redist48_expY_uid13_block_rsrvd_fix_b_15_q);
            redist49_expY_uid13_block_rsrvd_fix_b_17_q <= redist49_expY_uid13_block_rsrvd_fix_b_17_delay_0;
        end
    end

    // qDivProdExp_opA_uid95_block_rsrvd_fix(ADD,94)@17 + 1
    assign qDivProdExp_opA_uid95_block_rsrvd_fix_a = {1'b0, redist49_expY_uid13_block_rsrvd_fix_b_17_q};
    assign qDivProdExp_opA_uid95_block_rsrvd_fix_b = {1'b0, expPostRndF_uid83_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            qDivProdExp_opA_uid95_block_rsrvd_fix_o <= 9'b0;
        end
        else
        begin
            qDivProdExp_opA_uid95_block_rsrvd_fix_o <= $unsigned(qDivProdExp_opA_uid95_block_rsrvd_fix_a) + $unsigned(qDivProdExp_opA_uid95_block_rsrvd_fix_b);
        end
    end
    assign qDivProdExp_opA_uid95_block_rsrvd_fix_q = qDivProdExp_opA_uid95_block_rsrvd_fix_o[8:0];

    // redist24_qDivProdExp_opA_uid95_block_rsrvd_fix_q_4(DELAY,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_qDivProdExp_opA_uid95_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist24_qDivProdExp_opA_uid95_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist24_qDivProdExp_opA_uid95_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist24_qDivProdExp_opA_uid95_block_rsrvd_fix_q_4_delay_0 <= $unsigned(qDivProdExp_opA_uid95_block_rsrvd_fix_q);
            redist24_qDivProdExp_opA_uid95_block_rsrvd_fix_q_4_delay_1 <= redist24_qDivProdExp_opA_uid95_block_rsrvd_fix_q_4_delay_0;
            redist24_qDivProdExp_opA_uid95_block_rsrvd_fix_q_4_q <= redist24_qDivProdExp_opA_uid95_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // qDivProdExp_uid97_block_rsrvd_fix(SUB,96)@21
    assign qDivProdExp_uid97_block_rsrvd_fix_a = $unsigned({3'b000, redist24_qDivProdExp_opA_uid95_block_rsrvd_fix_q_4_q});
    assign qDivProdExp_uid97_block_rsrvd_fix_b = $unsigned({{3{qDivProdExp_opBs_uid96_block_rsrvd_fix_q[8]}}, qDivProdExp_opBs_uid96_block_rsrvd_fix_q});
    assign qDivProdExp_uid97_block_rsrvd_fix_o = $unsigned($signed(qDivProdExp_uid97_block_rsrvd_fix_a) - $signed(qDivProdExp_uid97_block_rsrvd_fix_b));
    assign qDivProdExp_uid97_block_rsrvd_fix_q = qDivProdExp_uid97_block_rsrvd_fix_o[10:0];

    // qDivProdLTX_opA_uid99_block_rsrvd_fix(BITSELECT,98)@21
    assign qDivProdLTX_opA_uid99_block_rsrvd_fix_in = qDivProdExp_uid97_block_rsrvd_fix_q[7:0];
    assign qDivProdLTX_opA_uid99_block_rsrvd_fix_b = qDivProdLTX_opA_uid99_block_rsrvd_fix_in[7:0];

    // redist22_qDivProdLTX_opA_uid99_block_rsrvd_fix_b_1(DELAY,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_qDivProdLTX_opA_uid99_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist22_qDivProdLTX_opA_uid99_block_rsrvd_fix_b_1_q <= $unsigned(qDivProdLTX_opA_uid99_block_rsrvd_fix_b);
        end
    end

    // qDivProdFracHigh_uid92_block_rsrvd_fix(BITSELECT,91)@19
    assign qDivProdFracHigh_uid92_block_rsrvd_fix_in = qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0_q[35:0];
    assign qDivProdFracHigh_uid92_block_rsrvd_fix_b = qDivProdFracHigh_uid92_block_rsrvd_fix_in[35:18];

    // redist26_qDivProdFracHigh_uid92_block_rsrvd_fix_b_1(DELAY,246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_qDivProdFracHigh_uid92_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist26_qDivProdFracHigh_uid92_block_rsrvd_fix_b_1_q <= $unsigned(qDivProdFracHigh_uid92_block_rsrvd_fix_b);
        end
    end

    // qDivProdFracLow_uid93_block_rsrvd_fix(BITSELECT,92)@19
    assign qDivProdFracLow_uid93_block_rsrvd_fix_in = qDivProd_uid90_block_rsrvd_fix_sums_result_add_0_0_q[34:0];
    assign qDivProdFracLow_uid93_block_rsrvd_fix_b = qDivProdFracLow_uid93_block_rsrvd_fix_in[34:17];

    // redist25_qDivProdFracLow_uid93_block_rsrvd_fix_b_1(DELAY,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_qDivProdFracLow_uid93_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist25_qDivProdFracLow_uid93_block_rsrvd_fix_b_1_q <= $unsigned(qDivProdFracLow_uid93_block_rsrvd_fix_b);
        end
    end

    // qDivProdFrac_uid94_block_rsrvd_fix(MUX,93)@20
    assign qDivProdFrac_uid94_block_rsrvd_fix_s = redist27_qDivProdNorm_uid91_block_rsrvd_fix_b_1_q;
    always @(qDivProdFrac_uid94_block_rsrvd_fix_s or redist25_qDivProdFracLow_uid93_block_rsrvd_fix_b_1_q or redist26_qDivProdFracHigh_uid92_block_rsrvd_fix_b_1_q)
    begin
        unique case (qDivProdFrac_uid94_block_rsrvd_fix_s)
            1'b0 : qDivProdFrac_uid94_block_rsrvd_fix_q = redist25_qDivProdFracLow_uid93_block_rsrvd_fix_b_1_q;
            1'b1 : qDivProdFrac_uid94_block_rsrvd_fix_q = redist26_qDivProdFracHigh_uid92_block_rsrvd_fix_b_1_q;
            default : qDivProdFrac_uid94_block_rsrvd_fix_q = 18'b0;
        endcase
    end

    // qDivProdFracWF_uid98_block_rsrvd_fix(BITSELECT,97)@20
    assign qDivProdFracWF_uid98_block_rsrvd_fix_b = qDivProdFrac_uid94_block_rsrvd_fix_q[17:1];

    // redist23_qDivProdFracWF_uid98_block_rsrvd_fix_b_2(DELAY,243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_qDivProdFracWF_uid98_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist23_qDivProdFracWF_uid98_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist23_qDivProdFracWF_uid98_block_rsrvd_fix_b_2_delay_0 <= $unsigned(qDivProdFracWF_uid98_block_rsrvd_fix_b);
            redist23_qDivProdFracWF_uid98_block_rsrvd_fix_b_2_q <= redist23_qDivProdFracWF_uid98_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // qDivProdLTX_opA_uid100_block_rsrvd_fix(BITJOIN,99)@22
    assign qDivProdLTX_opA_uid100_block_rsrvd_fix_q = {redist22_qDivProdLTX_opA_uid99_block_rsrvd_fix_b_1_q, redist23_qDivProdFracWF_uid98_block_rsrvd_fix_b_2_q};

    // qDividerProdLTX_uid102_block_rsrvd_fix(COMPARE,101)@22 + 1
    assign qDividerProdLTX_uid102_block_rsrvd_fix_a = {2'b00, qDivProdLTX_opA_uid100_block_rsrvd_fix_q};
    assign qDividerProdLTX_uid102_block_rsrvd_fix_b = {2'b00, redist21_qDivProdLTX_opB_uid101_block_rsrvd_fix_q_6_outputreg0_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            qDividerProdLTX_uid102_block_rsrvd_fix_o <= 27'b0;
        end
        else
        begin
            qDividerProdLTX_uid102_block_rsrvd_fix_o <= $unsigned(qDividerProdLTX_uid102_block_rsrvd_fix_a) - $unsigned(qDividerProdLTX_uid102_block_rsrvd_fix_b);
        end
    end
    assign qDividerProdLTX_uid102_block_rsrvd_fix_c[0] = qDividerProdLTX_uid102_block_rsrvd_fix_o[26];

    // extraUlp_uid104_block_rsrvd_fix(LOGICAL,103)@23 + 1
    assign extraUlp_uid104_block_rsrvd_fix_qi = qDividerProdLTX_uid102_block_rsrvd_fix_c & betweenFPwF_uid103_block_rsrvd_fix_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    extraUlp_uid104_block_rsrvd_fix_delay ( .xin(extraUlp_uid104_block_rsrvd_fix_qi), .xout(extraUlp_uid104_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracPostRndFT_uid105_block_rsrvd_fix(BITSELECT,104)@23
    assign fracPostRndFT_uid105_block_rsrvd_fix_b = redist30_fracPostRndF_uid81_block_rsrvd_fix_q_7_outputreg0_q[17:1];

    // redist17_fracPostRndFT_uid105_block_rsrvd_fix_b_1(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_fracPostRndFT_uid105_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist17_fracPostRndFT_uid105_block_rsrvd_fix_b_1_q <= $unsigned(fracPostRndFT_uid105_block_rsrvd_fix_b);
        end
    end

    // fracRPreExcExt_uid106_block_rsrvd_fix(ADD,105)@24
    assign fracRPreExcExt_uid106_block_rsrvd_fix_a = {1'b0, redist17_fracPostRndFT_uid105_block_rsrvd_fix_b_1_q};
    assign fracRPreExcExt_uid106_block_rsrvd_fix_b = {17'b00000000000000000, extraUlp_uid104_block_rsrvd_fix_q};
    assign fracRPreExcExt_uid106_block_rsrvd_fix_o = $unsigned(fracRPreExcExt_uid106_block_rsrvd_fix_a) + $unsigned(fracRPreExcExt_uid106_block_rsrvd_fix_b);
    assign fracRPreExcExt_uid106_block_rsrvd_fix_q = fracRPreExcExt_uid106_block_rsrvd_fix_o[17:0];

    // ovfIncRnd_uid110_block_rsrvd_fix(BITSELECT,109)@24
    assign ovfIncRnd_uid110_block_rsrvd_fix_b = $unsigned(fracRPreExcExt_uid106_block_rsrvd_fix_q[17:17]);

    // redist15_ovfIncRnd_uid110_block_rsrvd_fix_b_1(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_ovfIncRnd_uid110_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist15_ovfIncRnd_uid110_block_rsrvd_fix_b_1_q <= $unsigned(ovfIncRnd_uid110_block_rsrvd_fix_b);
        end
    end

    // redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_notEnable(LOGICAL,295)
    assign redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_nor(LOGICAL,296)
    assign redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_nor_q = ~ (redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_notEnable_q | redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_sticky_ena_q);

    // redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_last(CONSTANT,292)
    assign redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_last_q = $unsigned(4'b0100);

    // redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_cmp(LOGICAL,293)
    assign redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_cmp_b = {1'b0, redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_q};
    assign redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_cmp_q = $unsigned(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_last_q == redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_cmp_b ? 1'b1 : 1'b0);

    // redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_cmpReg(REG,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_cmpReg_q <= $unsigned(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_cmp_q);
        end
    end

    // redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_sticky_ena(REG,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_nor_q == 1'b1)
        begin
            redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_sticky_ena_q <= $unsigned(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_cmpReg_q);
        end
    end

    // redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_enaAnd(LOGICAL,298)
    assign redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_enaAnd_q = redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_sticky_ena_q & VCC_q;

    // redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt(COUNTER,290)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_i <= 3'd0;
            redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_i == 3'd4)
            begin
                redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_eq <= 1'b0;
            end
            if (redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_eq == 1'b1)
            begin
                redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_i <= $unsigned(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_i <= $unsigned(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_q = redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_i[2:0];

    // redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_inputreg0(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_inputreg0_q <= '0;
        end
        else
        begin
            redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_inputreg0_q <= $unsigned(expPostRndFR_uid82_block_rsrvd_fix_b);
        end
    end

    // redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_wraddr(REG,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_wraddr_q <= $unsigned(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_q);
        end
    end

    // redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem(DUALMEM,289)
    assign redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_ia = $unsigned(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_inputreg0_q);
    assign redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_aa = redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_wraddr_q;
    assign redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_ab = redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_rdcnt_q;
    assign redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(8),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_dmem (
        .clocken1(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_reset0),
        .clock1(clock),
        .address_a(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_aa),
        .data_a(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_ab),
        .q_b(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_iq),
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
    assign redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_q = redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_iq[7:0];

    // redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_outputreg0(DELAY,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_outputreg0_q <= '0;
        end
        else
        begin
            redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_outputreg0_q <= $unsigned(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_mem_q);
        end
    end

    // expFracPostRndInc_uid111_block_rsrvd_fix(ADD,110)@25
    assign expFracPostRndInc_uid111_block_rsrvd_fix_a = {1'b0, redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_outputreg0_q};
    assign expFracPostRndInc_uid111_block_rsrvd_fix_b = {8'b00000000, redist15_ovfIncRnd_uid110_block_rsrvd_fix_b_1_q};
    assign expFracPostRndInc_uid111_block_rsrvd_fix_o = $unsigned(expFracPostRndInc_uid111_block_rsrvd_fix_a) + $unsigned(expFracPostRndInc_uid111_block_rsrvd_fix_b);
    assign expFracPostRndInc_uid111_block_rsrvd_fix_q = expFracPostRndInc_uid111_block_rsrvd_fix_o[8:0];

    // expFracPostRndR_uid112_block_rsrvd_fix(BITSELECT,111)@25
    assign expFracPostRndR_uid112_block_rsrvd_fix_in = expFracPostRndInc_uid111_block_rsrvd_fix_q[7:0];
    assign expFracPostRndR_uid112_block_rsrvd_fix_b = expFracPostRndR_uid112_block_rsrvd_fix_in[7:0];

    // redist14_expFracPostRndR_uid112_block_rsrvd_fix_b_1(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_expFracPostRndR_uid112_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist14_expFracPostRndR_uid112_block_rsrvd_fix_b_1_q <= $unsigned(expFracPostRndR_uid112_block_rsrvd_fix_b);
        end
    end

    // redist29_expPostRndFR_uid82_block_rsrvd_fix_b_10(DELAY,249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_expPostRndFR_uid82_block_rsrvd_fix_b_10_q <= '0;
        end
        else
        begin
            redist29_expPostRndFR_uid82_block_rsrvd_fix_b_10_q <= $unsigned(redist28_expPostRndFR_uid82_block_rsrvd_fix_b_9_outputreg0_q);
        end
    end

    // redist19_extraUlp_uid104_block_rsrvd_fix_q_2(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_extraUlp_uid104_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist19_extraUlp_uid104_block_rsrvd_fix_q_2_q <= $unsigned(extraUlp_uid104_block_rsrvd_fix_q);
        end
    end

    // redist20_extraUlp_uid104_block_rsrvd_fix_q_3(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_extraUlp_uid104_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist20_extraUlp_uid104_block_rsrvd_fix_q_3_q <= $unsigned(redist19_extraUlp_uid104_block_rsrvd_fix_q_2_q);
        end
    end

    // expRPreExc_uid113_block_rsrvd_fix(MUX,112)@26
    assign expRPreExc_uid113_block_rsrvd_fix_s = redist20_extraUlp_uid104_block_rsrvd_fix_q_3_q;
    always @(expRPreExc_uid113_block_rsrvd_fix_s or redist29_expPostRndFR_uid82_block_rsrvd_fix_b_10_q or redist14_expFracPostRndR_uid112_block_rsrvd_fix_b_1_q)
    begin
        unique case (expRPreExc_uid113_block_rsrvd_fix_s)
            1'b0 : expRPreExc_uid113_block_rsrvd_fix_q = redist29_expPostRndFR_uid82_block_rsrvd_fix_b_10_q;
            1'b1 : expRPreExc_uid113_block_rsrvd_fix_q = redist14_expFracPostRndR_uid112_block_rsrvd_fix_b_1_q;
            default : expRPreExc_uid113_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // invExpXIsMax_uid44_block_rsrvd_fix(LOGICAL,43)@16
    assign invExpXIsMax_uid44_block_rsrvd_fix_q = ~ (expXIsMax_uid39_block_rsrvd_fix_q);

    // InvExpXIsZero_uid45_block_rsrvd_fix(LOGICAL,44)@16
    assign InvExpXIsZero_uid45_block_rsrvd_fix_q = ~ (excZ_y_uid38_block_rsrvd_fix_q);

    // excR_y_uid46_block_rsrvd_fix(LOGICAL,45)@16 + 1
    assign excR_y_uid46_block_rsrvd_fix_qi = InvExpXIsZero_uid45_block_rsrvd_fix_q & invExpXIsMax_uid44_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excR_y_uid46_block_rsrvd_fix_delay ( .xin(excR_y_uid46_block_rsrvd_fix_qi), .xout(excR_y_uid46_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excXIYR_uid128_block_rsrvd_fix(LOGICAL,127)@17
    assign excXIYR_uid128_block_rsrvd_fix_q = excI_x_uid28_block_rsrvd_fix_q & excR_y_uid46_block_rsrvd_fix_q;

    // excXIYZ_uid127_block_rsrvd_fix(LOGICAL,126)@17
    assign excXIYZ_uid127_block_rsrvd_fix_q = excI_x_uid28_block_rsrvd_fix_q & redist40_excZ_y_uid38_block_rsrvd_fix_q_2_q;

    // expRExt_uid115_block_rsrvd_fix(BITSELECT,114)@16
    assign expRExt_uid115_block_rsrvd_fix_b = $unsigned(expFracPostRnd_uid77_block_rsrvd_fix_q[29:19]);

    // expOvf_uid119_block_rsrvd_fix(COMPARE,118)@16 + 1
    assign expOvf_uid119_block_rsrvd_fix_a = $unsigned({{2{expRExt_uid115_block_rsrvd_fix_b[10]}}, expRExt_uid115_block_rsrvd_fix_b});
    assign expOvf_uid119_block_rsrvd_fix_b = $unsigned({5'b00000, cstAllOWE_uid19_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expOvf_uid119_block_rsrvd_fix_o <= 13'b0;
        end
        else
        begin
            expOvf_uid119_block_rsrvd_fix_o <= $unsigned($signed(expOvf_uid119_block_rsrvd_fix_a) - $signed(expOvf_uid119_block_rsrvd_fix_b));
        end
    end
    assign expOvf_uid119_block_rsrvd_fix_n[0] = ~ (expOvf_uid119_block_rsrvd_fix_o[12]);

    // invExpXIsMax_uid30_block_rsrvd_fix(LOGICAL,29)@16
    assign invExpXIsMax_uid30_block_rsrvd_fix_q = ~ (expXIsMax_uid25_block_rsrvd_fix_q);

    // InvExpXIsZero_uid31_block_rsrvd_fix(LOGICAL,30)@16
    assign InvExpXIsZero_uid31_block_rsrvd_fix_q = ~ (excZ_x_uid24_block_rsrvd_fix_q);

    // excR_x_uid32_block_rsrvd_fix(LOGICAL,31)@16
    assign excR_x_uid32_block_rsrvd_fix_q = InvExpXIsZero_uid31_block_rsrvd_fix_q & invExpXIsMax_uid30_block_rsrvd_fix_q;

    // redist41_excR_x_uid32_block_rsrvd_fix_q_1(DELAY,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_excR_x_uid32_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist41_excR_x_uid32_block_rsrvd_fix_q_1_q <= $unsigned(excR_x_uid32_block_rsrvd_fix_q);
        end
    end

    // excXRYROvf_uid126_block_rsrvd_fix(LOGICAL,125)@17
    assign excXRYROvf_uid126_block_rsrvd_fix_q = redist41_excR_x_uid32_block_rsrvd_fix_q_1_q & excR_y_uid46_block_rsrvd_fix_q & expOvf_uid119_block_rsrvd_fix_n;

    // excXRYZ_uid125_block_rsrvd_fix(LOGICAL,124)@17
    assign excXRYZ_uid125_block_rsrvd_fix_q = redist41_excR_x_uid32_block_rsrvd_fix_q_1_q & redist40_excZ_y_uid38_block_rsrvd_fix_q_2_q;

    // excRInf_uid129_block_rsrvd_fix(LOGICAL,128)@17 + 1
    assign excRInf_uid129_block_rsrvd_fix_qi = excXRYZ_uid125_block_rsrvd_fix_q | excXRYROvf_uid126_block_rsrvd_fix_q | excXIYZ_uid127_block_rsrvd_fix_q | excXIYR_uid128_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRInf_uid129_block_rsrvd_fix_delay ( .xin(excRInf_uid129_block_rsrvd_fix_qi), .xout(excRInf_uid129_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // xRegOrZero_uid122_block_rsrvd_fix(LOGICAL,121)@16 + 1
    assign xRegOrZero_uid122_block_rsrvd_fix_qi = excR_x_uid32_block_rsrvd_fix_q | excZ_x_uid24_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    xRegOrZero_uid122_block_rsrvd_fix_delay ( .xin(xRegOrZero_uid122_block_rsrvd_fix_qi), .xout(xRegOrZero_uid122_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // regOrZeroOverInf_uid123_block_rsrvd_fix(LOGICAL,122)@17
    assign regOrZeroOverInf_uid123_block_rsrvd_fix_q = xRegOrZero_uid122_block_rsrvd_fix_q & excI_y_uid42_block_rsrvd_fix_q;

    // expUdf_uid116_block_rsrvd_fix(COMPARE,115)@16 + 1
    assign expUdf_uid116_block_rsrvd_fix_a = $unsigned({12'b000000000000, GND_q});
    assign expUdf_uid116_block_rsrvd_fix_b = $unsigned({{2{expRExt_uid115_block_rsrvd_fix_b[10]}}, expRExt_uid115_block_rsrvd_fix_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expUdf_uid116_block_rsrvd_fix_o <= 13'b0;
        end
        else
        begin
            expUdf_uid116_block_rsrvd_fix_o <= $unsigned($signed(expUdf_uid116_block_rsrvd_fix_a) - $signed(expUdf_uid116_block_rsrvd_fix_b));
        end
    end
    assign expUdf_uid116_block_rsrvd_fix_n[0] = ~ (expUdf_uid116_block_rsrvd_fix_o[12]);

    // regOverRegWithUf_uid121_block_rsrvd_fix(LOGICAL,120)@17
    assign regOverRegWithUf_uid121_block_rsrvd_fix_q = expUdf_uid116_block_rsrvd_fix_n & redist41_excR_x_uid32_block_rsrvd_fix_q_1_q & excR_y_uid46_block_rsrvd_fix_q;

    // zeroOverReg_uid120_block_rsrvd_fix(LOGICAL,119)@17
    assign zeroOverReg_uid120_block_rsrvd_fix_q = redist42_excZ_x_uid24_block_rsrvd_fix_q_2_q & excR_y_uid46_block_rsrvd_fix_q;

    // excRZero_uid124_block_rsrvd_fix(LOGICAL,123)@17 + 1
    assign excRZero_uid124_block_rsrvd_fix_qi = zeroOverReg_uid120_block_rsrvd_fix_q | regOverRegWithUf_uid121_block_rsrvd_fix_q | regOrZeroOverInf_uid123_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRZero_uid124_block_rsrvd_fix_delay ( .xin(excRZero_uid124_block_rsrvd_fix_qi), .xout(excRZero_uid124_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // concExc_uid133_block_rsrvd_fix(BITJOIN,132)@18
    assign concExc_uid133_block_rsrvd_fix_q = {excRNaN_uid132_block_rsrvd_fix_q, excRInf_uid129_block_rsrvd_fix_q, excRZero_uid124_block_rsrvd_fix_q};

    // excREnc_uid134_block_rsrvd_fix(LOOKUP,133)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            excREnc_uid134_block_rsrvd_fix_q <= $unsigned(2'b01);
        end
        else
        begin
            unique case (concExc_uid133_block_rsrvd_fix_q)
                3'b000 : excREnc_uid134_block_rsrvd_fix_q <= 2'b01;
                3'b001 : excREnc_uid134_block_rsrvd_fix_q <= 2'b00;
                3'b010 : excREnc_uid134_block_rsrvd_fix_q <= 2'b10;
                3'b011 : excREnc_uid134_block_rsrvd_fix_q <= 2'b00;
                3'b100 : excREnc_uid134_block_rsrvd_fix_q <= 2'b11;
                3'b101 : excREnc_uid134_block_rsrvd_fix_q <= 2'b00;
                3'b110 : excREnc_uid134_block_rsrvd_fix_q <= 2'b00;
                3'b111 : excREnc_uid134_block_rsrvd_fix_q <= 2'b00;
                default : begin
                              // unreachable
                              excREnc_uid134_block_rsrvd_fix_q <= 2'bxx;
                          end
            endcase
        end
    end

    // redist13_excREnc_uid134_block_rsrvd_fix_q_8(DELAY,233)
    dspba_delay_ver #( .width(2), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_excREnc_uid134_block_rsrvd_fix_q_8 ( .xin(excREnc_uid134_block_rsrvd_fix_q), .xout(redist13_excREnc_uid134_block_rsrvd_fix_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expRPostExc_uid142_block_rsrvd_fix(MUX,141)@26
    assign expRPostExc_uid142_block_rsrvd_fix_s = redist13_excREnc_uid134_block_rsrvd_fix_q_8_q;
    always @(expRPostExc_uid142_block_rsrvd_fix_s or cstAllZWE_uid21_block_rsrvd_fix_q or expRPreExc_uid113_block_rsrvd_fix_q or cstAllOWE_uid19_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid142_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid142_block_rsrvd_fix_q = cstAllZWE_uid21_block_rsrvd_fix_q;
            2'b01 : expRPostExc_uid142_block_rsrvd_fix_q = expRPreExc_uid113_block_rsrvd_fix_q;
            2'b10 : expRPostExc_uid142_block_rsrvd_fix_q = cstAllOWE_uid19_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid142_block_rsrvd_fix_q = cstAllOWE_uid19_block_rsrvd_fix_q;
            default : expRPostExc_uid142_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // oneFracRPostExc2_uid135_block_rsrvd_fix(CONSTANT,134)
    assign oneFracRPostExc2_uid135_block_rsrvd_fix_q = $unsigned(17'b00000000000000001);

    // fracPostRndFPostUlp_uid107_block_rsrvd_fix(BITSELECT,106)@24
    assign fracPostRndFPostUlp_uid107_block_rsrvd_fix_in = fracRPreExcExt_uid106_block_rsrvd_fix_q[16:0];
    assign fracPostRndFPostUlp_uid107_block_rsrvd_fix_b = fracPostRndFPostUlp_uid107_block_rsrvd_fix_in[16:0];

    // redist16_fracPostRndFPostUlp_uid107_block_rsrvd_fix_b_1(DELAY,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_fracPostRndFPostUlp_uid107_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist16_fracPostRndFPostUlp_uid107_block_rsrvd_fix_b_1_q <= $unsigned(fracPostRndFPostUlp_uid107_block_rsrvd_fix_b);
        end
    end

    // redist18_fracPostRndFT_uid105_block_rsrvd_fix_b_2(DELAY,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_fracPostRndFT_uid105_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist18_fracPostRndFT_uid105_block_rsrvd_fix_b_2_q <= $unsigned(redist17_fracPostRndFT_uid105_block_rsrvd_fix_b_1_q);
        end
    end

    // fracRPreExc_uid108_block_rsrvd_fix(MUX,107)@25 + 1
    assign fracRPreExc_uid108_block_rsrvd_fix_s = redist19_extraUlp_uid104_block_rsrvd_fix_q_2_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            fracRPreExc_uid108_block_rsrvd_fix_q <= 17'b0;
        end
        else
        begin
            unique case (fracRPreExc_uid108_block_rsrvd_fix_s)
                1'b0 : fracRPreExc_uid108_block_rsrvd_fix_q <= redist18_fracPostRndFT_uid105_block_rsrvd_fix_b_2_q;
                1'b1 : fracRPreExc_uid108_block_rsrvd_fix_q <= redist16_fracPostRndFPostUlp_uid107_block_rsrvd_fix_b_1_q;
                default : fracRPreExc_uid108_block_rsrvd_fix_q <= 17'b0;
            endcase
        end
    end

    // fracRPostExc_uid138_block_rsrvd_fix(MUX,137)@26
    assign fracRPostExc_uid138_block_rsrvd_fix_s = redist13_excREnc_uid134_block_rsrvd_fix_q_8_q;
    always @(fracRPostExc_uid138_block_rsrvd_fix_s or paddingY_uid16_block_rsrvd_fix_q or fracRPreExc_uid108_block_rsrvd_fix_q or oneFracRPostExc2_uid135_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid138_block_rsrvd_fix_s)
            2'b00 : fracRPostExc_uid138_block_rsrvd_fix_q = paddingY_uid16_block_rsrvd_fix_q;
            2'b01 : fracRPostExc_uid138_block_rsrvd_fix_q = fracRPreExc_uid108_block_rsrvd_fix_q;
            2'b10 : fracRPostExc_uid138_block_rsrvd_fix_q = paddingY_uid16_block_rsrvd_fix_q;
            2'b11 : fracRPostExc_uid138_block_rsrvd_fix_q = oneFracRPostExc2_uid135_block_rsrvd_fix_q;
            default : fracRPostExc_uid138_block_rsrvd_fix_q = 17'b0;
        endcase
    end

    // divR_uid145_block_rsrvd_fix(BITJOIN,144)@26
    assign divR_uid145_block_rsrvd_fix_q = {redist12_sRPostExc_uid144_block_rsrvd_fix_q_8_q, expRPostExc_uid142_block_rsrvd_fix_q, fracRPostExc_uid138_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,5)@26
    assign out_primWireOut = divR_uid145_block_rsrvd_fix_q;

endmodule
