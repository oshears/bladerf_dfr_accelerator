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

// SystemVerilog created from flt_i_llvm_fpga_vpfp_pow_i26_i26_i26_result_i_i141_dfr0_powBlock_typeSFloatIEEE_17_8_typeSFloatIEEE_17_8_typeSFloatIEEE_17_8_390ox9vt92oh21he3hk4dqgd3cj9dl9pi063065064663c62i60o64o62u60161763762d61j64pc1864860ei3q60w62wi5962f64fc0uq5ux5gv8yll5gvbyxk5id06uq0cp0ju20cp0jo00uq0dpjiz
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:30:00 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i2600000ju20cp0jo00uq0dpjiz (
    input wire [25:0] in_0,
    input wire [25:0] in_1,
    output wire [25:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [16:0] cstAllZWF_uid7_block_rsrvd_fix_q;
    wire [7:0] cstBias_uid8_block_rsrvd_fix_q;
    wire [7:0] cstBiasMO_uid9_block_rsrvd_fix_q;
    wire [7:0] cstBiasPWF_uid12_block_rsrvd_fix_q;
    wire [7:0] cstAllOWE_uid13_block_rsrvd_fix_q;
    wire [7:0] cstAllZWE_uid15_block_rsrvd_fix_q;
    wire [7:0] exp_x_uid16_block_rsrvd_fix_b;
    wire [16:0] frac_x_uid17_block_rsrvd_fix_b;
    wire [0:0] excZ_x_uid18_block_rsrvd_fix_qi;
    reg [0:0] excZ_x_uid18_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid19_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid19_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid20_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid20_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid21_block_rsrvd_fix_q;
    wire [0:0] excI_x_uid22_block_rsrvd_fix_qi;
    reg [0:0] excI_x_uid22_block_rsrvd_fix_q;
    wire [0:0] excN_x_uid23_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid24_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid25_block_rsrvd_fix_q;
    wire [0:0] excR_x_uid26_block_rsrvd_fix_q;
    wire [7:0] exp_y_uid30_block_rsrvd_fix_b;
    wire [16:0] frac_y_uid31_block_rsrvd_fix_b;
    wire [0:0] excZ_y_uid32_block_rsrvd_fix_qi;
    reg [0:0] excZ_y_uid32_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid33_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid33_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid34_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid34_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid35_block_rsrvd_fix_q;
    wire [0:0] excI_y_uid36_block_rsrvd_fix_qi;
    reg [0:0] excI_y_uid36_block_rsrvd_fix_q;
    wire [0:0] excN_y_uid37_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid38_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid39_block_rsrvd_fix_q;
    wire [0:0] excR_y_uid40_block_rsrvd_fix_qi;
    reg [0:0] excR_y_uid40_block_rsrvd_fix_q;
    wire [0:0] signX_uid41_block_rsrvd_fix_b;
    wire [0:0] signY_uid44_block_rsrvd_fix_b;
    wire [8:0] expYMBias_uid47_block_rsrvd_fix_a;
    wire [8:0] expYMBias_uid47_block_rsrvd_fix_b;
    logic [8:0] expYMBias_uid47_block_rsrvd_fix_o;
    wire [8:0] expYMBias_uid47_block_rsrvd_fix_q;
    wire [9:0] expIsGTEWF_uid48_block_rsrvd_fix_a;
    wire [9:0] expIsGTEWF_uid48_block_rsrvd_fix_b;
    logic [9:0] expIsGTEWF_uid48_block_rsrvd_fix_o;
    wire [0:0] expIsGTEWF_uid48_block_rsrvd_fix_n;
    wire [9:0] expIsGTWF_uid49_block_rsrvd_fix_a;
    wire [9:0] expIsGTWF_uid49_block_rsrvd_fix_b;
    logic [9:0] expIsGTWF_uid49_block_rsrvd_fix_o;
    wire [0:0] expIsGTWF_uid49_block_rsrvd_fix_c;
    wire [9:0] expIsGTZ_uid50_block_rsrvd_fix_a;
    wire [9:0] expIsGTZ_uid50_block_rsrvd_fix_b;
    logic [9:0] expIsGTZ_uid50_block_rsrvd_fix_o;
    wire [0:0] expIsGTZ_uid50_block_rsrvd_fix_n;
    wire [4:0] expYMBiasRed_uid51_block_rsrvd_fix_in;
    wire [4:0] expYMBiasRed_uid51_block_rsrvd_fix_b;
    reg [16:0] maskTable_uid52_block_rsrvd_fix_q;
    wire [16:0] fracYPostMask_uid55_block_rsrvd_fix_qi;
    reg [16:0] fracYPostMask_uid55_block_rsrvd_fix_q;
    wire [18:0] yHasSomeFracBits_uid56_block_rsrvd_fix_a;
    wire [18:0] yHasSomeFracBits_uid56_block_rsrvd_fix_b;
    logic [18:0] yHasSomeFracBits_uid56_block_rsrvd_fix_o;
    wire [0:0] yHasSomeFracBits_uid56_block_rsrvd_fix_c;
    wire [0:0] invYHasSomeFracBits_uid57_block_rsrvd_fix_q;
    wire [0:0] expIsGTZAndNoFracBits_uid58_block_rsrvd_fix_q;
    wire [0:0] yIsInt_uid59_block_rsrvd_fix_qi;
    reg [0:0] yIsInt_uid59_block_rsrvd_fix_q;
    wire [17:0] oFracY_uid60_block_rsrvd_fix_q;
    reg [17:0] maskTableParity_uid61_block_rsrvd_fix_q;
    wire [17:0] oFracYPostMask_uid64_block_rsrvd_fix_qi;
    reg [17:0] oFracYPostMask_uid64_block_rsrvd_fix_q;
    wire [19:0] intYHasOddItPart_uid65_block_rsrvd_fix_a;
    wire [19:0] intYHasOddItPart_uid65_block_rsrvd_fix_b;
    logic [19:0] intYHasOddItPart_uid65_block_rsrvd_fix_o;
    wire [0:0] intYHasOddItPart_uid65_block_rsrvd_fix_c;
    wire [0:0] notZeroOrBigEven_uid66_block_rsrvd_fix_q;
    wire [0:0] invNotZeroOrBigEven_uid67_block_rsrvd_fix_q;
    wire [0:0] yIsOddInt_uid68_block_rsrvd_fix_qi;
    reg [0:0] yIsOddInt_uid68_block_rsrvd_fix_q;
    wire [8:0] e_uid69_block_rsrvd_fix_a;
    wire [8:0] e_uid69_block_rsrvd_fix_b;
    logic [8:0] e_uid69_block_rsrvd_fix_o;
    wire [8:0] e_uid69_block_rsrvd_fix_q;
    wire [0:0] caseLog_uid71_block_rsrvd_fix_qi;
    reg [0:0] caseLog_uid71_block_rsrvd_fix_q;
    wire [17:0] addrFull_uid72_block_rsrvd_fix_q;
    wire [9:0] yAddr_uid74_block_rsrvd_fix_b;
    wire [7:0] zPPolyEvalLog_uid75_block_rsrvd_fix_in;
    wire [7:0] zPPolyEvalLog_uid75_block_rsrvd_fix_b;
    wire [35:0] peORNatLog_uid77_block_rsrvd_fix_in;
    wire [28:0] peORNatLog_uid77_block_rsrvd_fix_b;
    wire [17:0] aPostPad_uid79_block_rsrvd_fix_q;
    wire [18:0] oMzLog_uid80_block_rsrvd_fix_a;
    wire [18:0] oMzLog_uid80_block_rsrvd_fix_b;
    logic [18:0] oMzLog_uid80_block_rsrvd_fix_o;
    wire [18:0] oMzLog_uid80_block_rsrvd_fix_q;
    wire [1:0] z2_uid81_block_rsrvd_fix_q;
    wire [18:0] sEzLog_uid82_block_rsrvd_fix_q;
    wire [0:0] multTermOneLog_uid84_block_rsrvd_fix_s;
    reg [18:0] multTermOneLog_uid84_block_rsrvd_fix_q;
    wire [38:0] wideZeroLogAdd_uid86_block_rsrvd_fix_q;
    wire [0:0] addTermOneLog_uid87_block_rsrvd_fix_s;
    reg [38:0] addTermOneLog_uid87_block_rsrvd_fix_q;
    wire [13:0] lowRangeB_uid88_block_rsrvd_fix_in;
    wire [13:0] lowRangeB_uid88_block_rsrvd_fix_b;
    wire [47:0] highBBits_uid89_block_rsrvd_fix_in;
    wire [33:0] highBBits_uid89_block_rsrvd_fix_b;
    wire [39:0] finalSumLogsumAHighB_uid90_block_rsrvd_fix_a;
    wire [39:0] finalSumLogsumAHighB_uid90_block_rsrvd_fix_b;
    logic [39:0] finalSumLogsumAHighB_uid90_block_rsrvd_fix_o;
    wire [39:0] finalSumLogsumAHighB_uid90_block_rsrvd_fix_q;
    wire [53:0] finalSumLog_uid91_block_rsrvd_fix_q;
    wire [0:0] finalSumSignLog_uid92_block_rsrvd_fix_b;
    wire [53:0] finalSumOneCompLog_uid94_block_rsrvd_fix_b;
    wire [53:0] finalSumOneCompLog_uid94_block_rsrvd_fix_qi;
    reg [53:0] finalSumOneCompLog_uid94_block_rsrvd_fix_q;
    wire [0:0] notCaseLog_uid98_block_rsrvd_fix_q;
    wire [0:0] signSignLog_uid99_block_rsrvd_fix_q;
    wire [0:0] signRLog0_uid100_block_rsrvd_fix_qi;
    reg [0:0] signRLog0_uid100_block_rsrvd_fix_q;
    wire [0:0] signRLog_uid101_block_rsrvd_fix_qi;
    reg [0:0] signRLog_uid101_block_rsrvd_fix_q;
    wire [8:0] cstMSBFinalSumPBias_uid102_block_rsrvd_fix_q;
    wire [9:0] expRExtLog_uid103_block_rsrvd_fix_a;
    wire [9:0] expRExtLog_uid103_block_rsrvd_fix_b;
    logic [9:0] expRExtLog_uid103_block_rsrvd_fix_o;
    wire [9:0] expRExtLog_uid103_block_rsrvd_fix_q;
    wire [53:0] fracRPreRndLog_uid104_block_rsrvd_fix_in;
    wire [27:0] fracRPreRndLog_uid104_block_rsrvd_fix_b;
    wire [37:0] expFracConc_uid105_block_rsrvd_fix_q;
    wire [38:0] expFracPostRndLog_uid107_block_rsrvd_fix_a;
    wire [38:0] expFracPostRndLog_uid107_block_rsrvd_fix_b;
    logic [38:0] expFracPostRndLog_uid107_block_rsrvd_fix_o;
    wire [38:0] expFracPostRndLog_uid107_block_rsrvd_fix_q;
    wire [27:0] fracRLog_uid108_block_rsrvd_fix_in;
    wire [26:0] fracRLog_uid108_block_rsrvd_fix_b;
    wire [36:0] expRLog_uid109_block_rsrvd_fix_in;
    wire [8:0] expRLog_uid109_block_rsrvd_fix_b;
    wire [27:0] oFracLog_uid110_block_rsrvd_fix_q;
    wire [45:0] prodNormBit_uid112_block_rsrvd_fix_in;
    wire [0:0] prodNormBit_uid112_block_rsrvd_fix_b;
    wire [44:0] normProdYLogXHigh_uid114_block_rsrvd_fix_in;
    wire [26:0] normProdYLogXHigh_uid114_block_rsrvd_fix_b;
    wire [43:0] normProdYLogXLow_uid115_block_rsrvd_fix_in;
    wire [26:0] normProdYLogXLow_uid115_block_rsrvd_fix_b;
    wire [0:0] normProdYLogX_uid116_block_rsrvd_fix_s;
    reg [26:0] normProdYLogX_uid116_block_rsrvd_fix_q;
    wire [27:0] oFracProd_uid117_block_rsrvd_fix_q;
    wire [10:0] expProdPhase1_uid118_block_rsrvd_fix_a;
    wire [10:0] expProdPhase1_uid118_block_rsrvd_fix_b;
    logic [10:0] expProdPhase1_uid118_block_rsrvd_fix_o;
    wire [9:0] expProdPhase1_uid118_block_rsrvd_fix_q;
    wire [11:0] expProdPhase2_uid119_block_rsrvd_fix_a;
    wire [11:0] expProdPhase2_uid119_block_rsrvd_fix_b;
    logic [11:0] expProdPhase2_uid119_block_rsrvd_fix_o;
    wire [10:0] expProdPhase2_uid119_block_rsrvd_fix_q;
    wire [12:0] expProd_uid120_block_rsrvd_fix_a;
    wire [12:0] expProd_uid120_block_rsrvd_fix_b;
    logic [12:0] expProd_uid120_block_rsrvd_fix_o;
    wire [11:0] expProd_uid120_block_rsrvd_fix_q;
    wire [0:0] signProd_uid121_block_rsrvd_fix_q;
    wire [8:0] cstZeroWEP1_uid123_block_rsrvd_fix_q;
    wire [7:0] cstBiasPWE_uid124_block_rsrvd_fix_q;
    wire [5:0] cstBiasPWE_uid125_block_rsrvd_fix_q;
    wire [28:0] zoFracQ_uid126_block_rsrvd_fix_q;
    wire [28:0] onesCmpFxpInQ_uid127_block_rsrvd_fix_b;
    wire [28:0] onesCmpFxpInQ_uid127_block_rsrvd_fix_qi;
    reg [28:0] onesCmpFxpInQ_uid127_block_rsrvd_fix_q;
    wire [29:0] fxpInExtQ_uid128_block_rsrvd_fix_a;
    wire [29:0] fxpInExtQ_uid128_block_rsrvd_fix_b;
    logic [29:0] fxpInExtQ_uid128_block_rsrvd_fix_o;
    wire [29:0] fxpInExtQ_uid128_block_rsrvd_fix_q;
    wire [28:0] fxpInQPreConstMult_uid129_block_rsrvd_fix_in;
    wire [28:0] fxpInQPreConstMult_uid129_block_rsrvd_fix_b;
    wire [40:0] oFracXZwE_uid132_block_rsrvd_fix_q;
    wire [13:0] shiftValuePreSatExp_uid134_block_rsrvd_fix_a;
    wire [13:0] shiftValuePreSatExp_uid134_block_rsrvd_fix_b;
    logic [13:0] shiftValuePreSatExp_uid134_block_rsrvd_fix_o;
    wire [12:0] shiftValuePreSatExp_uid134_block_rsrvd_fix_q;
    wire [0:0] expOvfInitialExp_uid135_block_rsrvd_fix_b;
    wire [14:0] shiftUdfExp_uid136_block_rsrvd_fix_a;
    wire [14:0] shiftUdfExp_uid136_block_rsrvd_fix_b;
    logic [14:0] shiftUdfExp_uid136_block_rsrvd_fix_o;
    wire [0:0] shiftUdfExp_uid136_block_rsrvd_fix_n;
    wire [5:0] shiftValuePreSatRedExp_uid137_block_rsrvd_fix_in;
    wire [5:0] shiftValuePreSatRedExp_uid137_block_rsrvd_fix_b;
    wire [0:0] shiftValExp_uid138_block_rsrvd_fix_s;
    reg [5:0] shiftValExp_uid138_block_rsrvd_fix_q;
    wire [10:0] ePreRndExp_uid141_block_rsrvd_fix_b;
    wire [37:0] oFracQZwE_uid144_block_rsrvd_fix_q;
    wire [37:0] onesCmpFxpInQ2_uid145_block_rsrvd_fix_b;
    wire [37:0] onesCmpFxpInQ2_uid145_block_rsrvd_fix_qi;
    reg [37:0] onesCmpFxpInQ2_uid145_block_rsrvd_fix_q;
    wire [38:0] fxpInExtQ2_uid146_block_rsrvd_fix_a;
    wire [38:0] fxpInExtQ2_uid146_block_rsrvd_fix_b;
    logic [38:0] fxpInExtQ2_uid146_block_rsrvd_fix_o;
    wire [38:0] fxpInExtQ2_uid146_block_rsrvd_fix_q;
    wire [37:0] fxpInPreAlignQ2_uid147_block_rsrvd_fix_in;
    wire [37:0] fxpInPreAlignQ2_uid147_block_rsrvd_fix_b;
    wire [38:0] aPostPad_uid155_block_rsrvd_fix_q;
    wire [40:0] yExtExp_uid156_block_rsrvd_fix_a;
    wire [40:0] yExtExp_uid156_block_rsrvd_fix_b;
    logic [40:0] yExtExp_uid156_block_rsrvd_fix_o;
    wire [40:0] yExtExp_uid156_block_rsrvd_fix_q;
    wire [0:0] yExtNeg_uid157_block_rsrvd_fix_b;
    wire [27:0] zY_uid158_block_rsrvd_fix_q;
    wire [28:0] yRed_uid159_block_rsrvd_fix_in;
    wire [27:0] yRed_uid159_block_rsrvd_fix_b;
    wire [0:0] yRedPostMux_uid160_block_rsrvd_fix_s;
    reg [27:0] yRedPostMux_uid160_block_rsrvd_fix_q;
    wire [40:0] peORExp_uid165_block_rsrvd_fix_in;
    wire [17:0] peORExp_uid165_block_rsrvd_fix_b;
    wire [41:0] peORExpInc_uid166_block_rsrvd_fix_in;
    wire [0:0] peORExpInc_uid166_block_rsrvd_fix_b;
    wire [12:0] expRPostBiasPreExc0_uid167_block_rsrvd_fix_a;
    wire [12:0] expRPostBiasPreExc0_uid167_block_rsrvd_fix_b;
    logic [12:0] expRPostBiasPreExc0_uid167_block_rsrvd_fix_o;
    wire [11:0] expRPostBiasPreExc0_uid167_block_rsrvd_fix_q;
    wire [13:0] expRPostBiasPreExc_uid168_block_rsrvd_fix_a;
    wire [13:0] expRPostBiasPreExc_uid168_block_rsrvd_fix_b;
    logic [13:0] expRPostBiasPreExc_uid168_block_rsrvd_fix_o;
    wire [12:0] expRPostBiasPreExc_uid168_block_rsrvd_fix_q;
    wire [16:0] fracR_uid169_block_rsrvd_fix_in;
    wire [16:0] fracR_uid169_block_rsrvd_fix_b;
    wire [7:0] expR_uid170_block_rsrvd_fix_in;
    wire [7:0] expR_uid170_block_rsrvd_fix_b;
    wire [14:0] expUdf_uid171_block_rsrvd_fix_a;
    wire [14:0] expUdf_uid171_block_rsrvd_fix_b;
    logic [14:0] expUdf_uid171_block_rsrvd_fix_o;
    wire [0:0] expUdf_uid171_block_rsrvd_fix_n;
    wire [14:0] expOvf_uid173_block_rsrvd_fix_a;
    wire [14:0] expOvf_uid173_block_rsrvd_fix_b;
    logic [14:0] expOvf_uid173_block_rsrvd_fix_o;
    wire [0:0] expOvf_uid173_block_rsrvd_fix_n;
    wire [24:0] cstOneFPExpFrac_uid174_block_rsrvd_fix_q;
    wire [24:0] expFracX_uid177_block_rsrvd_fix_q;
    wire [26:0] xLTOneAbs_uid178_block_rsrvd_fix_a;
    wire [26:0] xLTOneAbs_uid178_block_rsrvd_fix_b;
    logic [26:0] xLTOneAbs_uid178_block_rsrvd_fix_o;
    wire [0:0] xLTOneAbs_uid178_block_rsrvd_fix_c;
    wire [26:0] xGTOneAbs_uid179_block_rsrvd_fix_a;
    wire [26:0] xGTOneAbs_uid179_block_rsrvd_fix_b;
    logic [26:0] xGTOneAbs_uid179_block_rsrvd_fix_o;
    wire [0:0] xGTOneAbs_uid179_block_rsrvd_fix_c;
    wire [25:0] CstM1_uid182_block_rsrvd_fix_q;
    wire [25:0] Cst1_uid184_block_rsrvd_fix_q;
    wire [0:0] excXRI_uid186_block_rsrvd_fix_q;
    wire [0:0] excYRI_uid187_block_rsrvd_fix_q;
    wire [0:0] invSignX_uid188_block_rsrvd_fix_q;
    wire [0:0] invSignY_uid189_block_rsrvd_fix_q;
    wire [0:0] invXIsOne_uid190_block_rsrvd_fix_q;
    wire [0:0] invSignProd_uid191_block_rsrvd_fix_q;
    wire [0:0] invExcXM1_uid192_block_rsrvd_fix_q;
    wire [0:0] excRZeroSubCon11_uid193_block_rsrvd_fix_q;
    wire [0:0] excRZeroSubCon10_uid194_block_rsrvd_fix_q;
    wire [0:0] excRZeroSubCon1_uid195_block_rsrvd_fix_qi;
    reg [0:0] excRZeroSubCon1_uid195_block_rsrvd_fix_q;
    wire [0:0] zeroCase7_uid196_block_rsrvd_fix_qi;
    reg [0:0] zeroCase7_uid196_block_rsrvd_fix_q;
    wire [0:0] zeroCase6_uid197_block_rsrvd_fix_qi;
    reg [0:0] zeroCase6_uid197_block_rsrvd_fix_q;
    wire [0:0] zeroCase5_uid198_block_rsrvd_fix_qi;
    reg [0:0] zeroCase5_uid198_block_rsrvd_fix_q;
    wire [0:0] zeroCase4_uid199_block_rsrvd_fix_qi;
    reg [0:0] zeroCase4_uid199_block_rsrvd_fix_q;
    wire [0:0] zeroCase3_uid200_block_rsrvd_fix_qi;
    reg [0:0] zeroCase3_uid200_block_rsrvd_fix_q;
    wire [0:0] zeroCase2_uid201_block_rsrvd_fix_qi;
    reg [0:0] zeroCase2_uid201_block_rsrvd_fix_q;
    wire [0:0] zeroCase0_uid202_block_rsrvd_fix_qi;
    reg [0:0] zeroCase0_uid202_block_rsrvd_fix_q;
    wire [0:0] excRZero_uid203_block_rsrvd_fix_qi;
    reg [0:0] excRZero_uid203_block_rsrvd_fix_q;
    wire [0:0] infCase7_uid204_block_rsrvd_fix_qi;
    reg [0:0] infCase7_uid204_block_rsrvd_fix_q;
    wire [0:0] infCase7_uid205_block_rsrvd_fix_qi;
    reg [0:0] infCase7_uid205_block_rsrvd_fix_q;
    wire [0:0] expOvfInitialExp_uid206_block_rsrvd_fix_q;
    wire [0:0] infCase6_uid207_block_rsrvd_fix_qi;
    reg [0:0] infCase6_uid207_block_rsrvd_fix_q;
    wire [0:0] infCase5_uid208_block_rsrvd_fix_qi;
    reg [0:0] infCase5_uid208_block_rsrvd_fix_q;
    wire [0:0] infCase4_uid209_block_rsrvd_fix_qi;
    reg [0:0] infCase4_uid209_block_rsrvd_fix_q;
    wire [0:0] infCase3_uid210_block_rsrvd_fix_qi;
    reg [0:0] infCase3_uid210_block_rsrvd_fix_q;
    wire [0:0] infCase2_uid211_block_rsrvd_fix_qi;
    reg [0:0] infCase2_uid211_block_rsrvd_fix_q;
    wire [0:0] infCase0_uid212_block_rsrvd_fix_qi;
    reg [0:0] infCase0_uid212_block_rsrvd_fix_q;
    wire [0:0] excRInf_uid213_block_rsrvd_fix_qi;
    reg [0:0] excRInf_uid213_block_rsrvd_fix_q;
    wire [0:0] invYIsInt_uid214_block_rsrvd_fix_q;
    wire [0:0] nanCase2_uid215_block_rsrvd_fix_q;
    wire [0:0] nanCase1_uid217_block_rsrvd_fix_qi;
    reg [0:0] nanCase1_uid217_block_rsrvd_fix_q;
    wire [0:0] invExcX1_uid218_block_rsrvd_fix_q;
    wire [0:0] nanCase0_uid219_block_rsrvd_fix_qi;
    reg [0:0] nanCase0_uid219_block_rsrvd_fix_q;
    wire [0:0] excRNaN_uid220_block_rsrvd_fix_qi;
    reg [0:0] excRNaN_uid220_block_rsrvd_fix_q;
    wire [0:0] oneCase2_uid221_block_rsrvd_fix_q;
    wire [0:0] oneCase1_uid222_block_rsrvd_fix_q;
    wire [0:0] excROne_uid223_block_rsrvd_fix_qi;
    reg [0:0] excROne_uid223_block_rsrvd_fix_q;
    wire [0:0] fracRPostOne_uid224_block_rsrvd_fix_s;
    reg [16:0] fracRPostOne_uid224_block_rsrvd_fix_q;
    wire [0:0] expRPostOne_uid225_block_rsrvd_fix_s;
    reg [7:0] expRPostOne_uid225_block_rsrvd_fix_q;
    wire [2:0] concExc_uid226_block_rsrvd_fix_q;
    reg [1:0] excREnc_uid227_block_rsrvd_fix_q;
    wire [16:0] oneFracRPostExc2_uid228_block_rsrvd_fix_q;
    wire [1:0] fracRPostExc_uid231_block_rsrvd_fix_s;
    reg [16:0] fracRPostExc_uid231_block_rsrvd_fix_q;
    wire [1:0] expRPostExc_uid235_block_rsrvd_fix_s;
    reg [7:0] expRPostExc_uid235_block_rsrvd_fix_q;
    wire [0:0] signRCond2_uid236_block_rsrvd_fix_q;
    wire [0:0] signRCond1_uid237_block_rsrvd_fix_q;
    wire [0:0] signRCond0_uid238_block_rsrvd_fix_q;
    wire [0:0] signR_uid239_block_rsrvd_fix_qi;
    reg [0:0] signR_uid239_block_rsrvd_fix_q;
    wire [25:0] RPow_uid240_block_rsrvd_fix_q;
    wire [4:0] xv0_uid427_eLn2_uid70_block_rsrvd_fix_in;
    wire [4:0] xv0_uid427_eLn2_uid70_block_rsrvd_fix_b;
    wire [3:0] xv1_uid428_eLn2_uid70_block_rsrvd_fix_b;
    reg [41:0] p1_uid429_eLn2_uid70_block_rsrvd_fix_q;
    reg [36:0] p0_uid430_eLn2_uid70_block_rsrvd_fix_q;
    wire [43:0] lev1_a0_uid431_eLn2_uid70_block_rsrvd_fix_a;
    wire [43:0] lev1_a0_uid431_eLn2_uid70_block_rsrvd_fix_b;
    logic [43:0] lev1_a0_uid431_eLn2_uid70_block_rsrvd_fix_o;
    wire [42:0] lev1_a0_uid431_eLn2_uid70_block_rsrvd_fix_q;
    wire [40:0] sOuputFormat_uid432_eLn2_uid70_block_rsrvd_fix_in;
    wire [38:0] sOuputFormat_uid432_eLn2_uid70_block_rsrvd_fix_b;
    wire [33:0] os_uid438_lnTables_q;
    wire [22:0] os_uid443_lnTables_q;
    wire [13:0] os_uid447_lnTables_q;
    wire [0:0] lowRangeB_uid454_invPolyEval_in;
    wire [0:0] lowRangeB_uid454_invPolyEval_b;
    wire [13:0] highBBits_uid455_invPolyEval_b;
    wire [23:0] s1sumAHighB_uid456_invPolyEval_a;
    wire [23:0] s1sumAHighB_uid456_invPolyEval_b;
    logic [23:0] s1sumAHighB_uid456_invPolyEval_o;
    wire [23:0] s1sumAHighB_uid456_invPolyEval_q;
    wire [24:0] s1_uid457_invPolyEval_q;
    wire [1:0] lowRangeB_uid460_invPolyEval_in;
    wire [1:0] lowRangeB_uid460_invPolyEval_b;
    wire [23:0] highBBits_uid461_invPolyEval_b;
    wire [34:0] s2sumAHighB_uid462_invPolyEval_a;
    wire [34:0] s2sumAHighB_uid462_invPolyEval_b;
    logic [34:0] s2sumAHighB_uid462_invPolyEval_o;
    wire [34:0] s2sumAHighB_uid462_invPolyEval_q;
    wire [36:0] s2_uid463_invPolyEval_q;
    wire [31:0] zs_uid465_countZLog_uid96_block_rsrvd_fix_q;
    wire [31:0] rVStage_uid466_countZLog_uid96_block_rsrvd_fix_b;
    wire [0:0] vCount_uid467_countZLog_uid96_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid467_countZLog_uid96_block_rsrvd_fix_q;
    wire [8:0] mO_uid468_countZLog_uid96_block_rsrvd_fix_q;
    wire [22:0] vStage_uid469_countZLog_uid96_block_rsrvd_fix_in;
    wire [22:0] vStage_uid469_countZLog_uid96_block_rsrvd_fix_b;
    wire [31:0] cStage_uid470_countZLog_uid96_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid472_countZLog_uid96_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid472_countZLog_uid96_block_rsrvd_fix_q;
    wire [15:0] zs_uid473_countZLog_uid96_block_rsrvd_fix_q;
    wire [0:0] vCount_uid475_countZLog_uid96_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid475_countZLog_uid96_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid478_countZLog_uid96_block_rsrvd_fix_s;
    reg [15:0] vStagei_uid478_countZLog_uid96_block_rsrvd_fix_q;
    wire [0:0] vCount_uid481_countZLog_uid96_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid481_countZLog_uid96_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid484_countZLog_uid96_block_rsrvd_fix_s;
    reg [7:0] vStagei_uid484_countZLog_uid96_block_rsrvd_fix_q;
    wire [3:0] zs_uid485_countZLog_uid96_block_rsrvd_fix_q;
    wire [0:0] vCount_uid487_countZLog_uid96_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid487_countZLog_uid96_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid490_countZLog_uid96_block_rsrvd_fix_s;
    reg [3:0] vStagei_uid490_countZLog_uid96_block_rsrvd_fix_q;
    wire [0:0] vCount_uid493_countZLog_uid96_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid493_countZLog_uid96_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid496_countZLog_uid96_block_rsrvd_fix_s;
    reg [1:0] vStagei_uid496_countZLog_uid96_block_rsrvd_fix_q;
    wire [0:0] rVStage_uid498_countZLog_uid96_block_rsrvd_fix_b;
    wire [0:0] vCount_uid499_countZLog_uid96_block_rsrvd_fix_q;
    wire [5:0] r_uid500_countZLog_uid96_block_rsrvd_fix_q;
    wire [4:0] xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in;
    wire [4:0] xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b;
    wire [9:0] xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in;
    wire [4:0] xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b;
    wire [14:0] xv2_uid645_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in;
    wire [4:0] xv2_uid645_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b;
    wire [19:0] xv3_uid646_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in;
    wire [4:0] xv3_uid646_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b;
    wire [24:0] xv4_uid647_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in;
    wire [4:0] xv4_uid647_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b;
    wire [3:0] xv5_uid648_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b;
    reg [36:0] p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q;
    reg [31:0] p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q;
    reg [26:0] p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q;
    reg [21:0] p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q;
    reg [16:0] p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q;
    reg [11:0] p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q;
    wire [38:0] lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a;
    wire [38:0] lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b;
    logic [38:0] lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o;
    wire [37:0] lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q;
    wire [27:0] lev1_a1_uid656_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a;
    wire [27:0] lev1_a1_uid656_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b;
    logic [27:0] lev1_a1_uid656_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o;
    wire [27:0] lev1_a1_uid656_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q;
    wire [17:0] lev1_a2_uid657_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a;
    wire [17:0] lev1_a2_uid657_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b;
    logic [17:0] lev1_a2_uid657_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o;
    wire [17:0] lev1_a2_uid657_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q;
    wire [39:0] lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a;
    wire [39:0] lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b;
    logic [39:0] lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o;
    wire [38:0] lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q;
    wire [40:0] lev3_a0_uid659_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a;
    wire [40:0] lev3_a0_uid659_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b;
    logic [40:0] lev3_a0_uid659_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o;
    wire [39:0] lev3_a0_uid659_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q;
    wire [35:0] sOuputFormat_uid660_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in;
    wire [32:0] sOuputFormat_uid660_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b;
    wire [4:0] xv0_uid841_eRndXlog2_uid142_block_rsrvd_fix_in;
    wire [4:0] xv0_uid841_eRndXlog2_uid142_block_rsrvd_fix_b;
    wire [5:0] xv1_uid842_eRndXlog2_uid142_block_rsrvd_fix_b;
    reg [42:0] p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q;
    reg [35:0] p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q;
    wire [44:0] lev1_a0_uid845_eRndXlog2_uid142_block_rsrvd_fix_a;
    wire [44:0] lev1_a0_uid845_eRndXlog2_uid142_block_rsrvd_fix_b;
    logic [44:0] lev1_a0_uid845_eRndXlog2_uid142_block_rsrvd_fix_o;
    wire [43:0] lev1_a0_uid845_eRndXlog2_uid142_block_rsrvd_fix_q;
    wire [41:0] sOuputFormat_uid846_eRndXlog2_uid142_block_rsrvd_fix_in;
    wire [39:0] sOuputFormat_uid846_eRndXlog2_uid142_block_rsrvd_fix_b;
    wire [40:0] os_uid850_expTables_q;
    wire [14:0] yT1_uid865_invPolyEval_b;
    wire [0:0] lowRangeB_uid867_invPolyEval_in;
    wire [0:0] lowRangeB_uid867_invPolyEval_b;
    wire [13:0] highBBits_uid868_invPolyEval_b;
    wire [24:0] s1sumAHighB_uid869_invPolyEval_a;
    wire [24:0] s1sumAHighB_uid869_invPolyEval_b;
    logic [24:0] s1sumAHighB_uid869_invPolyEval_o;
    wire [24:0] s1sumAHighB_uid869_invPolyEval_q;
    wire [25:0] s1_uid870_invPolyEval_q;
    wire [0:0] lowRangeB_uid873_invPolyEval_in;
    wire [0:0] lowRangeB_uid873_invPolyEval_b;
    wire [24:0] highBBits_uid874_invPolyEval_b;
    wire [33:0] s2sumAHighB_uid875_invPolyEval_a;
    wire [33:0] s2sumAHighB_uid875_invPolyEval_b;
    logic [33:0] s2sumAHighB_uid875_invPolyEval_o;
    wire [33:0] s2sumAHighB_uid875_invPolyEval_q;
    wire [34:0] s2_uid876_invPolyEval_q;
    wire [1:0] lowRangeB_uid879_invPolyEval_in;
    wire [1:0] lowRangeB_uid879_invPolyEval_b;
    wire [33:0] highBBits_uid880_invPolyEval_b;
    wire [41:0] s3sumAHighB_uid881_invPolyEval_a;
    wire [41:0] s3sumAHighB_uid881_invPolyEval_b;
    logic [41:0] s3sumAHighB_uid881_invPolyEval_o;
    wire [41:0] s3sumAHighB_uid881_invPolyEval_q;
    wire [43:0] s3_uid882_invPolyEval_q;
    wire [14:0] osig_uid885_pT1_uid453_invPolyEval_b;
    wire [32:0] osig_uid888_pT2_uid459_invPolyEval_in;
    wire [25:0] osig_uid888_pT2_uid459_invPolyEval_b;
    wire [14:0] osig_uid891_pT1_uid866_invPolyEval_b;
    wire [45:0] osig_uid894_pT2_uid872_invPolyEval_in;
    wire [25:0] osig_uid894_pT2_uid872_invPolyEval_b;
    wire [20:0] nx_mergedSignalTM_uid908_pT3_uid878_invPolyEval_q;
    wire [17:0] topRangeX_uid910_pT3_uid878_invPolyEval_b;
    wire [17:0] topRangeY_uid911_pT3_uid878_invPolyEval_b;
    wire [16:0] aboveLeftY_bottomRange_uid914_pT3_uid878_invPolyEval_in;
    wire [16:0] aboveLeftY_bottomRange_uid914_pT3_uid878_invPolyEval_b;
    wire [17:0] aboveLeftY_mergedSignalTM_uid915_pT3_uid878_invPolyEval_q;
    wire [14:0] rightBottomX_bottomExtension_uid917_pT3_uid878_invPolyEval_q;
    wire [2:0] rightBottomX_bottomRange_uid918_pT3_uid878_invPolyEval_in;
    wire [2:0] rightBottomX_bottomRange_uid918_pT3_uid878_invPolyEval_b;
    wire [17:0] rightBottomX_mergedSignalTM_uid919_pT3_uid878_invPolyEval_q;
    wire [2:0] aboveLeftX_uid922_pT3_uid878_invPolyEval_in;
    wire [2:0] aboveLeftX_uid922_pT3_uid878_invPolyEval_b;
    wire [16:0] aboveLeftY_uid923_pT3_uid878_invPolyEval_in;
    wire [2:0] aboveLeftY_uid923_pT3_uid878_invPolyEval_b;
    reg [2:0] sm0_uid927_pT3_uid878_invPolyEval_a0;
    reg [2:0] sm0_uid927_pT3_uid878_invPolyEval_b0;
    reg [5:0] sm0_uid927_pT3_uid878_invPolyEval_s1;
    (* multstyle =  "logic" *) wire [5:0] sm0_uid927_pT3_uid878_invPolyEval_pr;
    reg [5:0] sm0_uid927_pT3_uid878_invPolyEval_q;
    wire [41:0] sumAb_uid928_pT3_uid878_invPolyEval_q;
    wire [11:0] lowRangeB_uid929_pT3_uid878_invPolyEval_in;
    wire [11:0] lowRangeB_uid929_pT3_uid878_invPolyEval_b;
    wire [24:0] highBBits_uid930_pT3_uid878_invPolyEval_b;
    wire [42:0] lev1_a0sumAHighB_uid931_pT3_uid878_invPolyEval_a;
    wire [42:0] lev1_a0sumAHighB_uid931_pT3_uid878_invPolyEval_b;
    logic [42:0] lev1_a0sumAHighB_uid931_pT3_uid878_invPolyEval_o;
    wire [42:0] lev1_a0sumAHighB_uid931_pT3_uid878_invPolyEval_q;
    wire [54:0] lev1_a0_uid932_pT3_uid878_invPolyEval_q;
    wire [52:0] os_uid933_pT3_uid878_invPolyEval_in;
    wire [35:0] os_uid933_pT3_uid878_invPolyEval_b;
    wire [47:0] postPEMulLog_uid85_block_rsrvd_fix_sums_align_1_q;
    wire [47:0] postPEMulLog_uid85_block_rsrvd_fix_sums_align_1_qint;
    wire [48:0] postPEMulLog_uid85_block_rsrvd_fix_sums_result_add_0_0_a;
    wire [48:0] postPEMulLog_uid85_block_rsrvd_fix_sums_result_add_0_0_b;
    logic [48:0] postPEMulLog_uid85_block_rsrvd_fix_sums_result_add_0_0_o;
    wire [48:0] postPEMulLog_uid85_block_rsrvd_fix_sums_result_add_0_0_q;
    wire [38:0] leftShiftStage0Idx1Rng16_uid949_normValLog_uid97_block_rsrvd_fix_in;
    wire [38:0] leftShiftStage0Idx1Rng16_uid949_normValLog_uid97_block_rsrvd_fix_b;
    wire [54:0] leftShiftStage0Idx1_uid950_normValLog_uid97_block_rsrvd_fix_q;
    wire [54:0] leftShiftStage0Idx2_uid953_normValLog_uid97_block_rsrvd_fix_q;
    wire [47:0] leftShiftStage0Idx3Pad48_uid954_normValLog_uid97_block_rsrvd_fix_q;
    wire [6:0] leftShiftStage0Idx3Rng48_uid955_normValLog_uid97_block_rsrvd_fix_in;
    wire [6:0] leftShiftStage0Idx3Rng48_uid955_normValLog_uid97_block_rsrvd_fix_b;
    wire [54:0] leftShiftStage0Idx3_uid956_normValLog_uid97_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_s;
    reg [54:0] leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_q;
    wire [50:0] leftShiftStage1Idx1Rng4_uid960_normValLog_uid97_block_rsrvd_fix_in;
    wire [50:0] leftShiftStage1Idx1Rng4_uid960_normValLog_uid97_block_rsrvd_fix_b;
    wire [54:0] leftShiftStage1Idx1_uid961_normValLog_uid97_block_rsrvd_fix_q;
    wire [46:0] leftShiftStage1Idx2Rng8_uid963_normValLog_uid97_block_rsrvd_fix_in;
    wire [46:0] leftShiftStage1Idx2Rng8_uid963_normValLog_uid97_block_rsrvd_fix_b;
    wire [54:0] leftShiftStage1Idx2_uid964_normValLog_uid97_block_rsrvd_fix_q;
    wire [11:0] leftShiftStage1Idx3Pad12_uid965_normValLog_uid97_block_rsrvd_fix_q;
    wire [42:0] leftShiftStage1Idx3Rng12_uid966_normValLog_uid97_block_rsrvd_fix_in;
    wire [42:0] leftShiftStage1Idx3Rng12_uid966_normValLog_uid97_block_rsrvd_fix_b;
    wire [54:0] leftShiftStage1Idx3_uid967_normValLog_uid97_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_s;
    reg [54:0] leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_q;
    wire [53:0] leftShiftStage2Idx1Rng1_uid971_normValLog_uid97_block_rsrvd_fix_in;
    wire [53:0] leftShiftStage2Idx1Rng1_uid971_normValLog_uid97_block_rsrvd_fix_b;
    wire [54:0] leftShiftStage2Idx1_uid972_normValLog_uid97_block_rsrvd_fix_q;
    wire [52:0] leftShiftStage2Idx2Rng2_uid974_normValLog_uid97_block_rsrvd_fix_in;
    wire [52:0] leftShiftStage2Idx2Rng2_uid974_normValLog_uid97_block_rsrvd_fix_b;
    wire [54:0] leftShiftStage2Idx2_uid975_normValLog_uid97_block_rsrvd_fix_q;
    wire [2:0] leftShiftStage2Idx3Pad3_uid976_normValLog_uid97_block_rsrvd_fix_q;
    wire [51:0] leftShiftStage2Idx3Rng3_uid977_normValLog_uid97_block_rsrvd_fix_in;
    wire [51:0] leftShiftStage2Idx3Rng3_uid977_normValLog_uid97_block_rsrvd_fix_b;
    wire [54:0] leftShiftStage2Idx3_uid978_normValLog_uid97_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage2_uid980_normValLog_uid97_block_rsrvd_fix_s;
    reg [54:0] leftShiftStage2_uid980_normValLog_uid97_block_rsrvd_fix_q;
    wire [45:0] prodYLogX_uid111_block_rsrvd_fix_sums_align_1_q;
    wire [45:0] prodYLogX_uid111_block_rsrvd_fix_sums_align_1_qint;
    wire [46:0] prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_a;
    wire [46:0] prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_b;
    logic [46:0] prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_o;
    wire [46:0] prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_q;
    wire [0:0] xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b;
    wire [39:0] rightShiftStage0Idx1Rng1_uid994_fxpInPostAlignExp_uid139_block_rsrvd_fix_b;
    wire [40:0] rightShiftStage0Idx1_uid995_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
    wire [1:0] seMsb_to2_uid996_in;
    wire [1:0] seMsb_to2_uid996_b;
    wire [38:0] rightShiftStage0Idx2Rng2_uid997_fxpInPostAlignExp_uid139_block_rsrvd_fix_b;
    wire [40:0] rightShiftStage0Idx2_uid998_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
    wire [2:0] seMsb_to3_uid999_in;
    wire [2:0] seMsb_to3_uid999_b;
    wire [37:0] rightShiftStage0Idx3Rng3_uid1000_fxpInPostAlignExp_uid139_block_rsrvd_fix_b;
    wire [40:0] rightShiftStage0Idx3_uid1001_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix_s;
    reg [40:0] rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
    wire [3:0] seMsb_to4_uid1004_in;
    wire [3:0] seMsb_to4_uid1004_b;
    wire [36:0] rightShiftStage1Idx1Rng4_uid1005_fxpInPostAlignExp_uid139_block_rsrvd_fix_b;
    wire [40:0] rightShiftStage1Idx1_uid1006_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
    wire [7:0] seMsb_to8_uid1007_in;
    wire [7:0] seMsb_to8_uid1007_b;
    wire [32:0] rightShiftStage1Idx2Rng8_uid1008_fxpInPostAlignExp_uid139_block_rsrvd_fix_b;
    wire [40:0] rightShiftStage1Idx2_uid1009_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
    wire [11:0] seMsb_to12_uid1010_in;
    wire [11:0] seMsb_to12_uid1010_b;
    wire [28:0] rightShiftStage1Idx3Rng12_uid1011_fxpInPostAlignExp_uid139_block_rsrvd_fix_b;
    wire [40:0] rightShiftStage1Idx3_uid1012_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix_s;
    reg [40:0] rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
    wire [15:0] seMsb_to16_uid1015_in;
    wire [15:0] seMsb_to16_uid1015_b;
    wire [24:0] rightShiftStage2Idx1Rng16_uid1016_fxpInPostAlignExp_uid139_block_rsrvd_fix_b;
    wire [40:0] rightShiftStage2Idx1_uid1017_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
    wire [31:0] seMsb_to32_uid1018_in;
    wire [31:0] seMsb_to32_uid1018_b;
    wire [8:0] rightShiftStage2Idx2Rng32_uid1019_fxpInPostAlignExp_uid139_block_rsrvd_fix_b;
    wire [40:0] rightShiftStage2Idx2_uid1020_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
    wire [40:0] stageIndexName_to41_uid1021_in;
    wire [40:0] stageIndexName_to41_uid1021_b;
    wire [1:0] rightShiftStage2_uid1024_fxpInPostAlignExp_uid139_block_rsrvd_fix_s;
    reg [40:0] rightShiftStage2_uid1024_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
    wire [0:0] xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b;
    wire [36:0] rightShiftStage0Idx1Rng1_uid1028_fxpInPostAlign_X_uid152_block_rsrvd_fix_b;
    wire [37:0] rightShiftStage0Idx1_uid1029_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
    wire [1:0] seMsb_to2_uid1030_in;
    wire [1:0] seMsb_to2_uid1030_b;
    wire [35:0] rightShiftStage0Idx2Rng2_uid1031_fxpInPostAlign_X_uid152_block_rsrvd_fix_b;
    wire [37:0] rightShiftStage0Idx2_uid1032_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
    wire [2:0] seMsb_to3_uid1033_in;
    wire [2:0] seMsb_to3_uid1033_b;
    wire [34:0] rightShiftStage0Idx3Rng3_uid1034_fxpInPostAlign_X_uid152_block_rsrvd_fix_b;
    wire [37:0] rightShiftStage0Idx3_uid1035_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix_s;
    reg [37:0] rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
    wire [3:0] seMsb_to4_uid1038_in;
    wire [3:0] seMsb_to4_uid1038_b;
    wire [33:0] rightShiftStage1Idx1Rng4_uid1039_fxpInPostAlign_X_uid152_block_rsrvd_fix_b;
    wire [37:0] rightShiftStage1Idx1_uid1040_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
    wire [7:0] seMsb_to8_uid1041_in;
    wire [7:0] seMsb_to8_uid1041_b;
    wire [29:0] rightShiftStage1Idx2Rng8_uid1042_fxpInPostAlign_X_uid152_block_rsrvd_fix_b;
    wire [37:0] rightShiftStage1Idx2_uid1043_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
    wire [11:0] seMsb_to12_uid1044_in;
    wire [11:0] seMsb_to12_uid1044_b;
    wire [25:0] rightShiftStage1Idx3Rng12_uid1045_fxpInPostAlign_X_uid152_block_rsrvd_fix_b;
    wire [37:0] rightShiftStage1Idx3_uid1046_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
    wire [1:0] rightShiftStage1_uid1048_fxpInPostAlign_X_uid152_block_rsrvd_fix_s;
    reg [37:0] rightShiftStage1_uid1048_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
    wire [15:0] seMsb_to16_uid1049_in;
    wire [15:0] seMsb_to16_uid1049_b;
    wire [21:0] rightShiftStage2Idx1Rng16_uid1050_fxpInPostAlign_X_uid152_block_rsrvd_fix_b;
    wire [37:0] rightShiftStage2Idx1_uid1051_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
    wire [31:0] seMsb_to32_uid1052_in;
    wire [31:0] seMsb_to32_uid1052_b;
    wire [5:0] rightShiftStage2Idx2Rng32_uid1053_fxpInPostAlign_X_uid152_block_rsrvd_fix_b;
    wire [37:0] rightShiftStage2Idx2_uid1054_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
    wire [37:0] stageIndexName_to38_uid1055_in;
    wire [37:0] stageIndexName_to38_uid1055_b;
    wire [1:0] rightShiftStage2_uid1058_fxpInPostAlign_X_uid152_block_rsrvd_fix_s;
    reg [37:0] rightShiftStage2_uid1058_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
    wire [0:0] eq0_uid1062_xEQOneAbs_uid180_block_rsrvd_fix_qi;
    reg [0:0] eq0_uid1062_xEQOneAbs_uid180_block_rsrvd_fix_q;
    wire [0:0] eq1_uid1065_xEQOneAbs_uid180_block_rsrvd_fix_qi;
    reg [0:0] eq1_uid1065_xEQOneAbs_uid180_block_rsrvd_fix_q;
    wire [0:0] andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_qi;
    reg [0:0] andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q;
    wire [12:0] x0_uid1067_excXM1_uid183_block_rsrvd_fix_b;
    wire [0:0] eq0_uid1069_excXM1_uid183_block_rsrvd_fix_qi;
    reg [0:0] eq0_uid1069_excXM1_uid183_block_rsrvd_fix_q;
    wire [12:0] x1_uid1070_excXM1_uid183_block_rsrvd_fix_b;
    wire [0:0] eq1_uid1072_excXM1_uid183_block_rsrvd_fix_qi;
    reg [0:0] eq1_uid1072_excXM1_uid183_block_rsrvd_fix_q;
    wire [0:0] andEq_uid1073_excXM1_uid183_block_rsrvd_fix_qi;
    reg [0:0] andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q;
    wire [0:0] eq0_uid1076_excX1_uid185_block_rsrvd_fix_qi;
    reg [0:0] eq0_uid1076_excX1_uid185_block_rsrvd_fix_q;
    wire [0:0] eq1_uid1079_excX1_uid185_block_rsrvd_fix_qi;
    reg [0:0] eq1_uid1079_excX1_uid185_block_rsrvd_fix_q;
    wire [0:0] andEq_uid1080_excX1_uid185_block_rsrvd_fix_qi;
    reg [0:0] andEq_uid1080_excX1_uid185_block_rsrvd_fix_q;
    wire memoryC0_uid434_lnTables_lutmem_reset0;
    wire [9:0] memoryC0_uid434_lnTables_lutmem_ia;
    wire [9:0] memoryC0_uid434_lnTables_lutmem_aa;
    wire [9:0] memoryC0_uid434_lnTables_lutmem_ab;
    wire [9:0] memoryC0_uid434_lnTables_lutmem_ir;
    wire [9:0] memoryC0_uid434_lnTables_lutmem_r;
    wire memoryC0_uid435_lnTables_lutmem_reset0;
    wire [9:0] memoryC0_uid435_lnTables_lutmem_ia;
    wire [9:0] memoryC0_uid435_lnTables_lutmem_aa;
    wire [9:0] memoryC0_uid435_lnTables_lutmem_ab;
    wire [9:0] memoryC0_uid435_lnTables_lutmem_ir;
    wire [9:0] memoryC0_uid435_lnTables_lutmem_r;
    wire memoryC0_uid436_lnTables_lutmem_reset0;
    wire [9:0] memoryC0_uid436_lnTables_lutmem_ia;
    wire [9:0] memoryC0_uid436_lnTables_lutmem_aa;
    wire [9:0] memoryC0_uid436_lnTables_lutmem_ab;
    wire [9:0] memoryC0_uid436_lnTables_lutmem_ir;
    wire [9:0] memoryC0_uid436_lnTables_lutmem_r;
    wire memoryC0_uid437_lnTables_lutmem_reset0;
    wire [3:0] memoryC0_uid437_lnTables_lutmem_ia;
    wire [9:0] memoryC0_uid437_lnTables_lutmem_aa;
    wire [9:0] memoryC0_uid437_lnTables_lutmem_ab;
    wire [3:0] memoryC0_uid437_lnTables_lutmem_ir;
    wire [3:0] memoryC0_uid437_lnTables_lutmem_r;
    wire memoryC1_uid440_lnTables_lutmem_reset0;
    wire [9:0] memoryC1_uid440_lnTables_lutmem_ia;
    wire [9:0] memoryC1_uid440_lnTables_lutmem_aa;
    wire [9:0] memoryC1_uid440_lnTables_lutmem_ab;
    wire [9:0] memoryC1_uid440_lnTables_lutmem_ir;
    wire [9:0] memoryC1_uid440_lnTables_lutmem_r;
    wire memoryC1_uid441_lnTables_lutmem_reset0;
    wire [9:0] memoryC1_uid441_lnTables_lutmem_ia;
    wire [9:0] memoryC1_uid441_lnTables_lutmem_aa;
    wire [9:0] memoryC1_uid441_lnTables_lutmem_ab;
    wire [9:0] memoryC1_uid441_lnTables_lutmem_ir;
    wire [9:0] memoryC1_uid441_lnTables_lutmem_r;
    wire memoryC1_uid442_lnTables_lutmem_reset0;
    wire [2:0] memoryC1_uid442_lnTables_lutmem_ia;
    wire [9:0] memoryC1_uid442_lnTables_lutmem_aa;
    wire [9:0] memoryC1_uid442_lnTables_lutmem_ab;
    wire [2:0] memoryC1_uid442_lnTables_lutmem_ir;
    wire [2:0] memoryC1_uid442_lnTables_lutmem_r;
    wire memoryC2_uid445_lnTables_lutmem_reset0;
    wire [9:0] memoryC2_uid445_lnTables_lutmem_ia;
    wire [9:0] memoryC2_uid445_lnTables_lutmem_aa;
    wire [9:0] memoryC2_uid445_lnTables_lutmem_ab;
    wire [9:0] memoryC2_uid445_lnTables_lutmem_ir;
    wire [9:0] memoryC2_uid445_lnTables_lutmem_r;
    wire memoryC2_uid446_lnTables_lutmem_reset0;
    wire [3:0] memoryC2_uid446_lnTables_lutmem_ia;
    wire [9:0] memoryC2_uid446_lnTables_lutmem_aa;
    wire [9:0] memoryC2_uid446_lnTables_lutmem_ab;
    wire [3:0] memoryC2_uid446_lnTables_lutmem_ir;
    wire [3:0] memoryC2_uid446_lnTables_lutmem_r;
    wire memoryC0_uid848_expTables_lutmem_reset0;
    wire [39:0] memoryC0_uid848_expTables_lutmem_ia;
    wire [7:0] memoryC0_uid848_expTables_lutmem_aa;
    wire [7:0] memoryC0_uid848_expTables_lutmem_ab;
    wire [39:0] memoryC0_uid848_expTables_lutmem_ir;
    wire [39:0] memoryC0_uid848_expTables_lutmem_r;
    wire memoryC1_uid852_expTables_lutmem_reset0;
    wire [32:0] memoryC1_uid852_expTables_lutmem_ia;
    wire [7:0] memoryC1_uid852_expTables_lutmem_aa;
    wire [7:0] memoryC1_uid852_expTables_lutmem_ab;
    wire [32:0] memoryC1_uid852_expTables_lutmem_ir;
    wire [32:0] memoryC1_uid852_expTables_lutmem_r;
    wire memoryC2_uid855_expTables_lutmem_reset0;
    wire [23:0] memoryC2_uid855_expTables_lutmem_ia;
    wire [7:0] memoryC2_uid855_expTables_lutmem_aa;
    wire [7:0] memoryC2_uid855_expTables_lutmem_ab;
    wire [23:0] memoryC2_uid855_expTables_lutmem_ir;
    wire [23:0] memoryC2_uid855_expTables_lutmem_r;
    wire memoryC3_uid858_expTables_lutmem_reset0;
    wire [14:0] memoryC3_uid858_expTables_lutmem_ia;
    wire [7:0] memoryC3_uid858_expTables_lutmem_aa;
    wire [7:0] memoryC3_uid858_expTables_lutmem_ab;
    wire [14:0] memoryC3_uid858_expTables_lutmem_ir;
    wire [14:0] memoryC3_uid858_expTables_lutmem_r;
    reg [7:0] prodXY_uid887_pT2_uid459_invPolyEval_im0_a0;
    reg [6:0] prodXY_uid887_pT2_uid459_invPolyEval_im0_b0;
    reg [14:0] prodXY_uid887_pT2_uid459_invPolyEval_im0_s1;
    wire signed [15:0] prodXY_uid887_pT2_uid459_invPolyEval_im0_pr;
    reg [14:0] prodXY_uid887_pT2_uid459_invPolyEval_im0_q;
    wire [32:0] prodXY_uid887_pT2_uid459_invPolyEval_sums_align_1_q;
    wire [32:0] prodXY_uid887_pT2_uid459_invPolyEval_sums_align_1_qint;
    wire [34:0] prodXY_uid887_pT2_uid459_invPolyEval_sums_result_add_0_0_a;
    wire [34:0] prodXY_uid887_pT2_uid459_invPolyEval_sums_result_add_0_0_b;
    logic [34:0] prodXY_uid887_pT2_uid459_invPolyEval_sums_result_add_0_0_o;
    wire [33:0] prodXY_uid887_pT2_uid459_invPolyEval_sums_result_add_0_0_q;
    reg [1:0] prodXY_uid893_pT2_uid872_invPolyEval_im0_a0;
    reg [7:0] prodXY_uid893_pT2_uid872_invPolyEval_im0_b0;
    reg [9:0] prodXY_uid893_pT2_uid872_invPolyEval_im0_s1;
    wire signed [10:0] prodXY_uid893_pT2_uid872_invPolyEval_im0_pr;
    reg [9:0] prodXY_uid893_pT2_uid872_invPolyEval_im0_q;
    wire [1:0] prodXY_uid893_pT2_uid872_invPolyEval_bs1_b;
    wire [17:0] prodXY_uid893_pT2_uid872_invPolyEval_bs4_in;
    wire [17:0] prodXY_uid893_pT2_uid872_invPolyEval_bs4_b;
    wire [2:0] prodXY_uid893_pT2_uid872_invPolyEval_bjA7_q;
    wire [45:0] prodXY_uid893_pT2_uid872_invPolyEval_sums_join_0_q;
    wire [44:0] prodXY_uid893_pT2_uid872_invPolyEval_sums_align_1_q;
    wire [44:0] prodXY_uid893_pT2_uid872_invPolyEval_sums_align_1_qint;
    wire [46:0] prodXY_uid893_pT2_uid872_invPolyEval_sums_result_add_0_0_a;
    wire [46:0] prodXY_uid893_pT2_uid872_invPolyEval_sums_result_add_0_0_b;
    logic [46:0] prodXY_uid893_pT2_uid872_invPolyEval_sums_result_add_0_0_o;
    wire [46:0] prodXY_uid893_pT2_uid872_invPolyEval_sums_result_add_0_0_q;
    wire prodXY_uid884_pT1_uid453_invPolyEval_cma_reset;
    (* preserve *) reg [7:0] prodXY_uid884_pT1_uid453_invPolyEval_cma_a0 [0:0];
    (* preserve *) reg signed [13:0] prodXY_uid884_pT1_uid453_invPolyEval_cma_c0 [0:0];
    wire signed [8:0] prodXY_uid884_pT1_uid453_invPolyEval_cma_l [0:0];
    wire signed [22:0] prodXY_uid884_pT1_uid453_invPolyEval_cma_p [0:0];
    wire signed [22:0] prodXY_uid884_pT1_uid453_invPolyEval_cma_u [0:0];
    wire signed [22:0] prodXY_uid884_pT1_uid453_invPolyEval_cma_w [0:0];
    wire signed [22:0] prodXY_uid884_pT1_uid453_invPolyEval_cma_x [0:0];
    wire signed [22:0] prodXY_uid884_pT1_uid453_invPolyEval_cma_y [0:0];
    reg signed [22:0] prodXY_uid884_pT1_uid453_invPolyEval_cma_s [0:0];
    wire [22:0] prodXY_uid884_pT1_uid453_invPolyEval_cma_qq;
    wire [21:0] prodXY_uid884_pT1_uid453_invPolyEval_cma_q;
    wire prodXY_uid884_pT1_uid453_invPolyEval_cma_ena0;
    wire prodXY_uid884_pT1_uid453_invPolyEval_cma_ena1;
    wire prodXY_uid890_pT1_uid866_invPolyEval_cma_reset;
    (* preserve *) reg [14:0] prodXY_uid890_pT1_uid866_invPolyEval_cma_a0 [0:0];
    (* preserve *) reg signed [14:0] prodXY_uid890_pT1_uid866_invPolyEval_cma_c0 [0:0];
    wire signed [15:0] prodXY_uid890_pT1_uid866_invPolyEval_cma_l [0:0];
    wire signed [30:0] prodXY_uid890_pT1_uid866_invPolyEval_cma_p [0:0];
    wire signed [30:0] prodXY_uid890_pT1_uid866_invPolyEval_cma_u [0:0];
    wire signed [30:0] prodXY_uid890_pT1_uid866_invPolyEval_cma_w [0:0];
    wire signed [30:0] prodXY_uid890_pT1_uid866_invPolyEval_cma_x [0:0];
    wire signed [30:0] prodXY_uid890_pT1_uid866_invPolyEval_cma_y [0:0];
    reg signed [30:0] prodXY_uid890_pT1_uid866_invPolyEval_cma_s [0:0];
    wire [30:0] prodXY_uid890_pT1_uid866_invPolyEval_cma_qq;
    wire [29:0] prodXY_uid890_pT1_uid866_invPolyEval_cma_q;
    wire prodXY_uid890_pT1_uid866_invPolyEval_cma_ena0;
    wire prodXY_uid890_pT1_uid866_invPolyEval_cma_ena1;
    wire sm0_uid924_pT3_uid878_invPolyEval_cma_reset;
    (* preserve *) reg signed [17:0] sm0_uid924_pT3_uid878_invPolyEval_cma_a0 [0:0];
    (* preserve *) reg signed [17:0] sm0_uid924_pT3_uid878_invPolyEval_cma_c0 [0:0];
    wire signed [35:0] sm0_uid924_pT3_uid878_invPolyEval_cma_p [0:0];
    wire signed [35:0] sm0_uid924_pT3_uid878_invPolyEval_cma_u [0:0];
    wire signed [35:0] sm0_uid924_pT3_uid878_invPolyEval_cma_w [0:0];
    wire signed [35:0] sm0_uid924_pT3_uid878_invPolyEval_cma_x [0:0];
    wire signed [35:0] sm0_uid924_pT3_uid878_invPolyEval_cma_y [0:0];
    reg signed [35:0] sm0_uid924_pT3_uid878_invPolyEval_cma_s [0:0];
    wire [35:0] sm0_uid924_pT3_uid878_invPolyEval_cma_qq;
    wire [35:0] sm0_uid924_pT3_uid878_invPolyEval_cma_q;
    wire sm0_uid924_pT3_uid878_invPolyEval_cma_ena0;
    wire sm0_uid924_pT3_uid878_invPolyEval_cma_ena1;
    wire postPEMulLog_uid85_block_rsrvd_fix_im0_cma_reset;
    (* preserve *) reg signed [18:0] postPEMulLog_uid85_block_rsrvd_fix_im0_cma_a0 [0:0];
    (* preserve *) reg signed [10:0] postPEMulLog_uid85_block_rsrvd_fix_im0_cma_c0 [0:0];
    wire signed [29:0] postPEMulLog_uid85_block_rsrvd_fix_im0_cma_p [0:0];
    wire signed [29:0] postPEMulLog_uid85_block_rsrvd_fix_im0_cma_u [0:0];
    wire signed [29:0] postPEMulLog_uid85_block_rsrvd_fix_im0_cma_w [0:0];
    wire signed [29:0] postPEMulLog_uid85_block_rsrvd_fix_im0_cma_x [0:0];
    wire signed [29:0] postPEMulLog_uid85_block_rsrvd_fix_im0_cma_y [0:0];
    reg signed [29:0] postPEMulLog_uid85_block_rsrvd_fix_im0_cma_s [0:0];
    wire [29:0] postPEMulLog_uid85_block_rsrvd_fix_im0_cma_qq;
    wire [29:0] postPEMulLog_uid85_block_rsrvd_fix_im0_cma_q;
    wire postPEMulLog_uid85_block_rsrvd_fix_im0_cma_ena0;
    wire postPEMulLog_uid85_block_rsrvd_fix_im0_cma_ena1;
    wire postPEMulLog_uid85_block_rsrvd_fix_im3_cma_reset;
    (* preserve *) reg signed [18:0] postPEMulLog_uid85_block_rsrvd_fix_im3_cma_a0 [0:0];
    (* preserve *) reg [17:0] postPEMulLog_uid85_block_rsrvd_fix_im3_cma_c0 [0:0];
    wire signed [18:0] postPEMulLog_uid85_block_rsrvd_fix_im3_cma_r [0:0];
    wire signed [37:0] postPEMulLog_uid85_block_rsrvd_fix_im3_cma_p [0:0];
    wire signed [37:0] postPEMulLog_uid85_block_rsrvd_fix_im3_cma_u [0:0];
    wire signed [37:0] postPEMulLog_uid85_block_rsrvd_fix_im3_cma_w [0:0];
    wire signed [37:0] postPEMulLog_uid85_block_rsrvd_fix_im3_cma_x [0:0];
    wire signed [37:0] postPEMulLog_uid85_block_rsrvd_fix_im3_cma_y [0:0];
    reg signed [37:0] postPEMulLog_uid85_block_rsrvd_fix_im3_cma_s [0:0];
    wire [37:0] postPEMulLog_uid85_block_rsrvd_fix_im3_cma_qq;
    wire [36:0] postPEMulLog_uid85_block_rsrvd_fix_im3_cma_q;
    wire postPEMulLog_uid85_block_rsrvd_fix_im3_cma_ena0;
    wire postPEMulLog_uid85_block_rsrvd_fix_im3_cma_ena1;
    wire prodYLogX_uid111_block_rsrvd_fix_im0_cma_reset;
    (* preserve *) reg [17:0] prodYLogX_uid111_block_rsrvd_fix_im0_cma_a0 [0:0];
    (* preserve *) reg [9:0] prodYLogX_uid111_block_rsrvd_fix_im0_cma_c0 [0:0];
    wire [27:0] prodYLogX_uid111_block_rsrvd_fix_im0_cma_p [0:0];
    wire [27:0] prodYLogX_uid111_block_rsrvd_fix_im0_cma_u [0:0];
    wire [27:0] prodYLogX_uid111_block_rsrvd_fix_im0_cma_w [0:0];
    wire [27:0] prodYLogX_uid111_block_rsrvd_fix_im0_cma_x [0:0];
    wire [27:0] prodYLogX_uid111_block_rsrvd_fix_im0_cma_y [0:0];
    reg [27:0] prodYLogX_uid111_block_rsrvd_fix_im0_cma_s [0:0];
    wire [27:0] prodYLogX_uid111_block_rsrvd_fix_im0_cma_qq;
    wire [27:0] prodYLogX_uid111_block_rsrvd_fix_im0_cma_q;
    wire prodYLogX_uid111_block_rsrvd_fix_im0_cma_ena0;
    wire prodYLogX_uid111_block_rsrvd_fix_im0_cma_ena1;
    wire prodYLogX_uid111_block_rsrvd_fix_im3_cma_reset;
    (* preserve *) reg [17:0] prodYLogX_uid111_block_rsrvd_fix_im3_cma_a0 [0:0];
    (* preserve *) reg [17:0] prodYLogX_uid111_block_rsrvd_fix_im3_cma_c0 [0:0];
    wire [35:0] prodYLogX_uid111_block_rsrvd_fix_im3_cma_p [0:0];
    wire [35:0] prodYLogX_uid111_block_rsrvd_fix_im3_cma_u [0:0];
    wire [35:0] prodYLogX_uid111_block_rsrvd_fix_im3_cma_w [0:0];
    wire [35:0] prodYLogX_uid111_block_rsrvd_fix_im3_cma_x [0:0];
    wire [35:0] prodYLogX_uid111_block_rsrvd_fix_im3_cma_y [0:0];
    reg [35:0] prodYLogX_uid111_block_rsrvd_fix_im3_cma_s [0:0];
    wire [35:0] prodYLogX_uid111_block_rsrvd_fix_im3_cma_qq;
    wire [35:0] prodYLogX_uid111_block_rsrvd_fix_im3_cma_q;
    wire prodYLogX_uid111_block_rsrvd_fix_im3_cma_ena0;
    wire prodYLogX_uid111_block_rsrvd_fix_im3_cma_ena1;
    wire prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_reset;
    (* preserve *) reg [17:0] prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_a0 [0:0];
    (* preserve *) reg [9:0] prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_c0 [0:0];
    wire [27:0] prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_p [0:0];
    wire [27:0] prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_u [0:0];
    wire [27:0] prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_w [0:0];
    wire [27:0] prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_x [0:0];
    wire [27:0] prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_y [0:0];
    reg [27:0] prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_s [0:0];
    wire [27:0] prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_qq;
    wire [25:0] prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_q;
    wire prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_ena0;
    wire prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_ena1;
    wire prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_reset;
    (* preserve *) reg [17:0] prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_a0 [0:0];
    (* preserve *) reg [17:0] prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_c0 [0:0];
    wire [35:0] prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_p [0:0];
    wire [35:0] prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_u [0:0];
    wire [35:0] prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_w [0:0];
    wire [35:0] prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_x [0:0];
    wire [35:0] prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_y [0:0];
    reg [35:0] prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_s [0:0];
    wire [35:0] prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_qq;
    wire [35:0] prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_q;
    wire prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_ena0;
    wire prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_ena1;
    wire multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_reset;
    (* preserve *) reg [17:0] multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_a0 [0:1];
    (* preserve *) reg signed [17:0] multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_c0 [0:1];
    wire signed [18:0] multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_l [0:1];
    wire signed [36:0] multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_p [0:1];
    wire signed [37:0] multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_u [0:1];
    wire signed [37:0] multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_w [0:0];
    wire signed [37:0] multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_x [0:0];
    wire signed [37:0] multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_y [0:0];
    reg signed [37:0] multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_s [0:0];
    wire [37:0] multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_qq;
    wire [36:0] multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_q;
    wire multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_ena0;
    wire multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_ena1;
    wire prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_reset;
    (* preserve *) reg signed [7:0] prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_c0 [0:1];
    wire signed [18:0] prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_r [0:1];
    wire signed [26:0] prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_p [0:1];
    wire signed [27:0] prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_u [0:1];
    wire signed [27:0] prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_w [0:0];
    wire signed [27:0] prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_x [0:0];
    wire signed [27:0] prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_y [0:0];
    reg signed [27:0] prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_s [0:0];
    wire [27:0] prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_qq;
    wire [26:0] prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_q;
    wire prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_ena0;
    wire prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_ena1;
    wire [53:0] finalSumAbsLog_uid95_block_rsrvd_fix_UpperBits_for_b_q;
    wire [52:0] finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_a;
    wire [52:0] finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_b;
    logic [52:0] finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_o;
    wire [0:0] finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_c;
    wire [51:0] finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_q;
    wire [4:0] finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_a;
    wire [4:0] finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_b;
    logic [4:0] finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_o;
    wire [0:0] finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_cin;
    wire [2:0] finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_q;
    wire [54:0] finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q;
    wire [2:0] finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_BitJoin_for_c_q;
    wire [0:0] finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_0_b;
    wire [51:0] finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_BitJoin_for_b_q;
    wire [10:0] postPEMulLog_uid85_block_rsrvd_fix_bs2_merged_bit_select_b;
    wire [17:0] postPEMulLog_uid85_block_rsrvd_fix_bs2_merged_bit_select_c;
    wire [51:0] finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [1:0] finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [9:0] prodYLogX_uid111_block_rsrvd_fix_bs2_merged_bit_select_b;
    wire [17:0] prodYLogX_uid111_block_rsrvd_fix_bs2_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_d;
    wire [7:0] yAddr_uid162_block_rsrvd_fix_merged_bit_select_b;
    wire [19:0] yAddr_uid162_block_rsrvd_fix_merged_bit_select_c;
    wire [11:0] y0_uid1061_xEQOneAbs_uid180_block_rsrvd_fix_merged_bit_select_b;
    wire [12:0] y0_uid1061_xEQOneAbs_uid180_block_rsrvd_fix_merged_bit_select_c;
    wire [11:0] x0_uid1060_xEQOneAbs_uid180_block_rsrvd_fix_merged_bit_select_b;
    wire [12:0] x0_uid1060_xEQOneAbs_uid180_block_rsrvd_fix_merged_bit_select_c;
    wire [12:0] y0_uid1068_excXM1_uid183_block_rsrvd_fix_merged_bit_select_b;
    wire [12:0] y0_uid1068_excXM1_uid183_block_rsrvd_fix_merged_bit_select_c;
    wire [12:0] y0_uid1075_excX1_uid185_block_rsrvd_fix_merged_bit_select_b;
    wire [12:0] y0_uid1075_excX1_uid185_block_rsrvd_fix_merged_bit_select_c;
    wire [6:0] prodXY_uid887_pT2_uid459_invPolyEval_bs2_merged_bit_select_b;
    wire [17:0] prodXY_uid887_pT2_uid459_invPolyEval_bs2_merged_bit_select_c;
    wire [15:0] rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b;
    wire [15:0] rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c;
    wire [7:0] rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b;
    wire [7:0] rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c;
    wire [3:0] rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b;
    wire [3:0] rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_d;
    wire [7:0] prodXY_uid893_pT2_uid872_invPolyEval_bs2_merged_bit_select_b;
    wire [17:0] prodXY_uid893_pT2_uid872_invPolyEval_bs2_merged_bit_select_c;
    wire [50:0] finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [2:0] finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    reg [1:0] redist0_leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [1:0] redist1_leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_d_1_q;
    reg [1:0] redist2_rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [1:0] redist3_rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [3:0] redist4_rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [3:0] redist5_rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [7:0] redist6_rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [7:0] redist7_rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [15:0] redist8_rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [15:0] redist9_rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [7:0] redist10_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_3_q;
    reg [7:0] redist10_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_3_delay_0;
    reg [7:0] redist10_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_3_delay_1;
    reg [7:0] redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_q;
    reg [7:0] redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_delay_0;
    reg [7:0] redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_delay_1;
    reg [7:0] redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_delay_2;
    reg [7:0] redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_q;
    reg [7:0] redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_delay_0;
    reg [7:0] redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_delay_1;
    reg [7:0] redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_delay_2;
    reg [19:0] redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3_q;
    reg [19:0] redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3_delay_0;
    reg [19:0] redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_q;
    reg [19:0] redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_delay_0;
    reg [1:0] redist16_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [1:0] redist17_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [1:0] redist18_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_d_1_q;
    reg [1:0] redist19_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_d_2_q;
    reg [1:0] redist20_finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [0:0] redist21_finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_0_b_1_q;
    reg [54:0] redist22_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_1_q;
    reg [51:0] redist24_finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_q_1_q;
    reg [26:0] redist25_prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_q_1_q;
    reg [36:0] redist26_multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_q_1_q;
    reg [35:0] redist27_prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_q_1_q;
    reg [25:0] redist28_prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_q_1_q;
    reg [35:0] redist29_prodYLogX_uid111_block_rsrvd_fix_im3_cma_q_1_q;
    reg [27:0] redist30_prodYLogX_uid111_block_rsrvd_fix_im0_cma_q_1_q;
    reg [36:0] redist31_postPEMulLog_uid85_block_rsrvd_fix_im3_cma_q_1_q;
    reg [29:0] redist32_postPEMulLog_uid85_block_rsrvd_fix_im0_cma_q_1_q;
    reg [35:0] redist33_sm0_uid924_pT3_uid878_invPolyEval_cma_q_1_q;
    reg [9:0] redist34_prodXY_uid893_pT2_uid872_invPolyEval_im0_q_1_q;
    reg [14:0] redist35_prodXY_uid887_pT2_uid459_invPolyEval_im0_q_1_q;
    reg [14:0] redist36_memoryC3_uid858_expTables_lutmem_r_1_q;
    reg [23:0] redist37_memoryC2_uid855_expTables_lutmem_r_1_q;
    reg [32:0] redist38_memoryC1_uid852_expTables_lutmem_r_1_q;
    reg [39:0] redist39_memoryC0_uid848_expTables_lutmem_r_1_q;
    reg [2:0] redist40_memoryC1_uid442_lnTables_lutmem_r_1_q;
    reg [9:0] redist41_memoryC1_uid441_lnTables_lutmem_r_1_q;
    reg [9:0] redist42_memoryC1_uid440_lnTables_lutmem_r_1_q;
    reg [3:0] redist43_memoryC0_uid437_lnTables_lutmem_r_1_q;
    reg [9:0] redist44_memoryC0_uid436_lnTables_lutmem_r_1_q;
    reg [9:0] redist45_memoryC0_uid435_lnTables_lutmem_r_1_q;
    reg [9:0] redist46_memoryC0_uid434_lnTables_lutmem_r_1_q;
    reg [0:0] redist49_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_62_q;
    reg [0:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_q;
    reg [0:0] redist51_xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b_1_q;
    reg [0:0] redist52_xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b_1_q;
    reg [5:0] redist53_sm0_uid927_pT3_uid878_invPolyEval_q_1_q;
    reg [25:0] redist54_osig_uid888_pT2_uid459_invPolyEval_b_1_q;
    reg [14:0] redist55_osig_uid885_pT1_uid453_invPolyEval_b_1_q;
    reg [33:0] redist56_highBBits_uid880_invPolyEval_b_1_q;
    reg [1:0] redist57_lowRangeB_uid879_invPolyEval_b_1_q;
    reg [24:0] redist58_highBBits_uid874_invPolyEval_b_1_q;
    reg [0:0] redist59_lowRangeB_uid873_invPolyEval_b_2_q;
    reg [0:0] redist59_lowRangeB_uid873_invPolyEval_b_2_delay_0;
    reg [13:0] redist60_highBBits_uid868_invPolyEval_b_1_q;
    reg [0:0] redist61_lowRangeB_uid867_invPolyEval_b_2_q;
    reg [0:0] redist61_lowRangeB_uid867_invPolyEval_b_2_delay_0;
    reg [39:0] redist62_sOuputFormat_uid846_eRndXlog2_uid142_block_rsrvd_fix_b_1_q;
    reg [32:0] redist63_sOuputFormat_uid660_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q;
    reg [3:0] redist64_xv5_uid648_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q;
    reg [4:0] redist65_xv4_uid647_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q;
    reg [4:0] redist66_xv3_uid646_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q;
    reg [4:0] redist67_xv2_uid645_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q;
    reg [4:0] redist68_xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_q;
    reg [4:0] redist68_xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_delay_0;
    reg [4:0] redist69_xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_q;
    reg [4:0] redist69_xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_delay_0;
    reg [5:0] redist70_r_uid500_countZLog_uid96_block_rsrvd_fix_q_1_q;
    reg [0:0] redist71_vCount_uid487_countZLog_uid96_block_rsrvd_fix_q_2_q;
    reg [0:0] redist72_vCount_uid481_countZLog_uid96_block_rsrvd_fix_q_3_q;
    reg [0:0] redist72_vCount_uid481_countZLog_uid96_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_q;
    reg [0:0] redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_delay_0;
    reg [0:0] redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_delay_1;
    reg [0:0] redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_delay_2;
    reg [0:0] redist75_vCount_uid467_countZLog_uid96_block_rsrvd_fix_q_7_q;
    reg [31:0] redist76_rVStage_uid466_countZLog_uid96_block_rsrvd_fix_b_1_q;
    reg [0:0] redist77_lowRangeB_uid454_invPolyEval_b_1_q;
    reg [13:0] redist78_os_uid447_lnTables_q_1_q;
    reg [38:0] redist79_sOuputFormat_uid432_eLn2_uid70_block_rsrvd_fix_b_1_q;
    reg [3:0] redist80_xv1_uid428_eLn2_uid70_block_rsrvd_fix_b_1_q;
    reg [4:0] redist81_xv0_uid427_eLn2_uid70_block_rsrvd_fix_b_1_q;
    reg [0:0] redist82_signR_uid239_block_rsrvd_fix_q_2_q;
    reg [7:0] redist83_expRPostOne_uid225_block_rsrvd_fix_q_3_q;
    reg [7:0] redist83_expRPostOne_uid225_block_rsrvd_fix_q_3_delay_0;
    reg [16:0] redist84_fracRPostOne_uid224_block_rsrvd_fix_q_3_q;
    reg [16:0] redist84_fracRPostOne_uid224_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist85_excROne_uid223_block_rsrvd_fix_q_28_q;
    reg [0:0] redist86_excRNaN_uid220_block_rsrvd_fix_q_30_q;
    reg [0:0] redist87_invSignX_uid188_block_rsrvd_fix_q_1_q;
    reg [0:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_q;
    reg [0:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_q;
    reg [16:0] redist90_fracR_uid169_block_rsrvd_fix_b_2_q;
    reg [16:0] redist90_fracR_uid169_block_rsrvd_fix_b_2_delay_0;
    reg [0:0] redist91_peORExpInc_uid166_block_rsrvd_fix_b_1_q;
    reg [27:0] redist92_yRed_uid159_block_rsrvd_fix_b_1_q;
    reg [0:0] redist93_yExtNeg_uid157_block_rsrvd_fix_b_1_q;
    reg [37:0] redist94_fxpInPreAlignQ2_uid147_block_rsrvd_fix_b_1_q;
    reg [5:0] redist96_shiftValExp_uid138_block_rsrvd_fix_q_2_q;
    reg [5:0] redist97_shiftValuePreSatRedExp_uid137_block_rsrvd_fix_b_1_q;
    reg [0:0] redist98_expOvfInitialExp_uid135_block_rsrvd_fix_b_26_q;
    reg [0:0] redist99_signProd_uid121_block_rsrvd_fix_q_1_q;
    reg [0:0] redist100_signProd_uid121_block_rsrvd_fix_q_5_q;
    reg [0:0] redist100_signProd_uid121_block_rsrvd_fix_q_5_delay_0;
    reg [0:0] redist100_signProd_uid121_block_rsrvd_fix_q_5_delay_1;
    reg [0:0] redist100_signProd_uid121_block_rsrvd_fix_q_5_delay_2;
    reg [0:0] redist101_signProd_uid121_block_rsrvd_fix_q_6_q;
    reg [0:0] redist102_signProd_uid121_block_rsrvd_fix_q_29_q;
    reg [9:0] redist103_expProdPhase1_uid118_block_rsrvd_fix_q_4_q;
    reg [9:0] redist103_expProdPhase1_uid118_block_rsrvd_fix_q_4_delay_0;
    reg [9:0] redist103_expProdPhase1_uid118_block_rsrvd_fix_q_4_delay_1;
    reg [27:0] redist104_oFracProd_uid117_block_rsrvd_fix_q_5_q;
    reg [27:0] redist104_oFracProd_uid117_block_rsrvd_fix_q_5_delay_0;
    reg [27:0] redist104_oFracProd_uid117_block_rsrvd_fix_q_5_delay_1;
    reg [8:0] redist105_expRLog_uid109_block_rsrvd_fix_b_1_q;
    reg [26:0] redist106_fracRLog_uid108_block_rsrvd_fix_b_1_q;
    reg [27:0] redist107_fracRPreRndLog_uid104_block_rsrvd_fix_b_1_q;
    reg [0:0] redist108_signRLog0_uid100_block_rsrvd_fix_q_16_q;
    reg [33:0] redist109_highBBits_uid89_block_rsrvd_fix_b_1_q;
    reg [13:0] redist110_lowRangeB_uid88_block_rsrvd_fix_b_2_q;
    reg [13:0] redist110_lowRangeB_uid88_block_rsrvd_fix_b_2_delay_0;
    reg [28:0] redist111_peORNatLog_uid77_block_rsrvd_fix_b_1_q;
    reg [7:0] redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_q;
    reg [7:0] redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_delay_0;
    reg [7:0] redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_delay_1;
    reg [7:0] redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_delay_2;
    reg [9:0] redist113_yAddr_uid74_block_rsrvd_fix_b_3_q;
    reg [9:0] redist113_yAddr_uid74_block_rsrvd_fix_b_3_delay_0;
    reg [9:0] redist113_yAddr_uid74_block_rsrvd_fix_b_3_delay_1;
    reg [9:0] redist114_yAddr_uid74_block_rsrvd_fix_b_8_q;
    reg [9:0] redist114_yAddr_uid74_block_rsrvd_fix_b_8_delay_0;
    reg [9:0] redist114_yAddr_uid74_block_rsrvd_fix_b_8_delay_1;
    reg [0:0] redist115_caseLog_uid71_block_rsrvd_fix_q_13_q;
    reg [0:0] redist116_caseLog_uid71_block_rsrvd_fix_q_16_q;
    reg [0:0] redist116_caseLog_uid71_block_rsrvd_fix_q_16_delay_0;
    reg [0:0] redist116_caseLog_uid71_block_rsrvd_fix_q_16_delay_1;
    reg [0:0] redist117_caseLog_uid71_block_rsrvd_fix_q_18_q;
    reg [0:0] redist117_caseLog_uid71_block_rsrvd_fix_q_18_delay_0;
    reg [0:0] redist118_yIsOddInt_uid68_block_rsrvd_fix_q_30_q;
    reg [0:0] redist119_intYHasOddItPart_uid65_block_rsrvd_fix_c_2_q;
    reg [0:0] redist120_yIsInt_uid59_block_rsrvd_fix_q_3_q;
    reg [0:0] redist120_yIsInt_uid59_block_rsrvd_fix_q_3_delay_0;
    reg [0:0] redist121_yIsInt_uid59_block_rsrvd_fix_q_30_q;
    reg [0:0] redist122_yIsInt_uid59_block_rsrvd_fix_q_31_q;
    reg [4:0] redist123_expYMBiasRed_uid51_block_rsrvd_fix_b_1_q;
    reg [0:0] redist124_expIsGTZ_uid50_block_rsrvd_fix_n_2_q;
    reg [0:0] redist125_expIsGTWF_uid49_block_rsrvd_fix_c_3_q;
    reg [0:0] redist125_expIsGTWF_uid49_block_rsrvd_fix_c_3_delay_0;
    reg [0:0] redist126_expIsGTEWF_uid48_block_rsrvd_fix_n_2_q;
    reg [0:0] redist127_signY_uid44_block_rsrvd_fix_b_5_q;
    reg [0:0] redist127_signY_uid44_block_rsrvd_fix_b_5_delay_0;
    reg [0:0] redist127_signY_uid44_block_rsrvd_fix_b_5_delay_1;
    reg [0:0] redist127_signY_uid44_block_rsrvd_fix_b_5_delay_2;
    reg [0:0] redist127_signY_uid44_block_rsrvd_fix_b_5_delay_3;
    reg [0:0] redist128_signY_uid44_block_rsrvd_fix_b_34_q;
    reg [0:0] redist129_signX_uid41_block_rsrvd_fix_b_36_q;
    reg [0:0] redist130_signX_uid41_block_rsrvd_fix_b_63_q;
    reg [0:0] redist131_signX_uid41_block_rsrvd_fix_b_64_q;
    reg [0:0] redist132_excR_y_uid40_block_rsrvd_fix_q_28_q;
    reg [0:0] redist133_excR_y_uid40_block_rsrvd_fix_q_29_q;
    reg [0:0] redist134_excI_y_uid36_block_rsrvd_fix_q_29_q;
    reg [0:0] redist135_fracXIsZero_uid34_block_rsrvd_fix_q_4_q;
    reg [0:0] redist135_fracXIsZero_uid34_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist135_fracXIsZero_uid34_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist136_expXIsMax_uid33_block_rsrvd_fix_q_4_q;
    reg [0:0] redist136_expXIsMax_uid33_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist136_expXIsMax_uid33_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist137_excZ_y_uid32_block_rsrvd_fix_q_2_q;
    reg [0:0] redist138_excZ_y_uid32_block_rsrvd_fix_q_3_q;
    reg [0:0] redist139_excZ_y_uid32_block_rsrvd_fix_q_4_q;
    reg [16:0] redist140_frac_y_uid31_block_rsrvd_fix_b_1_q;
    reg [7:0] redist141_exp_y_uid30_block_rsrvd_fix_b_1_q;
    reg [0:0] redist142_excR_x_uid26_block_rsrvd_fix_q_1_q;
    reg [0:0] redist143_excR_x_uid26_block_rsrvd_fix_q_2_q;
    reg [0:0] redist144_excR_x_uid26_block_rsrvd_fix_q_29_q;
    reg [0:0] redist145_excR_x_uid26_block_rsrvd_fix_q_30_q;
    reg [0:0] redist146_excI_x_uid22_block_rsrvd_fix_q_29_q;
    reg [0:0] redist147_fracXIsZero_uid20_block_rsrvd_fix_q_22_q;
    reg [0:0] redist148_expXIsMax_uid19_block_rsrvd_fix_q_21_q;
    reg [0:0] redist149_expXIsMax_uid19_block_rsrvd_fix_q_22_q;
    reg [0:0] redist150_excZ_x_uid18_block_rsrvd_fix_q_21_q;
    reg [0:0] redist151_excZ_x_uid18_block_rsrvd_fix_q_51_q;
    reg [16:0] redist152_frac_x_uid17_block_rsrvd_fix_b_1_q;
    reg [16:0] redist153_frac_x_uid17_block_rsrvd_fix_b_4_q;
    reg [16:0] redist153_frac_x_uid17_block_rsrvd_fix_b_4_delay_0;
    reg [16:0] redist155_frac_x_uid17_block_rsrvd_fix_b_13_q;
    reg [7:0] redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_inputreg0_q;
    reg [7:0] redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_inputreg0_q;
    reg [19:0] redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3_inputreg0_q;
    reg [19:0] redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_inputreg0_q;
    reg [19:0] redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_outputreg0_q;
    reg [19:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_inputreg0_q;
    reg [19:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_outputreg0_q;
    wire redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_reset0;
    wire [19:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_ia;
    wire [0:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_aa;
    wire [0:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_ab;
    wire [19:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_iq;
    wire [19:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_q;
    wire [0:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_rdcnt_q;
    (* preserve *) reg [0:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_rdcnt_i;
    reg [0:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_wraddr_q;
    (* dont_merge *) reg [0:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_cmpReg_q;
    wire [0:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_notEnable_q;
    wire [0:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_nor_q;
    (* dont_merge *) reg [0:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_sticky_ena_q;
    wire [0:0] redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_enaAnd_q;
    reg [54:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_inputreg0_q;
    reg [54:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_outputreg0_q;
    wire redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_reset0;
    wire [54:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_ia;
    wire [1:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_aa;
    wire [1:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_ab;
    wire [54:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_iq;
    wire [54:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_q;
    wire [1:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_q;
    (* preserve *) reg [1:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_i;
    (* preserve *) reg redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_eq;
    reg [1:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_wraddr_q;
    wire [1:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_last_q;
    wire [0:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_cmp_q;
    (* dont_merge *) reg [0:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_cmpReg_q;
    wire [0:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_notEnable_q;
    wire [0:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_nor_q;
    (* dont_merge *) reg [0:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_sticky_ena_q;
    wire [0:0] redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_enaAnd_q;
    reg [0:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_inputreg0_q;
    reg [0:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_outputreg0_q;
    wire redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_reset0;
    wire [0:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_ia;
    wire [4:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_aa;
    wire [4:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_ab;
    wire [0:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_iq;
    wire [0:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_q;
    wire [4:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_q;
    (* preserve *) reg [4:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_i;
    (* preserve *) reg redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_eq;
    reg [4:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_wraddr_q;
    wire [5:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_last_q;
    wire [5:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_cmp_b;
    wire [0:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_cmp_q;
    (* dont_merge *) reg [0:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_cmpReg_q;
    wire [0:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_notEnable_q;
    wire [0:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_nor_q;
    (* dont_merge *) reg [0:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_sticky_ena_q;
    wire [0:0] redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_enaAnd_q;
    reg [0:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_inputreg0_q;
    reg [0:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_outputreg0_q;
    wire redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_reset0;
    wire [0:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_ia;
    wire [4:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_aa;
    wire [4:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_ab;
    wire [0:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_iq;
    wire [0:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_q;
    wire [4:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_q;
    (* preserve *) reg [4:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_i;
    (* preserve *) reg redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_eq;
    reg [4:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_wraddr_q;
    wire [5:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_last_q;
    wire [5:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_cmp_b;
    wire [0:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_cmp_q;
    (* dont_merge *) reg [0:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_cmpReg_q;
    wire [0:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_notEnable_q;
    wire [0:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_nor_q;
    (* dont_merge *) reg [0:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_sticky_ena_q;
    wire [0:0] redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_enaAnd_q;
    reg [22:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_inputreg0_q;
    reg [22:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_outputreg0_q;
    wire redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_reset0;
    wire [22:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_ia;
    wire [1:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_aa;
    wire [1:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_ab;
    wire [22:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_iq;
    wire [22:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_q;
    wire [1:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_q;
    (* preserve *) reg [1:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_i;
    (* preserve *) reg redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_eq;
    reg [1:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_wraddr_q;
    wire [1:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_last_q;
    wire [0:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_cmp_q;
    (* dont_merge *) reg [0:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_cmpReg_q;
    wire [0:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_notEnable_q;
    wire [0:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_nor_q;
    (* dont_merge *) reg [0:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_sticky_ena_q;
    wire [0:0] redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_enaAnd_q;
    reg [10:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_inputreg0_q;
    reg [10:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_outputreg0_q;
    wire redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_reset0;
    wire [10:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_ia;
    wire [3:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_aa;
    wire [3:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_ab;
    wire [10:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_iq;
    wire [10:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_q;
    wire [3:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_rdcnt_q;
    (* preserve *) reg [3:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_rdcnt_i;
    reg [3:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_wraddr_q;
    wire [4:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_last_q;
    wire [4:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_cmp_b;
    wire [0:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_cmp_q;
    (* dont_merge *) reg [0:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_cmpReg_q;
    wire [0:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_notEnable_q;
    wire [0:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_nor_q;
    (* dont_merge *) reg [0:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_sticky_ena_q;
    wire [0:0] redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_enaAnd_q;
    reg [27:0] redist104_oFracProd_uid117_block_rsrvd_fix_q_5_inputreg0_q;
    reg [27:0] redist104_oFracProd_uid117_block_rsrvd_fix_q_5_outputreg0_q;
    reg [9:0] redist114_yAddr_uid74_block_rsrvd_fix_b_8_inputreg0_q;
    reg [9:0] redist114_yAddr_uid74_block_rsrvd_fix_b_8_outputreg0_q;
    reg [16:0] redist153_frac_x_uid17_block_rsrvd_fix_b_4_inputreg0_q;
    reg [16:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_inputreg0_q;
    reg [16:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_outputreg0_q;
    wire redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_reset0;
    wire [16:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_ia;
    wire [2:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_aa;
    wire [2:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_ab;
    wire [16:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_iq;
    wire [16:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_q;
    wire [2:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_q;
    (* preserve *) reg [2:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_i;
    (* preserve *) reg redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_eq;
    reg [2:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_wraddr_q;
    wire [2:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_last_q;
    wire [0:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_cmp_q;
    (* dont_merge *) reg [0:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_cmpReg_q;
    wire [0:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_notEnable_q;
    wire [0:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_nor_q;
    (* dont_merge *) reg [0:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_sticky_ena_q;
    wire [0:0] redist154_frac_x_uid17_block_rsrvd_fix_b_12_enaAnd_q;
    reg [7:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_inputreg0_q;
    reg [7:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_outputreg0_q;
    wire redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_reset0;
    wire [7:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_ia;
    wire [3:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_aa;
    wire [3:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_ab;
    wire [7:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_iq;
    wire [7:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_q;
    wire [3:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_q;
    (* preserve *) reg [3:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_i;
    (* preserve *) reg redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_eq;
    reg [3:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_wraddr_q;
    wire [4:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_last_q;
    wire [4:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_cmp_b;
    wire [0:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_cmp_q;
    (* dont_merge *) reg [0:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_cmpReg_q;
    wire [0:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_notEnable_q;
    wire [0:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_nor_q;
    (* dont_merge *) reg [0:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_sticky_ena_q;
    wire [0:0] redist156_exp_x_uid16_block_rsrvd_fix_b_13_enaAnd_q;
    reg [0:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_inputreg0_q;
    reg [0:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_outputreg0_q;
    wire redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_reset0;
    wire [0:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_ia;
    wire [4:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_aa;
    wire [4:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_ab;
    wire [0:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_iq;
    wire [0:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_q;
    wire [4:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_i;
    (* preserve *) reg redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_eq;
    reg [4:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_wraddr_q;
    wire [5:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_last_q;
    wire [5:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_cmp_b;
    wire [0:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_cmpReg_q;
    wire [0:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_notEnable_q;
    wire [0:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_sticky_ena_q;
    wire [0:0] redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_enaAnd_q;
    reg [0:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_inputreg0_q;
    reg [0:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_outputreg0_q;
    wire redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_reset0;
    wire [0:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_ia;
    wire [4:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_aa;
    wire [4:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_ab;
    wire [0:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_iq;
    wire [0:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_q;
    wire [4:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_i;
    (* preserve *) reg redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_eq;
    reg [4:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_wraddr_q;
    wire [5:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_last_q;
    wire [5:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_cmp_b;
    wire [0:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_cmpReg_q;
    wire [0:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_notEnable_q;
    wire [0:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_sticky_ena_q;
    wire [0:0] redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_enaAnd_q;
    reg [0:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_inputreg0_q;
    reg [0:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_outputreg0_q;
    wire redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_reset0;
    wire [0:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_ia;
    wire [4:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_aa;
    wire [4:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_ab;
    wire [0:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_iq;
    wire [0:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_q;
    wire [4:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_i;
    (* preserve *) reg redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_eq;
    reg [4:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_wraddr_q;
    wire [5:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_last_q;
    wire [5:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_cmp_b;
    wire [0:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_cmpReg_q;
    wire [0:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_notEnable_q;
    wire [0:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_sticky_ena_q;
    wire [0:0] redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // frac_y_uid31_block_rsrvd_fix(BITSELECT,30)@30
    assign frac_y_uid31_block_rsrvd_fix_b = in_1[16:0];

    // redist140_frac_y_uid31_block_rsrvd_fix_b_1(DELAY,1306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist140_frac_y_uid31_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist140_frac_y_uid31_block_rsrvd_fix_b_1_q <= $unsigned(frac_y_uid31_block_rsrvd_fix_b);
        end
    end

    // oFracY_uid60_block_rsrvd_fix(BITJOIN,59)@31
    assign oFracY_uid60_block_rsrvd_fix_q = {VCC_q, redist140_frac_y_uid31_block_rsrvd_fix_b_1_q};

    // cstBias_uid8_block_rsrvd_fix(CONSTANT,7)
    assign cstBias_uid8_block_rsrvd_fix_q = $unsigned(8'b01111111);

    // exp_y_uid30_block_rsrvd_fix(BITSELECT,29)@30
    assign exp_y_uid30_block_rsrvd_fix_b = in_1[24:17];

    // expYMBias_uid47_block_rsrvd_fix(SUB,46)@30
    assign expYMBias_uid47_block_rsrvd_fix_a = {1'b0, exp_y_uid30_block_rsrvd_fix_b};
    assign expYMBias_uid47_block_rsrvd_fix_b = {1'b0, cstBias_uid8_block_rsrvd_fix_q};
    assign expYMBias_uid47_block_rsrvd_fix_o = $unsigned(expYMBias_uid47_block_rsrvd_fix_a) - $unsigned(expYMBias_uid47_block_rsrvd_fix_b);
    assign expYMBias_uid47_block_rsrvd_fix_q = expYMBias_uid47_block_rsrvd_fix_o[8:0];

    // expYMBiasRed_uid51_block_rsrvd_fix(BITSELECT,50)@30
    assign expYMBiasRed_uid51_block_rsrvd_fix_in = expYMBias_uid47_block_rsrvd_fix_q[4:0];
    assign expYMBiasRed_uid51_block_rsrvd_fix_b = expYMBiasRed_uid51_block_rsrvd_fix_in[4:0];

    // redist123_expYMBiasRed_uid51_block_rsrvd_fix_b_1(DELAY,1289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist123_expYMBiasRed_uid51_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist123_expYMBiasRed_uid51_block_rsrvd_fix_b_1_q <= $unsigned(expYMBiasRed_uid51_block_rsrvd_fix_b);
        end
    end

    // maskTableParity_uid61_block_rsrvd_fix(LOOKUP,60)@31
    always @(redist123_expYMBiasRed_uid51_block_rsrvd_fix_b_1_q)
    begin
        // Begin reserved scope level
        unique case (redist123_expYMBiasRed_uid51_block_rsrvd_fix_b_1_q)
            5'b00000 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b100000000000000000;
            5'b00001 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b010000000000000000;
            5'b00010 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b001000000000000000;
            5'b00011 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000100000000000000;
            5'b00100 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000010000000000000;
            5'b00101 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000001000000000000;
            5'b00110 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000000100000000000;
            5'b00111 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000000010000000000;
            5'b01000 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000000001000000000;
            5'b01001 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000000000100000000;
            5'b01010 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000000000010000000;
            5'b01011 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000000000001000000;
            5'b01100 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000000000000100000;
            5'b01101 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000000000000010000;
            5'b01110 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000000000000001000;
            5'b01111 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000000000000000100;
            5'b10000 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000000000000000010;
            5'b10001 : maskTableParity_uid61_block_rsrvd_fix_q = 18'b000000000000000001;
            default : maskTableParity_uid61_block_rsrvd_fix_q = 18'b100000000000000000;
        endcase
        // End reserved scope level
    end

    // oFracYPostMask_uid64_block_rsrvd_fix(LOGICAL,63)@31 + 1
    assign oFracYPostMask_uid64_block_rsrvd_fix_qi = maskTableParity_uid61_block_rsrvd_fix_q & oFracY_uid60_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(18), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oFracYPostMask_uid64_block_rsrvd_fix_delay ( .xin(oFracYPostMask_uid64_block_rsrvd_fix_qi), .xout(oFracYPostMask_uid64_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // intYHasOddItPart_uid65_block_rsrvd_fix(COMPARE,64)@32 + 1
    assign intYHasOddItPart_uid65_block_rsrvd_fix_a = {19'b0000000000000000000, GND_q};
    assign intYHasOddItPart_uid65_block_rsrvd_fix_b = {2'b00, oFracYPostMask_uid64_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            intYHasOddItPart_uid65_block_rsrvd_fix_o <= 20'b0;
        end
        else
        begin
            intYHasOddItPart_uid65_block_rsrvd_fix_o <= $unsigned(intYHasOddItPart_uid65_block_rsrvd_fix_a) - $unsigned(intYHasOddItPart_uid65_block_rsrvd_fix_b);
        end
    end
    assign intYHasOddItPart_uid65_block_rsrvd_fix_c[0] = intYHasOddItPart_uid65_block_rsrvd_fix_o[19];

    // redist119_intYHasOddItPart_uid65_block_rsrvd_fix_c_2(DELAY,1285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist119_intYHasOddItPart_uid65_block_rsrvd_fix_c_2_q <= '0;
        end
        else
        begin
            redist119_intYHasOddItPart_uid65_block_rsrvd_fix_c_2_q <= $unsigned(intYHasOddItPart_uid65_block_rsrvd_fix_c);
        end
    end

    // redist141_exp_y_uid30_block_rsrvd_fix_b_1(DELAY,1307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist141_exp_y_uid30_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist141_exp_y_uid30_block_rsrvd_fix_b_1_q <= $unsigned(exp_y_uid30_block_rsrvd_fix_b);
        end
    end

    // cstBiasPWF_uid12_block_rsrvd_fix(CONSTANT,11)
    assign cstBiasPWF_uid12_block_rsrvd_fix_q = $unsigned(8'b10010000);

    // expIsGTWF_uid49_block_rsrvd_fix(COMPARE,48)@31 + 1
    assign expIsGTWF_uid49_block_rsrvd_fix_a = {2'b00, cstBiasPWF_uid12_block_rsrvd_fix_q};
    assign expIsGTWF_uid49_block_rsrvd_fix_b = {2'b00, redist141_exp_y_uid30_block_rsrvd_fix_b_1_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expIsGTWF_uid49_block_rsrvd_fix_o <= 10'b0;
        end
        else
        begin
            expIsGTWF_uid49_block_rsrvd_fix_o <= $unsigned(expIsGTWF_uid49_block_rsrvd_fix_a) - $unsigned(expIsGTWF_uid49_block_rsrvd_fix_b);
        end
    end
    assign expIsGTWF_uid49_block_rsrvd_fix_c[0] = expIsGTWF_uid49_block_rsrvd_fix_o[9];

    // redist125_expIsGTWF_uid49_block_rsrvd_fix_c_3(DELAY,1291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist125_expIsGTWF_uid49_block_rsrvd_fix_c_3_delay_0 <= '0;
            redist125_expIsGTWF_uid49_block_rsrvd_fix_c_3_q <= '0;
        end
        else
        begin
            redist125_expIsGTWF_uid49_block_rsrvd_fix_c_3_delay_0 <= $unsigned(expIsGTWF_uid49_block_rsrvd_fix_c);
            redist125_expIsGTWF_uid49_block_rsrvd_fix_c_3_q <= redist125_expIsGTWF_uid49_block_rsrvd_fix_c_3_delay_0;
        end
    end

    // cstAllZWE_uid15_block_rsrvd_fix(CONSTANT,14)
    assign cstAllZWE_uid15_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // excZ_y_uid32_block_rsrvd_fix(LOGICAL,31)@31 + 1
    assign excZ_y_uid32_block_rsrvd_fix_qi = $unsigned(redist141_exp_y_uid30_block_rsrvd_fix_b_1_q == cstAllZWE_uid15_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_y_uid32_block_rsrvd_fix_delay ( .xin(excZ_y_uid32_block_rsrvd_fix_qi), .xout(excZ_y_uid32_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist137_excZ_y_uid32_block_rsrvd_fix_q_2(DELAY,1303)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist137_excZ_y_uid32_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist137_excZ_y_uid32_block_rsrvd_fix_q_2_q <= $unsigned(excZ_y_uid32_block_rsrvd_fix_q);
        end
    end

    // redist138_excZ_y_uid32_block_rsrvd_fix_q_3(DELAY,1304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist138_excZ_y_uid32_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist138_excZ_y_uid32_block_rsrvd_fix_q_3_q <= $unsigned(redist137_excZ_y_uid32_block_rsrvd_fix_q_2_q);
        end
    end

    // notZeroOrBigEven_uid66_block_rsrvd_fix(LOGICAL,65)@34
    assign notZeroOrBigEven_uid66_block_rsrvd_fix_q = redist138_excZ_y_uid32_block_rsrvd_fix_q_3_q | redist125_expIsGTWF_uid49_block_rsrvd_fix_c_3_q;

    // invNotZeroOrBigEven_uid67_block_rsrvd_fix(LOGICAL,66)@34
    assign invNotZeroOrBigEven_uid67_block_rsrvd_fix_q = ~ (notZeroOrBigEven_uid66_block_rsrvd_fix_q);

    // maskTable_uid52_block_rsrvd_fix(LOOKUP,51)@31
    always @(redist123_expYMBiasRed_uid51_block_rsrvd_fix_b_1_q)
    begin
        // Begin reserved scope level
        unique case (redist123_expYMBiasRed_uid51_block_rsrvd_fix_b_1_q)
            5'b00000 : maskTable_uid52_block_rsrvd_fix_q = 17'b11111111111111111;
            5'b00001 : maskTable_uid52_block_rsrvd_fix_q = 17'b01111111111111111;
            5'b00010 : maskTable_uid52_block_rsrvd_fix_q = 17'b00111111111111111;
            5'b00011 : maskTable_uid52_block_rsrvd_fix_q = 17'b00011111111111111;
            5'b00100 : maskTable_uid52_block_rsrvd_fix_q = 17'b00001111111111111;
            5'b00101 : maskTable_uid52_block_rsrvd_fix_q = 17'b00000111111111111;
            5'b00110 : maskTable_uid52_block_rsrvd_fix_q = 17'b00000011111111111;
            5'b00111 : maskTable_uid52_block_rsrvd_fix_q = 17'b00000001111111111;
            5'b01000 : maskTable_uid52_block_rsrvd_fix_q = 17'b00000000111111111;
            5'b01001 : maskTable_uid52_block_rsrvd_fix_q = 17'b00000000011111111;
            5'b01010 : maskTable_uid52_block_rsrvd_fix_q = 17'b00000000001111111;
            5'b01011 : maskTable_uid52_block_rsrvd_fix_q = 17'b00000000000111111;
            5'b01100 : maskTable_uid52_block_rsrvd_fix_q = 17'b00000000000011111;
            5'b01101 : maskTable_uid52_block_rsrvd_fix_q = 17'b00000000000001111;
            5'b01110 : maskTable_uid52_block_rsrvd_fix_q = 17'b00000000000000111;
            5'b01111 : maskTable_uid52_block_rsrvd_fix_q = 17'b00000000000000011;
            5'b10000 : maskTable_uid52_block_rsrvd_fix_q = 17'b00000000000000001;
            default : maskTable_uid52_block_rsrvd_fix_q = 17'b11111111111111111;
        endcase
        // End reserved scope level
    end

    // fracYPostMask_uid55_block_rsrvd_fix(LOGICAL,54)@31 + 1
    assign fracYPostMask_uid55_block_rsrvd_fix_qi = maskTable_uid52_block_rsrvd_fix_q & redist140_frac_y_uid31_block_rsrvd_fix_b_1_q;
    dspba_delay_ver #( .width(17), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracYPostMask_uid55_block_rsrvd_fix_delay ( .xin(fracYPostMask_uid55_block_rsrvd_fix_qi), .xout(fracYPostMask_uid55_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // yHasSomeFracBits_uid56_block_rsrvd_fix(COMPARE,55)@32 + 1
    assign yHasSomeFracBits_uid56_block_rsrvd_fix_a = {18'b000000000000000000, GND_q};
    assign yHasSomeFracBits_uid56_block_rsrvd_fix_b = {2'b00, fracYPostMask_uid55_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            yHasSomeFracBits_uid56_block_rsrvd_fix_o <= 19'b0;
        end
        else
        begin
            yHasSomeFracBits_uid56_block_rsrvd_fix_o <= $unsigned(yHasSomeFracBits_uid56_block_rsrvd_fix_a) - $unsigned(yHasSomeFracBits_uid56_block_rsrvd_fix_b);
        end
    end
    assign yHasSomeFracBits_uid56_block_rsrvd_fix_c[0] = yHasSomeFracBits_uid56_block_rsrvd_fix_o[18];

    // invYHasSomeFracBits_uid57_block_rsrvd_fix(LOGICAL,56)@33
    assign invYHasSomeFracBits_uid57_block_rsrvd_fix_q = ~ (yHasSomeFracBits_uid56_block_rsrvd_fix_c);

    // expIsGTZ_uid50_block_rsrvd_fix(COMPARE,49)@31 + 1
    assign expIsGTZ_uid50_block_rsrvd_fix_a = {2'b00, redist141_exp_y_uid30_block_rsrvd_fix_b_1_q};
    assign expIsGTZ_uid50_block_rsrvd_fix_b = {2'b00, cstBias_uid8_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expIsGTZ_uid50_block_rsrvd_fix_o <= 10'b0;
        end
        else
        begin
            expIsGTZ_uid50_block_rsrvd_fix_o <= $unsigned(expIsGTZ_uid50_block_rsrvd_fix_a) - $unsigned(expIsGTZ_uid50_block_rsrvd_fix_b);
        end
    end
    assign expIsGTZ_uid50_block_rsrvd_fix_n[0] = ~ (expIsGTZ_uid50_block_rsrvd_fix_o[9]);

    // redist124_expIsGTZ_uid50_block_rsrvd_fix_n_2(DELAY,1290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist124_expIsGTZ_uid50_block_rsrvd_fix_n_2_q <= '0;
        end
        else
        begin
            redist124_expIsGTZ_uid50_block_rsrvd_fix_n_2_q <= $unsigned(expIsGTZ_uid50_block_rsrvd_fix_n);
        end
    end

    // expIsGTZAndNoFracBits_uid58_block_rsrvd_fix(LOGICAL,57)@33
    assign expIsGTZAndNoFracBits_uid58_block_rsrvd_fix_q = redist124_expIsGTZ_uid50_block_rsrvd_fix_n_2_q & invYHasSomeFracBits_uid57_block_rsrvd_fix_q;

    // expIsGTEWF_uid48_block_rsrvd_fix(COMPARE,47)@31 + 1
    assign expIsGTEWF_uid48_block_rsrvd_fix_a = {2'b00, redist141_exp_y_uid30_block_rsrvd_fix_b_1_q};
    assign expIsGTEWF_uid48_block_rsrvd_fix_b = {2'b00, cstBiasPWF_uid12_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expIsGTEWF_uid48_block_rsrvd_fix_o <= 10'b0;
        end
        else
        begin
            expIsGTEWF_uid48_block_rsrvd_fix_o <= $unsigned(expIsGTEWF_uid48_block_rsrvd_fix_a) - $unsigned(expIsGTEWF_uid48_block_rsrvd_fix_b);
        end
    end
    assign expIsGTEWF_uid48_block_rsrvd_fix_n[0] = ~ (expIsGTEWF_uid48_block_rsrvd_fix_o[9]);

    // redist126_expIsGTEWF_uid48_block_rsrvd_fix_n_2(DELAY,1292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist126_expIsGTEWF_uid48_block_rsrvd_fix_n_2_q <= '0;
        end
        else
        begin
            redist126_expIsGTEWF_uid48_block_rsrvd_fix_n_2_q <= $unsigned(expIsGTEWF_uid48_block_rsrvd_fix_n);
        end
    end

    // yIsInt_uid59_block_rsrvd_fix(LOGICAL,58)@33 + 1
    assign yIsInt_uid59_block_rsrvd_fix_qi = redist137_excZ_y_uid32_block_rsrvd_fix_q_2_q | redist126_expIsGTEWF_uid48_block_rsrvd_fix_n_2_q | expIsGTZAndNoFracBits_uid58_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    yIsInt_uid59_block_rsrvd_fix_delay ( .xin(yIsInt_uid59_block_rsrvd_fix_qi), .xout(yIsInt_uid59_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // yIsOddInt_uid68_block_rsrvd_fix(LOGICAL,67)@34 + 1
    assign yIsOddInt_uid68_block_rsrvd_fix_qi = yIsInt_uid59_block_rsrvd_fix_q & invNotZeroOrBigEven_uid67_block_rsrvd_fix_q & redist119_intYHasOddItPart_uid65_block_rsrvd_fix_c_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    yIsOddInt_uid68_block_rsrvd_fix_delay ( .xin(yIsOddInt_uid68_block_rsrvd_fix_qi), .xout(yIsOddInt_uid68_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist118_yIsOddInt_uid68_block_rsrvd_fix_q_30(DELAY,1284)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist118_yIsOddInt_uid68_block_rsrvd_fix_q_30 ( .xin(yIsOddInt_uid68_block_rsrvd_fix_q), .xout(redist118_yIsOddInt_uid68_block_rsrvd_fix_q_30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllOWE_uid13_block_rsrvd_fix(CONSTANT,12)
    assign cstAllOWE_uid13_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // expXIsMax_uid33_block_rsrvd_fix(LOGICAL,32)@31 + 1
    assign expXIsMax_uid33_block_rsrvd_fix_qi = $unsigned(redist141_exp_y_uid30_block_rsrvd_fix_b_1_q == cstAllOWE_uid13_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid33_block_rsrvd_fix_delay ( .xin(expXIsMax_uid33_block_rsrvd_fix_qi), .xout(expXIsMax_uid33_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist136_expXIsMax_uid33_block_rsrvd_fix_q_4(DELAY,1302)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist136_expXIsMax_uid33_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist136_expXIsMax_uid33_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist136_expXIsMax_uid33_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist136_expXIsMax_uid33_block_rsrvd_fix_q_4_delay_0 <= $unsigned(expXIsMax_uid33_block_rsrvd_fix_q);
            redist136_expXIsMax_uid33_block_rsrvd_fix_q_4_delay_1 <= redist136_expXIsMax_uid33_block_rsrvd_fix_q_4_delay_0;
            redist136_expXIsMax_uid33_block_rsrvd_fix_q_4_q <= redist136_expXIsMax_uid33_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // invExpXIsMax_uid38_block_rsrvd_fix(LOGICAL,37)@35
    assign invExpXIsMax_uid38_block_rsrvd_fix_q = ~ (redist136_expXIsMax_uid33_block_rsrvd_fix_q_4_q);

    // redist139_excZ_y_uid32_block_rsrvd_fix_q_4(DELAY,1305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist139_excZ_y_uid32_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist139_excZ_y_uid32_block_rsrvd_fix_q_4_q <= $unsigned(redist138_excZ_y_uid32_block_rsrvd_fix_q_3_q);
        end
    end

    // InvExpXIsZero_uid39_block_rsrvd_fix(LOGICAL,38)@35
    assign InvExpXIsZero_uid39_block_rsrvd_fix_q = ~ (redist139_excZ_y_uid32_block_rsrvd_fix_q_4_q);

    // excR_y_uid40_block_rsrvd_fix(LOGICAL,39)@35 + 1
    assign excR_y_uid40_block_rsrvd_fix_qi = InvExpXIsZero_uid39_block_rsrvd_fix_q & invExpXIsMax_uid38_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excR_y_uid40_block_rsrvd_fix_delay ( .xin(excR_y_uid40_block_rsrvd_fix_qi), .xout(excR_y_uid40_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist132_excR_y_uid40_block_rsrvd_fix_q_28(DELAY,1298)
    dspba_delay_ver #( .width(1), .depth(27), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist132_excR_y_uid40_block_rsrvd_fix_q_28 ( .xin(excR_y_uid40_block_rsrvd_fix_q), .xout(redist132_excR_y_uid40_block_rsrvd_fix_q_28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist133_excR_y_uid40_block_rsrvd_fix_q_29(DELAY,1299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist133_excR_y_uid40_block_rsrvd_fix_q_29_q <= '0;
        end
        else
        begin
            redist133_excR_y_uid40_block_rsrvd_fix_q_29_q <= $unsigned(redist132_excR_y_uid40_block_rsrvd_fix_q_28_q);
        end
    end

    // signX_uid41_block_rsrvd_fix(BITSELECT,40)@0
    assign signX_uid41_block_rsrvd_fix_b = $unsigned(in_0[25:25]);

    // redist129_signX_uid41_block_rsrvd_fix_b_36(DELAY,1295)
    dspba_delay_ver #( .width(1), .depth(36), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist129_signX_uid41_block_rsrvd_fix_b_36 ( .xin(signX_uid41_block_rsrvd_fix_b), .xout(redist129_signX_uid41_block_rsrvd_fix_b_36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist130_signX_uid41_block_rsrvd_fix_b_63(DELAY,1296)
    dspba_delay_ver #( .width(1), .depth(27), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist130_signX_uid41_block_rsrvd_fix_b_63 ( .xin(redist129_signX_uid41_block_rsrvd_fix_b_36_q), .xout(redist130_signX_uid41_block_rsrvd_fix_b_63_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist131_signX_uid41_block_rsrvd_fix_b_64(DELAY,1297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist131_signX_uid41_block_rsrvd_fix_b_64_q <= '0;
        end
        else
        begin
            redist131_signX_uid41_block_rsrvd_fix_b_64_q <= $unsigned(redist130_signX_uid41_block_rsrvd_fix_b_63_q);
        end
    end

    // redist156_exp_x_uid16_block_rsrvd_fix_b_13_notEnable(LOGICAL,1426)
    assign redist156_exp_x_uid16_block_rsrvd_fix_b_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist156_exp_x_uid16_block_rsrvd_fix_b_13_nor(LOGICAL,1427)
    assign redist156_exp_x_uid16_block_rsrvd_fix_b_13_nor_q = ~ (redist156_exp_x_uid16_block_rsrvd_fix_b_13_notEnable_q | redist156_exp_x_uid16_block_rsrvd_fix_b_13_sticky_ena_q);

    // redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_last(CONSTANT,1423)
    assign redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_last_q = $unsigned(5'b01000);

    // redist156_exp_x_uid16_block_rsrvd_fix_b_13_cmp(LOGICAL,1424)
    assign redist156_exp_x_uid16_block_rsrvd_fix_b_13_cmp_b = {1'b0, redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_q};
    assign redist156_exp_x_uid16_block_rsrvd_fix_b_13_cmp_q = $unsigned(redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_last_q == redist156_exp_x_uid16_block_rsrvd_fix_b_13_cmp_b ? 1'b1 : 1'b0);

    // redist156_exp_x_uid16_block_rsrvd_fix_b_13_cmpReg(REG,1425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist156_exp_x_uid16_block_rsrvd_fix_b_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist156_exp_x_uid16_block_rsrvd_fix_b_13_cmpReg_q <= $unsigned(redist156_exp_x_uid16_block_rsrvd_fix_b_13_cmp_q);
        end
    end

    // redist156_exp_x_uid16_block_rsrvd_fix_b_13_sticky_ena(REG,1428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist156_exp_x_uid16_block_rsrvd_fix_b_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist156_exp_x_uid16_block_rsrvd_fix_b_13_nor_q == 1'b1)
        begin
            redist156_exp_x_uid16_block_rsrvd_fix_b_13_sticky_ena_q <= $unsigned(redist156_exp_x_uid16_block_rsrvd_fix_b_13_cmpReg_q);
        end
    end

    // redist156_exp_x_uid16_block_rsrvd_fix_b_13_enaAnd(LOGICAL,1429)
    assign redist156_exp_x_uid16_block_rsrvd_fix_b_13_enaAnd_q = redist156_exp_x_uid16_block_rsrvd_fix_b_13_sticky_ena_q & VCC_q;

    // redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt(COUNTER,1421)
    // low=0, high=9, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_i <= 4'd0;
            redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_i == 4'd8)
            begin
                redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_eq <= 1'b0;
            end
            if (redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_eq == 1'b1)
            begin
                redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_i <= $unsigned(redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_i) + $unsigned(4'd7);
            end
            else
            begin
                redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_i <= $unsigned(redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_q = redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_i[3:0];

    // exp_x_uid16_block_rsrvd_fix(BITSELECT,15)@0
    assign exp_x_uid16_block_rsrvd_fix_b = in_0[24:17];

    // redist156_exp_x_uid16_block_rsrvd_fix_b_13_inputreg0(DELAY,1418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist156_exp_x_uid16_block_rsrvd_fix_b_13_inputreg0_q <= '0;
        end
        else
        begin
            redist156_exp_x_uid16_block_rsrvd_fix_b_13_inputreg0_q <= $unsigned(exp_x_uid16_block_rsrvd_fix_b);
        end
    end

    // redist156_exp_x_uid16_block_rsrvd_fix_b_13_wraddr(REG,1422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist156_exp_x_uid16_block_rsrvd_fix_b_13_wraddr_q <= $unsigned(4'b1001);
        end
        else
        begin
            redist156_exp_x_uid16_block_rsrvd_fix_b_13_wraddr_q <= $unsigned(redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_q);
        end
    end

    // redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem(DUALMEM,1420)
    assign redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_ia = $unsigned(redist156_exp_x_uid16_block_rsrvd_fix_b_13_inputreg0_q);
    assign redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_aa = redist156_exp_x_uid16_block_rsrvd_fix_b_13_wraddr_q;
    assign redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_ab = redist156_exp_x_uid16_block_rsrvd_fix_b_13_rdcnt_q;
    assign redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_reset0 = ~ (resetn);
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
    ) redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_dmem (
        .clocken1(redist156_exp_x_uid16_block_rsrvd_fix_b_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_reset0),
        .clock1(clock),
        .address_a(redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_aa),
        .data_a(redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_ab),
        .q_b(redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_iq),
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
    assign redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_q = redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_iq[7:0];

    // redist156_exp_x_uid16_block_rsrvd_fix_b_13_outputreg0(DELAY,1419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist156_exp_x_uid16_block_rsrvd_fix_b_13_outputreg0_q <= '0;
        end
        else
        begin
            redist156_exp_x_uid16_block_rsrvd_fix_b_13_outputreg0_q <= $unsigned(redist156_exp_x_uid16_block_rsrvd_fix_b_13_mem_q);
        end
    end

    // expXIsMax_uid19_block_rsrvd_fix(LOGICAL,18)@13 + 1
    assign expXIsMax_uid19_block_rsrvd_fix_qi = $unsigned(redist156_exp_x_uid16_block_rsrvd_fix_b_13_outputreg0_q == cstAllOWE_uid13_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid19_block_rsrvd_fix_delay ( .xin(expXIsMax_uid19_block_rsrvd_fix_qi), .xout(expXIsMax_uid19_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist148_expXIsMax_uid19_block_rsrvd_fix_q_21(DELAY,1314)
    dspba_delay_ver #( .width(1), .depth(20), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist148_expXIsMax_uid19_block_rsrvd_fix_q_21 ( .xin(expXIsMax_uid19_block_rsrvd_fix_q), .xout(redist148_expXIsMax_uid19_block_rsrvd_fix_q_21_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExpXIsMax_uid24_block_rsrvd_fix(LOGICAL,23)@34
    assign invExpXIsMax_uid24_block_rsrvd_fix_q = ~ (redist148_expXIsMax_uid19_block_rsrvd_fix_q_21_q);

    // excZ_x_uid18_block_rsrvd_fix(LOGICAL,17)@13 + 1
    assign excZ_x_uid18_block_rsrvd_fix_qi = $unsigned(redist156_exp_x_uid16_block_rsrvd_fix_b_13_outputreg0_q == cstAllZWE_uid15_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid18_block_rsrvd_fix_delay ( .xin(excZ_x_uid18_block_rsrvd_fix_qi), .xout(excZ_x_uid18_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist150_excZ_x_uid18_block_rsrvd_fix_q_21(DELAY,1316)
    dspba_delay_ver #( .width(1), .depth(20), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist150_excZ_x_uid18_block_rsrvd_fix_q_21 ( .xin(excZ_x_uid18_block_rsrvd_fix_q), .xout(redist150_excZ_x_uid18_block_rsrvd_fix_q_21_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // InvExpXIsZero_uid25_block_rsrvd_fix(LOGICAL,24)@34
    assign InvExpXIsZero_uid25_block_rsrvd_fix_q = ~ (redist150_excZ_x_uid18_block_rsrvd_fix_q_21_q);

    // excR_x_uid26_block_rsrvd_fix(LOGICAL,25)@34
    assign excR_x_uid26_block_rsrvd_fix_q = InvExpXIsZero_uid25_block_rsrvd_fix_q & invExpXIsMax_uid24_block_rsrvd_fix_q;

    // redist142_excR_x_uid26_block_rsrvd_fix_q_1(DELAY,1308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist142_excR_x_uid26_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist142_excR_x_uid26_block_rsrvd_fix_q_1_q <= $unsigned(excR_x_uid26_block_rsrvd_fix_q);
        end
    end

    // redist143_excR_x_uid26_block_rsrvd_fix_q_2(DELAY,1309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist143_excR_x_uid26_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist143_excR_x_uid26_block_rsrvd_fix_q_2_q <= $unsigned(redist142_excR_x_uid26_block_rsrvd_fix_q_1_q);
        end
    end

    // redist144_excR_x_uid26_block_rsrvd_fix_q_29(DELAY,1310)
    dspba_delay_ver #( .width(1), .depth(27), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist144_excR_x_uid26_block_rsrvd_fix_q_29 ( .xin(redist143_excR_x_uid26_block_rsrvd_fix_q_2_q), .xout(redist144_excR_x_uid26_block_rsrvd_fix_q_29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist145_excR_x_uid26_block_rsrvd_fix_q_30(DELAY,1311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist145_excR_x_uid26_block_rsrvd_fix_q_30_q <= '0;
        end
        else
        begin
            redist145_excR_x_uid26_block_rsrvd_fix_q_30_q <= $unsigned(redist144_excR_x_uid26_block_rsrvd_fix_q_29_q);
        end
    end

    // signRCond2_uid236_block_rsrvd_fix(LOGICAL,235)@64
    assign signRCond2_uid236_block_rsrvd_fix_q = redist145_excR_x_uid26_block_rsrvd_fix_q_30_q & redist131_signX_uid41_block_rsrvd_fix_b_64_q & redist133_excR_y_uid40_block_rsrvd_fix_q_29_q & redist118_yIsOddInt_uid68_block_rsrvd_fix_q_30_q;

    // redist154_frac_x_uid17_block_rsrvd_fix_b_12_notEnable(LOGICAL,1414)
    assign redist154_frac_x_uid17_block_rsrvd_fix_b_12_notEnable_q = $unsigned(~ (VCC_q));

    // redist154_frac_x_uid17_block_rsrvd_fix_b_12_nor(LOGICAL,1415)
    assign redist154_frac_x_uid17_block_rsrvd_fix_b_12_nor_q = ~ (redist154_frac_x_uid17_block_rsrvd_fix_b_12_notEnable_q | redist154_frac_x_uid17_block_rsrvd_fix_b_12_sticky_ena_q);

    // redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_last(CONSTANT,1411)
    assign redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_last_q = $unsigned(3'b011);

    // redist154_frac_x_uid17_block_rsrvd_fix_b_12_cmp(LOGICAL,1412)
    assign redist154_frac_x_uid17_block_rsrvd_fix_b_12_cmp_q = $unsigned(redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_last_q == redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_q ? 1'b1 : 1'b0);

    // redist154_frac_x_uid17_block_rsrvd_fix_b_12_cmpReg(REG,1413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist154_frac_x_uid17_block_rsrvd_fix_b_12_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist154_frac_x_uid17_block_rsrvd_fix_b_12_cmpReg_q <= $unsigned(redist154_frac_x_uid17_block_rsrvd_fix_b_12_cmp_q);
        end
    end

    // redist154_frac_x_uid17_block_rsrvd_fix_b_12_sticky_ena(REG,1416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist154_frac_x_uid17_block_rsrvd_fix_b_12_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist154_frac_x_uid17_block_rsrvd_fix_b_12_nor_q == 1'b1)
        begin
            redist154_frac_x_uid17_block_rsrvd_fix_b_12_sticky_ena_q <= $unsigned(redist154_frac_x_uid17_block_rsrvd_fix_b_12_cmpReg_q);
        end
    end

    // redist154_frac_x_uid17_block_rsrvd_fix_b_12_enaAnd(LOGICAL,1417)
    assign redist154_frac_x_uid17_block_rsrvd_fix_b_12_enaAnd_q = redist154_frac_x_uid17_block_rsrvd_fix_b_12_sticky_ena_q & VCC_q;

    // redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt(COUNTER,1409)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_i <= 3'd0;
            redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_i == 3'd3)
            begin
                redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_eq <= 1'b0;
            end
            if (redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_eq == 1'b1)
            begin
                redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_i <= $unsigned(redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_i <= $unsigned(redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_q = redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_i[2:0];

    // frac_x_uid17_block_rsrvd_fix(BITSELECT,16)@0
    assign frac_x_uid17_block_rsrvd_fix_b = in_0[16:0];

    // redist152_frac_x_uid17_block_rsrvd_fix_b_1(DELAY,1318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist152_frac_x_uid17_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist152_frac_x_uid17_block_rsrvd_fix_b_1_q <= $unsigned(frac_x_uid17_block_rsrvd_fix_b);
        end
    end

    // redist153_frac_x_uid17_block_rsrvd_fix_b_4_inputreg0(DELAY,1405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist153_frac_x_uid17_block_rsrvd_fix_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist153_frac_x_uid17_block_rsrvd_fix_b_4_inputreg0_q <= $unsigned(redist152_frac_x_uid17_block_rsrvd_fix_b_1_q);
        end
    end

    // redist153_frac_x_uid17_block_rsrvd_fix_b_4(DELAY,1319)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist153_frac_x_uid17_block_rsrvd_fix_b_4_delay_0 <= '0;
            redist153_frac_x_uid17_block_rsrvd_fix_b_4_q <= '0;
        end
        else
        begin
            redist153_frac_x_uid17_block_rsrvd_fix_b_4_delay_0 <= $unsigned(redist153_frac_x_uid17_block_rsrvd_fix_b_4_inputreg0_q);
            redist153_frac_x_uid17_block_rsrvd_fix_b_4_q <= redist153_frac_x_uid17_block_rsrvd_fix_b_4_delay_0;
        end
    end

    // redist154_frac_x_uid17_block_rsrvd_fix_b_12_inputreg0(DELAY,1406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist154_frac_x_uid17_block_rsrvd_fix_b_12_inputreg0_q <= '0;
        end
        else
        begin
            redist154_frac_x_uid17_block_rsrvd_fix_b_12_inputreg0_q <= $unsigned(redist153_frac_x_uid17_block_rsrvd_fix_b_4_q);
        end
    end

    // redist154_frac_x_uid17_block_rsrvd_fix_b_12_wraddr(REG,1410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist154_frac_x_uid17_block_rsrvd_fix_b_12_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist154_frac_x_uid17_block_rsrvd_fix_b_12_wraddr_q <= $unsigned(redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_q);
        end
    end

    // redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem(DUALMEM,1408)
    assign redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_ia = $unsigned(redist154_frac_x_uid17_block_rsrvd_fix_b_12_inputreg0_q);
    assign redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_aa = redist154_frac_x_uid17_block_rsrvd_fix_b_12_wraddr_q;
    assign redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_ab = redist154_frac_x_uid17_block_rsrvd_fix_b_12_rdcnt_q;
    assign redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(17),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(17),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_dmem (
        .clocken1(redist154_frac_x_uid17_block_rsrvd_fix_b_12_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_reset0),
        .clock1(clock),
        .address_a(redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_aa),
        .data_a(redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_ab),
        .q_b(redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_iq),
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
    assign redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_q = redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_iq[16:0];

    // redist154_frac_x_uid17_block_rsrvd_fix_b_12_outputreg0(DELAY,1407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist154_frac_x_uid17_block_rsrvd_fix_b_12_outputreg0_q <= '0;
        end
        else
        begin
            redist154_frac_x_uid17_block_rsrvd_fix_b_12_outputreg0_q <= $unsigned(redist154_frac_x_uid17_block_rsrvd_fix_b_12_mem_q);
        end
    end

    // redist155_frac_x_uid17_block_rsrvd_fix_b_13(DELAY,1321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist155_frac_x_uid17_block_rsrvd_fix_b_13_q <= '0;
        end
        else
        begin
            redist155_frac_x_uid17_block_rsrvd_fix_b_13_q <= $unsigned(redist154_frac_x_uid17_block_rsrvd_fix_b_12_outputreg0_q);
        end
    end

    // cstAllZWF_uid7_block_rsrvd_fix(CONSTANT,6)
    assign cstAllZWF_uid7_block_rsrvd_fix_q = $unsigned(17'b00000000000000000);

    // fracXIsZero_uid20_block_rsrvd_fix(LOGICAL,19)@13 + 1
    assign fracXIsZero_uid20_block_rsrvd_fix_qi = $unsigned(cstAllZWF_uid7_block_rsrvd_fix_q == redist155_frac_x_uid17_block_rsrvd_fix_b_13_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid20_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid20_block_rsrvd_fix_qi), .xout(fracXIsZero_uid20_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist147_fracXIsZero_uid20_block_rsrvd_fix_q_22(DELAY,1313)
    dspba_delay_ver #( .width(1), .depth(21), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist147_fracXIsZero_uid20_block_rsrvd_fix_q_22 ( .xin(fracXIsZero_uid20_block_rsrvd_fix_q), .xout(redist147_fracXIsZero_uid20_block_rsrvd_fix_q_22_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist149_expXIsMax_uid19_block_rsrvd_fix_q_22(DELAY,1315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist149_expXIsMax_uid19_block_rsrvd_fix_q_22_q <= '0;
        end
        else
        begin
            redist149_expXIsMax_uid19_block_rsrvd_fix_q_22_q <= $unsigned(redist148_expXIsMax_uid19_block_rsrvd_fix_q_21_q);
        end
    end

    // excI_x_uid22_block_rsrvd_fix(LOGICAL,21)@35 + 1
    assign excI_x_uid22_block_rsrvd_fix_qi = redist149_expXIsMax_uid19_block_rsrvd_fix_q_22_q & redist147_fracXIsZero_uid20_block_rsrvd_fix_q_22_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_x_uid22_block_rsrvd_fix_delay ( .xin(excI_x_uid22_block_rsrvd_fix_qi), .xout(excI_x_uid22_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist146_excI_x_uid22_block_rsrvd_fix_q_29(DELAY,1312)
    dspba_delay_ver #( .width(1), .depth(28), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist146_excI_x_uid22_block_rsrvd_fix_q_29 ( .xin(excI_x_uid22_block_rsrvd_fix_q), .xout(redist146_excI_x_uid22_block_rsrvd_fix_q_29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // signRCond1_uid237_block_rsrvd_fix(LOGICAL,236)@64
    assign signRCond1_uid237_block_rsrvd_fix_q = redist146_excI_x_uid22_block_rsrvd_fix_q_29_q & redist131_signX_uid41_block_rsrvd_fix_b_64_q & redist133_excR_y_uid40_block_rsrvd_fix_q_29_q & redist118_yIsOddInt_uid68_block_rsrvd_fix_q_30_q;

    // redist151_excZ_x_uid18_block_rsrvd_fix_q_51(DELAY,1317)
    dspba_delay_ver #( .width(1), .depth(30), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist151_excZ_x_uid18_block_rsrvd_fix_q_51 ( .xin(redist150_excZ_x_uid18_block_rsrvd_fix_q_21_q), .xout(redist151_excZ_x_uid18_block_rsrvd_fix_q_51_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // signRCond0_uid238_block_rsrvd_fix(LOGICAL,237)@64
    assign signRCond0_uid238_block_rsrvd_fix_q = redist133_excR_y_uid40_block_rsrvd_fix_q_29_q & redist118_yIsOddInt_uid68_block_rsrvd_fix_q_30_q & redist131_signX_uid41_block_rsrvd_fix_b_64_q & redist151_excZ_x_uid18_block_rsrvd_fix_q_51_q;

    // signR_uid239_block_rsrvd_fix(LOGICAL,238)@64 + 1
    assign signR_uid239_block_rsrvd_fix_qi = signRCond0_uid238_block_rsrvd_fix_q | signRCond1_uid237_block_rsrvd_fix_q | signRCond2_uid236_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signR_uid239_block_rsrvd_fix_delay ( .xin(signR_uid239_block_rsrvd_fix_qi), .xout(signR_uid239_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist82_signR_uid239_block_rsrvd_fix_q_2(DELAY,1248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_signR_uid239_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist82_signR_uid239_block_rsrvd_fix_q_2_q <= $unsigned(signR_uid239_block_rsrvd_fix_q);
        end
    end

    // redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_notEnable(LOGICAL,1337)
    assign redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_nor(LOGICAL,1338)
    assign redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_nor_q = ~ (redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_notEnable_q | redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_sticky_ena_q);

    // redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_cmpReg(REG,1336)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_sticky_ena(REG,1339)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_nor_q == 1'b1)
        begin
            redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_sticky_ena_q <= $unsigned(redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_cmpReg_q);
        end
    end

    // redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_enaAnd(LOGICAL,1340)
    assign redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_enaAnd_q = redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_sticky_ena_q & VCC_q;

    // redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_rdcnt(COUNTER,1334)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_rdcnt_i <= $unsigned(redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_rdcnt_q = redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_rdcnt_i[0:0];

    // zY_uid158_block_rsrvd_fix(CONSTANT,157)
    assign zY_uid158_block_rsrvd_fix_q = $unsigned(28'b0000000000000000000000000000);

    // signY_uid44_block_rsrvd_fix(BITSELECT,43)@30
    assign signY_uid44_block_rsrvd_fix_b = $unsigned(in_1[25:25]);

    // redist127_signY_uid44_block_rsrvd_fix_b_5(DELAY,1293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist127_signY_uid44_block_rsrvd_fix_b_5_delay_0 <= '0;
            redist127_signY_uid44_block_rsrvd_fix_b_5_delay_1 <= '0;
            redist127_signY_uid44_block_rsrvd_fix_b_5_delay_2 <= '0;
            redist127_signY_uid44_block_rsrvd_fix_b_5_delay_3 <= '0;
            redist127_signY_uid44_block_rsrvd_fix_b_5_q <= '0;
        end
        else
        begin
            redist127_signY_uid44_block_rsrvd_fix_b_5_delay_0 <= $unsigned(signY_uid44_block_rsrvd_fix_b);
            redist127_signY_uid44_block_rsrvd_fix_b_5_delay_1 <= redist127_signY_uid44_block_rsrvd_fix_b_5_delay_0;
            redist127_signY_uid44_block_rsrvd_fix_b_5_delay_2 <= redist127_signY_uid44_block_rsrvd_fix_b_5_delay_1;
            redist127_signY_uid44_block_rsrvd_fix_b_5_delay_3 <= redist127_signY_uid44_block_rsrvd_fix_b_5_delay_2;
            redist127_signY_uid44_block_rsrvd_fix_b_5_q <= redist127_signY_uid44_block_rsrvd_fix_b_5_delay_3;
        end
    end

    // cstBiasMO_uid9_block_rsrvd_fix(CONSTANT,8)
    assign cstBiasMO_uid9_block_rsrvd_fix_q = $unsigned(8'b01111110);

    // caseLog_uid71_block_rsrvd_fix(LOGICAL,70)@0 + 1
    assign caseLog_uid71_block_rsrvd_fix_qi = $unsigned(exp_x_uid16_block_rsrvd_fix_b == cstBiasMO_uid9_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    caseLog_uid71_block_rsrvd_fix_delay ( .xin(caseLog_uid71_block_rsrvd_fix_qi), .xout(caseLog_uid71_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // addrFull_uid72_block_rsrvd_fix(BITJOIN,71)@1
    assign addrFull_uid72_block_rsrvd_fix_q = {caseLog_uid71_block_rsrvd_fix_q, redist152_frac_x_uid17_block_rsrvd_fix_b_1_q};

    // yAddr_uid74_block_rsrvd_fix(BITSELECT,73)@1
    assign yAddr_uid74_block_rsrvd_fix_b = addrFull_uid72_block_rsrvd_fix_q[17:8];

    // memoryC2_uid446_lnTables_lutmem(DUALMEM,1088)@1 + 2
    // in j@20000000
    assign memoryC2_uid446_lnTables_lutmem_aa = yAddr_uid74_block_rsrvd_fix_b;
    assign memoryC2_uid446_lnTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(4),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d446_lnTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC2_uid446_lnTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC2_uid446_lnTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC2_uid446_lnTables_lutmem_aa),
        .q_a(memoryC2_uid446_lnTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC2_uid446_lnTables_lutmem_r = memoryC2_uid446_lnTables_lutmem_ir[3:0];

    // memoryC2_uid445_lnTables_lutmem(DUALMEM,1087)@1 + 2
    // in j@20000000
    assign memoryC2_uid445_lnTables_lutmem_aa = yAddr_uid74_block_rsrvd_fix_b;
    assign memoryC2_uid445_lnTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(10),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d445_lnTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC2_uid445_lnTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC2_uid445_lnTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC2_uid445_lnTables_lutmem_aa),
        .q_a(memoryC2_uid445_lnTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC2_uid445_lnTables_lutmem_r = memoryC2_uid445_lnTables_lutmem_ir[9:0];

    // os_uid447_lnTables(BITJOIN,446)@3
    assign os_uid447_lnTables_q = {memoryC2_uid446_lnTables_lutmem_r, memoryC2_uid445_lnTables_lutmem_r};

    // redist78_os_uid447_lnTables_q_1(DELAY,1244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_os_uid447_lnTables_q_1_q <= '0;
        end
        else
        begin
            redist78_os_uid447_lnTables_q_1_q <= $unsigned(os_uid447_lnTables_q);
        end
    end

    // zPPolyEvalLog_uid75_block_rsrvd_fix(BITSELECT,74)@4
    assign zPPolyEvalLog_uid75_block_rsrvd_fix_in = redist153_frac_x_uid17_block_rsrvd_fix_b_4_q[7:0];
    assign zPPolyEvalLog_uid75_block_rsrvd_fix_b = zPPolyEvalLog_uid75_block_rsrvd_fix_in[7:0];

    // prodXY_uid884_pT1_uid453_invPolyEval_cma(CHAINMULTADD,1119)@4 + 2
    assign prodXY_uid884_pT1_uid453_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid884_pT1_uid453_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid884_pT1_uid453_invPolyEval_cma_ena1 = prodXY_uid884_pT1_uid453_invPolyEval_cma_ena0;
    assign prodXY_uid884_pT1_uid453_invPolyEval_cma_l[0] = $signed({1'b0, prodXY_uid884_pT1_uid453_invPolyEval_cma_a0[0][7:0]});
    assign prodXY_uid884_pT1_uid453_invPolyEval_cma_p[0] = prodXY_uid884_pT1_uid453_invPolyEval_cma_l[0] * prodXY_uid884_pT1_uid453_invPolyEval_cma_c0[0];
    assign prodXY_uid884_pT1_uid453_invPolyEval_cma_u[0] = prodXY_uid884_pT1_uid453_invPolyEval_cma_p[0][22:0];
    assign prodXY_uid884_pT1_uid453_invPolyEval_cma_w[0] = prodXY_uid884_pT1_uid453_invPolyEval_cma_u[0];
    assign prodXY_uid884_pT1_uid453_invPolyEval_cma_x[0] = prodXY_uid884_pT1_uid453_invPolyEval_cma_w[0];
    assign prodXY_uid884_pT1_uid453_invPolyEval_cma_y[0] = prodXY_uid884_pT1_uid453_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid884_pT1_uid453_invPolyEval_cma_a0 <= '{default: '0};
            prodXY_uid884_pT1_uid453_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid884_pT1_uid453_invPolyEval_cma_ena0 == 1'b1)
            begin
                prodXY_uid884_pT1_uid453_invPolyEval_cma_a0[0] <= zPPolyEvalLog_uid75_block_rsrvd_fix_b;
                prodXY_uid884_pT1_uid453_invPolyEval_cma_c0[0] <= redist78_os_uid447_lnTables_q_1_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid884_pT1_uid453_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid884_pT1_uid453_invPolyEval_cma_ena1 == 1'b1)
            begin
                prodXY_uid884_pT1_uid453_invPolyEval_cma_s[0] <= prodXY_uid884_pT1_uid453_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(23), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid884_pT1_uid453_invPolyEval_cma_delay ( .xin(prodXY_uid884_pT1_uid453_invPolyEval_cma_s[0]), .xout(prodXY_uid884_pT1_uid453_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid884_pT1_uid453_invPolyEval_cma_q = $unsigned(prodXY_uid884_pT1_uid453_invPolyEval_cma_qq[21:0]);

    // osig_uid885_pT1_uid453_invPolyEval(BITSELECT,884)@6
    assign osig_uid885_pT1_uid453_invPolyEval_b = $unsigned(prodXY_uid884_pT1_uid453_invPolyEval_cma_q[21:7]);

    // redist55_osig_uid885_pT1_uid453_invPolyEval_b_1(DELAY,1221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_osig_uid885_pT1_uid453_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist55_osig_uid885_pT1_uid453_invPolyEval_b_1_q <= $unsigned(osig_uid885_pT1_uid453_invPolyEval_b);
        end
    end

    // highBBits_uid455_invPolyEval(BITSELECT,454)@7
    assign highBBits_uid455_invPolyEval_b = $unsigned(redist55_osig_uid885_pT1_uid453_invPolyEval_b_1_q[14:1]);

    // redist113_yAddr_uid74_block_rsrvd_fix_b_3(DELAY,1279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist113_yAddr_uid74_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist113_yAddr_uid74_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist113_yAddr_uid74_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist113_yAddr_uid74_block_rsrvd_fix_b_3_delay_0 <= $unsigned(yAddr_uid74_block_rsrvd_fix_b);
            redist113_yAddr_uid74_block_rsrvd_fix_b_3_delay_1 <= redist113_yAddr_uid74_block_rsrvd_fix_b_3_delay_0;
            redist113_yAddr_uid74_block_rsrvd_fix_b_3_q <= redist113_yAddr_uid74_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // memoryC1_uid442_lnTables_lutmem(DUALMEM,1086)@4 + 2
    // in j@20000000
    assign memoryC1_uid442_lnTables_lutmem_aa = redist113_yAddr_uid74_block_rsrvd_fix_b_3_q;
    assign memoryC1_uid442_lnTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(3),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d442_lnTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC1_uid442_lnTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC1_uid442_lnTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC1_uid442_lnTables_lutmem_aa),
        .q_a(memoryC1_uid442_lnTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC1_uid442_lnTables_lutmem_r = memoryC1_uid442_lnTables_lutmem_ir[2:0];

    // redist40_memoryC1_uid442_lnTables_lutmem_r_1(DELAY,1206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_memoryC1_uid442_lnTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist40_memoryC1_uid442_lnTables_lutmem_r_1_q <= $unsigned(memoryC1_uid442_lnTables_lutmem_r);
        end
    end

    // memoryC1_uid441_lnTables_lutmem(DUALMEM,1085)@4 + 2
    // in j@20000000
    assign memoryC1_uid441_lnTables_lutmem_aa = redist113_yAddr_uid74_block_rsrvd_fix_b_3_q;
    assign memoryC1_uid441_lnTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(10),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d441_lnTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC1_uid441_lnTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC1_uid441_lnTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC1_uid441_lnTables_lutmem_aa),
        .q_a(memoryC1_uid441_lnTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC1_uid441_lnTables_lutmem_r = memoryC1_uid441_lnTables_lutmem_ir[9:0];

    // redist41_memoryC1_uid441_lnTables_lutmem_r_1(DELAY,1207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_memoryC1_uid441_lnTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist41_memoryC1_uid441_lnTables_lutmem_r_1_q <= $unsigned(memoryC1_uid441_lnTables_lutmem_r);
        end
    end

    // memoryC1_uid440_lnTables_lutmem(DUALMEM,1084)@4 + 2
    // in j@20000000
    assign memoryC1_uid440_lnTables_lutmem_aa = redist113_yAddr_uid74_block_rsrvd_fix_b_3_q;
    assign memoryC1_uid440_lnTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(10),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d440_lnTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC1_uid440_lnTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC1_uid440_lnTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC1_uid440_lnTables_lutmem_aa),
        .q_a(memoryC1_uid440_lnTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC1_uid440_lnTables_lutmem_r = memoryC1_uid440_lnTables_lutmem_ir[9:0];

    // redist42_memoryC1_uid440_lnTables_lutmem_r_1(DELAY,1208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_memoryC1_uid440_lnTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist42_memoryC1_uid440_lnTables_lutmem_r_1_q <= $unsigned(memoryC1_uid440_lnTables_lutmem_r);
        end
    end

    // os_uid443_lnTables(BITJOIN,442)@7
    assign os_uid443_lnTables_q = {redist40_memoryC1_uid442_lnTables_lutmem_r_1_q, redist41_memoryC1_uid441_lnTables_lutmem_r_1_q, redist42_memoryC1_uid440_lnTables_lutmem_r_1_q};

    // s1sumAHighB_uid456_invPolyEval(ADD,455)@7 + 1
    assign s1sumAHighB_uid456_invPolyEval_a = $unsigned({{1{os_uid443_lnTables_q[22]}}, os_uid443_lnTables_q});
    assign s1sumAHighB_uid456_invPolyEval_b = $unsigned({{10{highBBits_uid455_invPolyEval_b[13]}}, highBBits_uid455_invPolyEval_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s1sumAHighB_uid456_invPolyEval_o <= 24'b0;
        end
        else
        begin
            s1sumAHighB_uid456_invPolyEval_o <= $unsigned($signed(s1sumAHighB_uid456_invPolyEval_a) + $signed(s1sumAHighB_uid456_invPolyEval_b));
        end
    end
    assign s1sumAHighB_uid456_invPolyEval_q = s1sumAHighB_uid456_invPolyEval_o[23:0];

    // lowRangeB_uid454_invPolyEval(BITSELECT,453)@7
    assign lowRangeB_uid454_invPolyEval_in = redist55_osig_uid885_pT1_uid453_invPolyEval_b_1_q[0:0];
    assign lowRangeB_uid454_invPolyEval_b = lowRangeB_uid454_invPolyEval_in[0:0];

    // redist77_lowRangeB_uid454_invPolyEval_b_1(DELAY,1243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_lowRangeB_uid454_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist77_lowRangeB_uid454_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid454_invPolyEval_b);
        end
    end

    // s1_uid457_invPolyEval(BITJOIN,456)@8
    assign s1_uid457_invPolyEval_q = {s1sumAHighB_uid456_invPolyEval_q, redist77_lowRangeB_uid454_invPolyEval_b_1_q};

    // prodXY_uid887_pT2_uid459_invPolyEval_bs2_merged_bit_select(BITSELECT,1158)@8
    assign prodXY_uid887_pT2_uid459_invPolyEval_bs2_merged_bit_select_b = $unsigned(s1_uid457_invPolyEval_q[24:18]);
    assign prodXY_uid887_pT2_uid459_invPolyEval_bs2_merged_bit_select_c = $unsigned(s1_uid457_invPolyEval_q[17:0]);

    // redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4(DELAY,1278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_delay_0 <= '0;
            redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_delay_1 <= '0;
            redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_delay_2 <= '0;
            redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_q <= '0;
        end
        else
        begin
            redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_delay_0 <= $unsigned(zPPolyEvalLog_uid75_block_rsrvd_fix_b);
            redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_delay_1 <= redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_delay_0;
            redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_delay_2 <= redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_delay_1;
            redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_q <= redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_delay_2;
        end
    end

    // prodXY_uid887_pT2_uid459_invPolyEval_im0(MULT,1093)@8 + 2
    assign prodXY_uid887_pT2_uid459_invPolyEval_im0_pr = signed'({1'b0, prodXY_uid887_pT2_uid459_invPolyEval_im0_a0[7:0]}) * signed'(prodXY_uid887_pT2_uid459_invPolyEval_im0_b0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid887_pT2_uid459_invPolyEval_im0_a0 <= 8'b0;
            prodXY_uid887_pT2_uid459_invPolyEval_im0_b0 <= 7'b0;
            prodXY_uid887_pT2_uid459_invPolyEval_im0_s1 <= 15'b0;
        end
        else
        begin
            prodXY_uid887_pT2_uid459_invPolyEval_im0_a0 <= redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_q;
            prodXY_uid887_pT2_uid459_invPolyEval_im0_b0 <= $unsigned(prodXY_uid887_pT2_uid459_invPolyEval_bs2_merged_bit_select_b);
            prodXY_uid887_pT2_uid459_invPolyEval_im0_s1 <= $unsigned(prodXY_uid887_pT2_uid459_invPolyEval_im0_pr[14:0]);
        end
    end
    assign prodXY_uid887_pT2_uid459_invPolyEval_im0_q = prodXY_uid887_pT2_uid459_invPolyEval_im0_s1;

    // redist35_prodXY_uid887_pT2_uid459_invPolyEval_im0_q_1(DELAY,1201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_prodXY_uid887_pT2_uid459_invPolyEval_im0_q_1_q <= '0;
        end
        else
        begin
            redist35_prodXY_uid887_pT2_uid459_invPolyEval_im0_q_1_q <= $unsigned(prodXY_uid887_pT2_uid459_invPolyEval_im0_q);
        end
    end

    // prodXY_uid887_pT2_uid459_invPolyEval_sums_align_1(BITSHIFT,1100)@11
    assign prodXY_uid887_pT2_uid459_invPolyEval_sums_align_1_qint = { redist35_prodXY_uid887_pT2_uid459_invPolyEval_im0_q_1_q, 18'b000000000000000000 };
    assign prodXY_uid887_pT2_uid459_invPolyEval_sums_align_1_q = prodXY_uid887_pT2_uid459_invPolyEval_sums_align_1_qint[32:0];

    // prodXY_uid887_pT2_uid459_invPolyEval_im3_cma(CHAINMULTADD,1126)@8 + 2
    assign prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_reset = ~ (resetn);
    assign prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_ena0 = 1'b1;
    assign prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_ena1 = prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_ena0;
    assign prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_p[0] = prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_a0[0] * prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_c0[0];
    assign prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_u[0] = prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_p[0][27:0];
    assign prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_w[0] = prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_u[0];
    assign prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_x[0] = prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_w[0];
    assign prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_y[0] = prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_a0 <= '{default: '0};
            prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_ena0 == 1'b1)
            begin
                prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_a0[0] <= prodXY_uid887_pT2_uid459_invPolyEval_bs2_merged_bit_select_c;
                prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_c0[0] <= {2'b00, redist112_zPPolyEvalLog_uid75_block_rsrvd_fix_b_4_q[7:0]};
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_ena1 == 1'b1)
            begin
                prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_s[0] <= prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_delay ( .xin(prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_s[0]), .xout(prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_q = $unsigned(prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_qq[25:0]);

    // redist28_prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_q_1(DELAY,1194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_q_1_q <= '0;
        end
        else
        begin
            redist28_prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_q_1_q <= $unsigned(prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_q);
        end
    end

    // prodXY_uid887_pT2_uid459_invPolyEval_sums_result_add_0_0(ADD,1102)@11
    assign prodXY_uid887_pT2_uid459_invPolyEval_sums_result_add_0_0_a = $unsigned({9'b000000000, redist28_prodXY_uid887_pT2_uid459_invPolyEval_im3_cma_q_1_q});
    assign prodXY_uid887_pT2_uid459_invPolyEval_sums_result_add_0_0_b = $unsigned({{2{prodXY_uid887_pT2_uid459_invPolyEval_sums_align_1_q[32]}}, prodXY_uid887_pT2_uid459_invPolyEval_sums_align_1_q});
    assign prodXY_uid887_pT2_uid459_invPolyEval_sums_result_add_0_0_o = $unsigned($signed(prodXY_uid887_pT2_uid459_invPolyEval_sums_result_add_0_0_a) + $signed(prodXY_uid887_pT2_uid459_invPolyEval_sums_result_add_0_0_b));
    assign prodXY_uid887_pT2_uid459_invPolyEval_sums_result_add_0_0_q = prodXY_uid887_pT2_uid459_invPolyEval_sums_result_add_0_0_o[33:0];

    // osig_uid888_pT2_uid459_invPolyEval(BITSELECT,887)@11
    assign osig_uid888_pT2_uid459_invPolyEval_in = $unsigned(prodXY_uid887_pT2_uid459_invPolyEval_sums_result_add_0_0_q[32:0]);
    assign osig_uid888_pT2_uid459_invPolyEval_b = $unsigned(osig_uid888_pT2_uid459_invPolyEval_in[32:7]);

    // redist54_osig_uid888_pT2_uid459_invPolyEval_b_1(DELAY,1220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_osig_uid888_pT2_uid459_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist54_osig_uid888_pT2_uid459_invPolyEval_b_1_q <= $unsigned(osig_uid888_pT2_uid459_invPolyEval_b);
        end
    end

    // highBBits_uid461_invPolyEval(BITSELECT,460)@12
    assign highBBits_uid461_invPolyEval_b = $unsigned(redist54_osig_uid888_pT2_uid459_invPolyEval_b_1_q[25:2]);

    // redist114_yAddr_uid74_block_rsrvd_fix_b_8_inputreg0(DELAY,1403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist114_yAddr_uid74_block_rsrvd_fix_b_8_inputreg0_q <= '0;
        end
        else
        begin
            redist114_yAddr_uid74_block_rsrvd_fix_b_8_inputreg0_q <= $unsigned(redist113_yAddr_uid74_block_rsrvd_fix_b_3_q);
        end
    end

    // redist114_yAddr_uid74_block_rsrvd_fix_b_8(DELAY,1280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist114_yAddr_uid74_block_rsrvd_fix_b_8_delay_0 <= '0;
            redist114_yAddr_uid74_block_rsrvd_fix_b_8_delay_1 <= '0;
            redist114_yAddr_uid74_block_rsrvd_fix_b_8_q <= '0;
        end
        else
        begin
            redist114_yAddr_uid74_block_rsrvd_fix_b_8_delay_0 <= $unsigned(redist114_yAddr_uid74_block_rsrvd_fix_b_8_inputreg0_q);
            redist114_yAddr_uid74_block_rsrvd_fix_b_8_delay_1 <= redist114_yAddr_uid74_block_rsrvd_fix_b_8_delay_0;
            redist114_yAddr_uid74_block_rsrvd_fix_b_8_q <= redist114_yAddr_uid74_block_rsrvd_fix_b_8_delay_1;
        end
    end

    // redist114_yAddr_uid74_block_rsrvd_fix_b_8_outputreg0(DELAY,1404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist114_yAddr_uid74_block_rsrvd_fix_b_8_outputreg0_q <= '0;
        end
        else
        begin
            redist114_yAddr_uid74_block_rsrvd_fix_b_8_outputreg0_q <= $unsigned(redist114_yAddr_uid74_block_rsrvd_fix_b_8_q);
        end
    end

    // memoryC0_uid437_lnTables_lutmem(DUALMEM,1083)@9 + 2
    // in j@20000000
    assign memoryC0_uid437_lnTables_lutmem_aa = redist114_yAddr_uid74_block_rsrvd_fix_b_8_outputreg0_q;
    assign memoryC0_uid437_lnTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(4),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d437_lnTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC0_uid437_lnTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid437_lnTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid437_lnTables_lutmem_aa),
        .q_a(memoryC0_uid437_lnTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC0_uid437_lnTables_lutmem_r = memoryC0_uid437_lnTables_lutmem_ir[3:0];

    // redist43_memoryC0_uid437_lnTables_lutmem_r_1(DELAY,1209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_memoryC0_uid437_lnTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist43_memoryC0_uid437_lnTables_lutmem_r_1_q <= $unsigned(memoryC0_uid437_lnTables_lutmem_r);
        end
    end

    // memoryC0_uid436_lnTables_lutmem(DUALMEM,1082)@9 + 2
    // in j@20000000
    assign memoryC0_uid436_lnTables_lutmem_aa = redist114_yAddr_uid74_block_rsrvd_fix_b_8_outputreg0_q;
    assign memoryC0_uid436_lnTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(10),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d436_lnTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC0_uid436_lnTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid436_lnTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid436_lnTables_lutmem_aa),
        .q_a(memoryC0_uid436_lnTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC0_uid436_lnTables_lutmem_r = memoryC0_uid436_lnTables_lutmem_ir[9:0];

    // redist44_memoryC0_uid436_lnTables_lutmem_r_1(DELAY,1210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_memoryC0_uid436_lnTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist44_memoryC0_uid436_lnTables_lutmem_r_1_q <= $unsigned(memoryC0_uid436_lnTables_lutmem_r);
        end
    end

    // memoryC0_uid435_lnTables_lutmem(DUALMEM,1081)@9 + 2
    // in j@20000000
    assign memoryC0_uid435_lnTables_lutmem_aa = redist114_yAddr_uid74_block_rsrvd_fix_b_8_outputreg0_q;
    assign memoryC0_uid435_lnTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(10),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d435_lnTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC0_uid435_lnTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid435_lnTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid435_lnTables_lutmem_aa),
        .q_a(memoryC0_uid435_lnTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC0_uid435_lnTables_lutmem_r = memoryC0_uid435_lnTables_lutmem_ir[9:0];

    // redist45_memoryC0_uid435_lnTables_lutmem_r_1(DELAY,1211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_memoryC0_uid435_lnTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist45_memoryC0_uid435_lnTables_lutmem_r_1_q <= $unsigned(memoryC0_uid435_lnTables_lutmem_r);
        end
    end

    // memoryC0_uid434_lnTables_lutmem(DUALMEM,1080)@9 + 2
    // in j@20000000
    assign memoryC0_uid434_lnTables_lutmem_aa = redist114_yAddr_uid74_block_rsrvd_fix_b_8_outputreg0_q;
    assign memoryC0_uid434_lnTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(10),
        .widthad_a(10),
        .numwords_a(1024),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001d434_lnTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC0_uid434_lnTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid434_lnTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid434_lnTables_lutmem_aa),
        .q_a(memoryC0_uid434_lnTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC0_uid434_lnTables_lutmem_r = memoryC0_uid434_lnTables_lutmem_ir[9:0];

    // redist46_memoryC0_uid434_lnTables_lutmem_r_1(DELAY,1212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_memoryC0_uid434_lnTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist46_memoryC0_uid434_lnTables_lutmem_r_1_q <= $unsigned(memoryC0_uid434_lnTables_lutmem_r);
        end
    end

    // os_uid438_lnTables(BITJOIN,437)@12
    assign os_uid438_lnTables_q = {redist43_memoryC0_uid437_lnTables_lutmem_r_1_q, redist44_memoryC0_uid436_lnTables_lutmem_r_1_q, redist45_memoryC0_uid435_lnTables_lutmem_r_1_q, redist46_memoryC0_uid434_lnTables_lutmem_r_1_q};

    // s2sumAHighB_uid462_invPolyEval(ADD,461)@12
    assign s2sumAHighB_uid462_invPolyEval_a = $unsigned({{1{os_uid438_lnTables_q[33]}}, os_uid438_lnTables_q});
    assign s2sumAHighB_uid462_invPolyEval_b = $unsigned({{11{highBBits_uid461_invPolyEval_b[23]}}, highBBits_uid461_invPolyEval_b});
    assign s2sumAHighB_uid462_invPolyEval_o = $unsigned($signed(s2sumAHighB_uid462_invPolyEval_a) + $signed(s2sumAHighB_uid462_invPolyEval_b));
    assign s2sumAHighB_uid462_invPolyEval_q = s2sumAHighB_uid462_invPolyEval_o[34:0];

    // lowRangeB_uid460_invPolyEval(BITSELECT,459)@12
    assign lowRangeB_uid460_invPolyEval_in = redist54_osig_uid888_pT2_uid459_invPolyEval_b_1_q[1:0];
    assign lowRangeB_uid460_invPolyEval_b = lowRangeB_uid460_invPolyEval_in[1:0];

    // s2_uid463_invPolyEval(BITJOIN,462)@12
    assign s2_uid463_invPolyEval_q = {s2sumAHighB_uid462_invPolyEval_q, lowRangeB_uid460_invPolyEval_b};

    // peORNatLog_uid77_block_rsrvd_fix(BITSELECT,76)@12
    assign peORNatLog_uid77_block_rsrvd_fix_in = $unsigned(s2_uid463_invPolyEval_q[35:0]);
    assign peORNatLog_uid77_block_rsrvd_fix_b = $unsigned(peORNatLog_uid77_block_rsrvd_fix_in[35:7]);

    // redist111_peORNatLog_uid77_block_rsrvd_fix_b_1(DELAY,1277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist111_peORNatLog_uid77_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist111_peORNatLog_uid77_block_rsrvd_fix_b_1_q <= $unsigned(peORNatLog_uid77_block_rsrvd_fix_b);
        end
    end

    // postPEMulLog_uid85_block_rsrvd_fix_bs2_merged_bit_select(BITSELECT,1149)@13
    assign postPEMulLog_uid85_block_rsrvd_fix_bs2_merged_bit_select_b = $unsigned(redist111_peORNatLog_uid77_block_rsrvd_fix_b_1_q[28:18]);
    assign postPEMulLog_uid85_block_rsrvd_fix_bs2_merged_bit_select_c = $unsigned(redist111_peORNatLog_uid77_block_rsrvd_fix_b_1_q[17:0]);

    // aPostPad_uid79_block_rsrvd_fix(BITJOIN,78)@12
    assign aPostPad_uid79_block_rsrvd_fix_q = {VCC_q, cstAllZWF_uid7_block_rsrvd_fix_q};

    // oMzLog_uid80_block_rsrvd_fix(SUB,79)@12 + 1
    assign oMzLog_uid80_block_rsrvd_fix_a = {1'b0, aPostPad_uid79_block_rsrvd_fix_q};
    assign oMzLog_uid80_block_rsrvd_fix_b = {2'b00, redist154_frac_x_uid17_block_rsrvd_fix_b_12_outputreg0_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            oMzLog_uid80_block_rsrvd_fix_o <= 19'b0;
        end
        else
        begin
            oMzLog_uid80_block_rsrvd_fix_o <= $unsigned(oMzLog_uid80_block_rsrvd_fix_a) - $unsigned(oMzLog_uid80_block_rsrvd_fix_b);
        end
    end
    assign oMzLog_uid80_block_rsrvd_fix_q = oMzLog_uid80_block_rsrvd_fix_o[18:0];

    // z2_uid81_block_rsrvd_fix(CONSTANT,80)
    assign z2_uid81_block_rsrvd_fix_q = $unsigned(2'b00);

    // sEzLog_uid82_block_rsrvd_fix(BITJOIN,81)@13
    assign sEzLog_uid82_block_rsrvd_fix_q = {z2_uid81_block_rsrvd_fix_q, redist155_frac_x_uid17_block_rsrvd_fix_b_13_q};

    // redist115_caseLog_uid71_block_rsrvd_fix_q_13(DELAY,1281)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist115_caseLog_uid71_block_rsrvd_fix_q_13 ( .xin(caseLog_uid71_block_rsrvd_fix_q), .xout(redist115_caseLog_uid71_block_rsrvd_fix_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // multTermOneLog_uid84_block_rsrvd_fix(MUX,83)@13
    assign multTermOneLog_uid84_block_rsrvd_fix_s = redist115_caseLog_uid71_block_rsrvd_fix_q_13_q;
    always @(multTermOneLog_uid84_block_rsrvd_fix_s or sEzLog_uid82_block_rsrvd_fix_q or oMzLog_uid80_block_rsrvd_fix_q)
    begin
        unique case (multTermOneLog_uid84_block_rsrvd_fix_s)
            1'b0 : multTermOneLog_uid84_block_rsrvd_fix_q = sEzLog_uid82_block_rsrvd_fix_q;
            1'b1 : multTermOneLog_uid84_block_rsrvd_fix_q = oMzLog_uid80_block_rsrvd_fix_q;
            default : multTermOneLog_uid84_block_rsrvd_fix_q = 19'b0;
        endcase
    end

    // postPEMulLog_uid85_block_rsrvd_fix_im0_cma(CHAINMULTADD,1122)@13 + 2
    assign postPEMulLog_uid85_block_rsrvd_fix_im0_cma_reset = ~ (resetn);
    assign postPEMulLog_uid85_block_rsrvd_fix_im0_cma_ena0 = 1'b1;
    assign postPEMulLog_uid85_block_rsrvd_fix_im0_cma_ena1 = postPEMulLog_uid85_block_rsrvd_fix_im0_cma_ena0;
    assign postPEMulLog_uid85_block_rsrvd_fix_im0_cma_p[0] = postPEMulLog_uid85_block_rsrvd_fix_im0_cma_a0[0] * postPEMulLog_uid85_block_rsrvd_fix_im0_cma_c0[0];
    assign postPEMulLog_uid85_block_rsrvd_fix_im0_cma_u[0] = postPEMulLog_uid85_block_rsrvd_fix_im0_cma_p[0][29:0];
    assign postPEMulLog_uid85_block_rsrvd_fix_im0_cma_w[0] = postPEMulLog_uid85_block_rsrvd_fix_im0_cma_u[0];
    assign postPEMulLog_uid85_block_rsrvd_fix_im0_cma_x[0] = postPEMulLog_uid85_block_rsrvd_fix_im0_cma_w[0];
    assign postPEMulLog_uid85_block_rsrvd_fix_im0_cma_y[0] = postPEMulLog_uid85_block_rsrvd_fix_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            postPEMulLog_uid85_block_rsrvd_fix_im0_cma_a0 <= '{default: '0};
            postPEMulLog_uid85_block_rsrvd_fix_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (postPEMulLog_uid85_block_rsrvd_fix_im0_cma_ena0 == 1'b1)
            begin
                postPEMulLog_uid85_block_rsrvd_fix_im0_cma_a0[0] <= multTermOneLog_uid84_block_rsrvd_fix_q;
                postPEMulLog_uid85_block_rsrvd_fix_im0_cma_c0[0] <= postPEMulLog_uid85_block_rsrvd_fix_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            postPEMulLog_uid85_block_rsrvd_fix_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (postPEMulLog_uid85_block_rsrvd_fix_im0_cma_ena1 == 1'b1)
            begin
                postPEMulLog_uid85_block_rsrvd_fix_im0_cma_s[0] <= postPEMulLog_uid85_block_rsrvd_fix_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(30), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    postPEMulLog_uid85_block_rsrvd_fix_im0_cma_delay ( .xin(postPEMulLog_uid85_block_rsrvd_fix_im0_cma_s[0]), .xout(postPEMulLog_uid85_block_rsrvd_fix_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign postPEMulLog_uid85_block_rsrvd_fix_im0_cma_q = $unsigned(postPEMulLog_uid85_block_rsrvd_fix_im0_cma_qq[29:0]);

    // redist32_postPEMulLog_uid85_block_rsrvd_fix_im0_cma_q_1(DELAY,1198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_postPEMulLog_uid85_block_rsrvd_fix_im0_cma_q_1_q <= '0;
        end
        else
        begin
            redist32_postPEMulLog_uid85_block_rsrvd_fix_im0_cma_q_1_q <= $unsigned(postPEMulLog_uid85_block_rsrvd_fix_im0_cma_q);
        end
    end

    // postPEMulLog_uid85_block_rsrvd_fix_sums_align_1(BITSHIFT,942)@16
    assign postPEMulLog_uid85_block_rsrvd_fix_sums_align_1_qint = { redist32_postPEMulLog_uid85_block_rsrvd_fix_im0_cma_q_1_q, 18'b000000000000000000 };
    assign postPEMulLog_uid85_block_rsrvd_fix_sums_align_1_q = postPEMulLog_uid85_block_rsrvd_fix_sums_align_1_qint[47:0];

    // postPEMulLog_uid85_block_rsrvd_fix_im3_cma(CHAINMULTADD,1123)@13 + 2
    assign postPEMulLog_uid85_block_rsrvd_fix_im3_cma_reset = ~ (resetn);
    assign postPEMulLog_uid85_block_rsrvd_fix_im3_cma_ena0 = 1'b1;
    assign postPEMulLog_uid85_block_rsrvd_fix_im3_cma_ena1 = postPEMulLog_uid85_block_rsrvd_fix_im3_cma_ena0;
    assign postPEMulLog_uid85_block_rsrvd_fix_im3_cma_r[0] = $signed({1'b0, postPEMulLog_uid85_block_rsrvd_fix_im3_cma_c0[0][17:0]});
    assign postPEMulLog_uid85_block_rsrvd_fix_im3_cma_p[0] = postPEMulLog_uid85_block_rsrvd_fix_im3_cma_a0[0] * postPEMulLog_uid85_block_rsrvd_fix_im3_cma_r[0];
    assign postPEMulLog_uid85_block_rsrvd_fix_im3_cma_u[0] = postPEMulLog_uid85_block_rsrvd_fix_im3_cma_p[0][37:0];
    assign postPEMulLog_uid85_block_rsrvd_fix_im3_cma_w[0] = postPEMulLog_uid85_block_rsrvd_fix_im3_cma_u[0];
    assign postPEMulLog_uid85_block_rsrvd_fix_im3_cma_x[0] = postPEMulLog_uid85_block_rsrvd_fix_im3_cma_w[0];
    assign postPEMulLog_uid85_block_rsrvd_fix_im3_cma_y[0] = postPEMulLog_uid85_block_rsrvd_fix_im3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            postPEMulLog_uid85_block_rsrvd_fix_im3_cma_a0 <= '{default: '0};
            postPEMulLog_uid85_block_rsrvd_fix_im3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (postPEMulLog_uid85_block_rsrvd_fix_im3_cma_ena0 == 1'b1)
            begin
                postPEMulLog_uid85_block_rsrvd_fix_im3_cma_a0[0] <= multTermOneLog_uid84_block_rsrvd_fix_q;
                postPEMulLog_uid85_block_rsrvd_fix_im3_cma_c0[0] <= postPEMulLog_uid85_block_rsrvd_fix_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            postPEMulLog_uid85_block_rsrvd_fix_im3_cma_s <= '{default: '0};
        end
        else
        begin
            if (postPEMulLog_uid85_block_rsrvd_fix_im3_cma_ena1 == 1'b1)
            begin
                postPEMulLog_uid85_block_rsrvd_fix_im3_cma_s[0] <= postPEMulLog_uid85_block_rsrvd_fix_im3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(38), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    postPEMulLog_uid85_block_rsrvd_fix_im3_cma_delay ( .xin(postPEMulLog_uid85_block_rsrvd_fix_im3_cma_s[0]), .xout(postPEMulLog_uid85_block_rsrvd_fix_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign postPEMulLog_uid85_block_rsrvd_fix_im3_cma_q = $unsigned(postPEMulLog_uid85_block_rsrvd_fix_im3_cma_qq[36:0]);

    // redist31_postPEMulLog_uid85_block_rsrvd_fix_im3_cma_q_1(DELAY,1197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_postPEMulLog_uid85_block_rsrvd_fix_im3_cma_q_1_q <= '0;
        end
        else
        begin
            redist31_postPEMulLog_uid85_block_rsrvd_fix_im3_cma_q_1_q <= $unsigned(postPEMulLog_uid85_block_rsrvd_fix_im3_cma_q);
        end
    end

    // postPEMulLog_uid85_block_rsrvd_fix_sums_result_add_0_0(ADD,944)@16
    assign postPEMulLog_uid85_block_rsrvd_fix_sums_result_add_0_0_a = $unsigned({{12{redist31_postPEMulLog_uid85_block_rsrvd_fix_im3_cma_q_1_q[36]}}, redist31_postPEMulLog_uid85_block_rsrvd_fix_im3_cma_q_1_q});
    assign postPEMulLog_uid85_block_rsrvd_fix_sums_result_add_0_0_b = $unsigned({{1{postPEMulLog_uid85_block_rsrvd_fix_sums_align_1_q[47]}}, postPEMulLog_uid85_block_rsrvd_fix_sums_align_1_q});
    assign postPEMulLog_uid85_block_rsrvd_fix_sums_result_add_0_0_o = $unsigned($signed(postPEMulLog_uid85_block_rsrvd_fix_sums_result_add_0_0_a) + $signed(postPEMulLog_uid85_block_rsrvd_fix_sums_result_add_0_0_b));
    assign postPEMulLog_uid85_block_rsrvd_fix_sums_result_add_0_0_q = postPEMulLog_uid85_block_rsrvd_fix_sums_result_add_0_0_o[48:0];

    // highBBits_uid89_block_rsrvd_fix(BITSELECT,88)@16
    assign highBBits_uid89_block_rsrvd_fix_in = $unsigned(postPEMulLog_uid85_block_rsrvd_fix_sums_result_add_0_0_q[47:0]);
    assign highBBits_uid89_block_rsrvd_fix_b = $unsigned(highBBits_uid89_block_rsrvd_fix_in[47:14]);

    // redist109_highBBits_uid89_block_rsrvd_fix_b_1(DELAY,1275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist109_highBBits_uid89_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist109_highBBits_uid89_block_rsrvd_fix_b_1_q <= $unsigned(highBBits_uid89_block_rsrvd_fix_b);
        end
    end

    // wideZeroLogAdd_uid86_block_rsrvd_fix(CONSTANT,85)
    assign wideZeroLogAdd_uid86_block_rsrvd_fix_q = $unsigned(39'b000000000000000000000000000000000000000);

    // e_uid69_block_rsrvd_fix(SUB,68)@13
    assign e_uid69_block_rsrvd_fix_a = {1'b0, redist156_exp_x_uid16_block_rsrvd_fix_b_13_outputreg0_q};
    assign e_uid69_block_rsrvd_fix_b = {1'b0, cstBias_uid8_block_rsrvd_fix_q};
    assign e_uid69_block_rsrvd_fix_o = $unsigned(e_uid69_block_rsrvd_fix_a) - $unsigned(e_uid69_block_rsrvd_fix_b);
    assign e_uid69_block_rsrvd_fix_q = e_uid69_block_rsrvd_fix_o[8:0];

    // xv0_uid427_eLn2_uid70_block_rsrvd_fix(BITSELECT,426)@13
    assign xv0_uid427_eLn2_uid70_block_rsrvd_fix_in = e_uid69_block_rsrvd_fix_q[4:0];
    assign xv0_uid427_eLn2_uid70_block_rsrvd_fix_b = xv0_uid427_eLn2_uid70_block_rsrvd_fix_in[4:0];

    // redist81_xv0_uid427_eLn2_uid70_block_rsrvd_fix_b_1(DELAY,1247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_xv0_uid427_eLn2_uid70_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist81_xv0_uid427_eLn2_uid70_block_rsrvd_fix_b_1_q <= $unsigned(xv0_uid427_eLn2_uid70_block_rsrvd_fix_b);
        end
    end

    // p0_uid430_eLn2_uid70_block_rsrvd_fix(LOOKUP,429)@14 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= $unsigned(37'b0000000000000000000000000000000000000);
        end
        else
        begin
            unique case (redist81_xv0_uid427_eLn2_uid70_block_rsrvd_fix_b_1_q)
                5'b00000 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0000000000000000000000000000000000000;
                5'b00001 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0000010110001011100100001011111110111;
                5'b00010 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0000101100010111001000010111111101111;
                5'b00011 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0001000010100010101100100011111100111;
                5'b00100 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0001011000101110010000101111111011111;
                5'b00101 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0001101110111001110100111011111010111;
                5'b00110 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0010000101000101011001000111111001110;
                5'b00111 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0010011011010000111101010011111000110;
                5'b01000 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0010110001011100100001011111110111110;
                5'b01001 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0011000111101000000101101011110110110;
                5'b01010 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0011011101110011101001110111110101110;
                5'b01011 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0011110011111111001110000011110100110;
                5'b01100 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0100001010001010110010001111110011101;
                5'b01101 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0100100000010110010110011011110010101;
                5'b01110 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0100110110100001111010100111110001101;
                5'b01111 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0101001100101101011110110011110000101;
                5'b10000 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0101100010111001000010111111101111101;
                5'b10001 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0101111001000100100111001011101110100;
                5'b10010 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0110001111010000001011010111101101100;
                5'b10011 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0110100101011011101111100011101100100;
                5'b10100 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0110111011100111010011101111101011100;
                5'b10101 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0111010001110010110111111011101010100;
                5'b10110 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0111100111111110011100000111101001100;
                5'b10111 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b0111111110001010000000010011101000011;
                5'b11000 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b1000010100010101100100011111100111011;
                5'b11001 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b1000101010100001001000101011100110011;
                5'b11010 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b1001000000101100101100110111100101011;
                5'b11011 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b1001010110111000010001000011100100011;
                5'b11100 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b1001101101000011110101001111100011010;
                5'b11101 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b1010000011001111011001011011100010010;
                5'b11110 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b1010011001011010111101100111100001010;
                5'b11111 : p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'b1010101111100110100001110011100000010;
                default : begin
                              // unreachable
                              p0_uid430_eLn2_uid70_block_rsrvd_fix_q <= 37'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // xv1_uid428_eLn2_uid70_block_rsrvd_fix(BITSELECT,427)@13
    assign xv1_uid428_eLn2_uid70_block_rsrvd_fix_b = $unsigned(e_uid69_block_rsrvd_fix_q[8:5]);

    // redist80_xv1_uid428_eLn2_uid70_block_rsrvd_fix_b_1(DELAY,1246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_xv1_uid428_eLn2_uid70_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist80_xv1_uid428_eLn2_uid70_block_rsrvd_fix_b_1_q <= $unsigned(xv1_uid428_eLn2_uid70_block_rsrvd_fix_b);
        end
    end

    // p1_uid429_eLn2_uid70_block_rsrvd_fix(LOOKUP,428)@14 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= $unsigned(42'b000000000000000000000000000000000000000010);
        end
        else
        begin
            unique case (redist80_xv1_uid428_eLn2_uid70_block_rsrvd_fix_b_1_q)
                4'b0000 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b000000000000000000000000000000000000000010;
                4'b0001 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b000001011000101110010000101111111011111100;
                4'b0010 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b000010110001011100100001011111110111110110;
                4'b0011 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b000100001010001010110010001111110011110000;
                4'b0100 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b000101100010111001000010111111101111101010;
                4'b0101 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b000110111011100111010011101111101011100101;
                4'b0110 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b001000010100010101100100011111100111011111;
                4'b0111 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b001001101101000011110101001111100011011001;
                4'b1000 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b110100111010001101111010000000100000110000;
                4'b1001 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b110110010010111100001010110000011100101010;
                4'b1010 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b110111101011101010011011100000011000100100;
                4'b1011 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b111001000100011000101100010000010100011110;
                4'b1100 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b111010011101000110111101000000010000011001;
                4'b1101 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b111011110101110101001101110000001100010011;
                4'b1110 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b111101001110100011011110100000001000001101;
                4'b1111 : p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'b111110100111010001101111010000000100000111;
                default : begin
                              // unreachable
                              p1_uid429_eLn2_uid70_block_rsrvd_fix_q <= 42'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // lev1_a0_uid431_eLn2_uid70_block_rsrvd_fix(ADD,430)@15
    assign lev1_a0_uid431_eLn2_uid70_block_rsrvd_fix_a = $unsigned({{2{p1_uid429_eLn2_uid70_block_rsrvd_fix_q[41]}}, p1_uid429_eLn2_uid70_block_rsrvd_fix_q});
    assign lev1_a0_uid431_eLn2_uid70_block_rsrvd_fix_b = $unsigned({7'b0000000, p0_uid430_eLn2_uid70_block_rsrvd_fix_q});
    assign lev1_a0_uid431_eLn2_uid70_block_rsrvd_fix_o = $unsigned($signed(lev1_a0_uid431_eLn2_uid70_block_rsrvd_fix_a) + $signed(lev1_a0_uid431_eLn2_uid70_block_rsrvd_fix_b));
    assign lev1_a0_uid431_eLn2_uid70_block_rsrvd_fix_q = lev1_a0_uid431_eLn2_uid70_block_rsrvd_fix_o[42:0];

    // sOuputFormat_uid432_eLn2_uid70_block_rsrvd_fix(BITSELECT,431)@15
    assign sOuputFormat_uid432_eLn2_uid70_block_rsrvd_fix_in = $unsigned(lev1_a0_uid431_eLn2_uid70_block_rsrvd_fix_q[40:0]);
    assign sOuputFormat_uid432_eLn2_uid70_block_rsrvd_fix_b = $unsigned(sOuputFormat_uid432_eLn2_uid70_block_rsrvd_fix_in[40:2]);

    // redist79_sOuputFormat_uid432_eLn2_uid70_block_rsrvd_fix_b_1(DELAY,1245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_sOuputFormat_uid432_eLn2_uid70_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist79_sOuputFormat_uid432_eLn2_uid70_block_rsrvd_fix_b_1_q <= $unsigned(sOuputFormat_uid432_eLn2_uid70_block_rsrvd_fix_b);
        end
    end

    // redist116_caseLog_uid71_block_rsrvd_fix_q_16(DELAY,1282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist116_caseLog_uid71_block_rsrvd_fix_q_16_delay_0 <= '0;
            redist116_caseLog_uid71_block_rsrvd_fix_q_16_delay_1 <= '0;
            redist116_caseLog_uid71_block_rsrvd_fix_q_16_q <= '0;
        end
        else
        begin
            redist116_caseLog_uid71_block_rsrvd_fix_q_16_delay_0 <= $unsigned(redist115_caseLog_uid71_block_rsrvd_fix_q_13_q);
            redist116_caseLog_uid71_block_rsrvd_fix_q_16_delay_1 <= redist116_caseLog_uid71_block_rsrvd_fix_q_16_delay_0;
            redist116_caseLog_uid71_block_rsrvd_fix_q_16_q <= redist116_caseLog_uid71_block_rsrvd_fix_q_16_delay_1;
        end
    end

    // addTermOneLog_uid87_block_rsrvd_fix(MUX,86)@16 + 1
    assign addTermOneLog_uid87_block_rsrvd_fix_s = redist116_caseLog_uid71_block_rsrvd_fix_q_16_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addTermOneLog_uid87_block_rsrvd_fix_q <= 39'b0;
        end
        else
        begin
            unique case (addTermOneLog_uid87_block_rsrvd_fix_s)
                1'b0 : addTermOneLog_uid87_block_rsrvd_fix_q <= redist79_sOuputFormat_uid432_eLn2_uid70_block_rsrvd_fix_b_1_q;
                1'b1 : addTermOneLog_uid87_block_rsrvd_fix_q <= wideZeroLogAdd_uid86_block_rsrvd_fix_q;
                default : addTermOneLog_uid87_block_rsrvd_fix_q <= 39'b0;
            endcase
        end
    end

    // finalSumLogsumAHighB_uid90_block_rsrvd_fix(ADD,89)@17 + 1
    assign finalSumLogsumAHighB_uid90_block_rsrvd_fix_a = $unsigned({{1{addTermOneLog_uid87_block_rsrvd_fix_q[38]}}, addTermOneLog_uid87_block_rsrvd_fix_q});
    assign finalSumLogsumAHighB_uid90_block_rsrvd_fix_b = $unsigned({{6{redist109_highBBits_uid89_block_rsrvd_fix_b_1_q[33]}}, redist109_highBBits_uid89_block_rsrvd_fix_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            finalSumLogsumAHighB_uid90_block_rsrvd_fix_o <= 40'b0;
        end
        else
        begin
            finalSumLogsumAHighB_uid90_block_rsrvd_fix_o <= $unsigned($signed(finalSumLogsumAHighB_uid90_block_rsrvd_fix_a) + $signed(finalSumLogsumAHighB_uid90_block_rsrvd_fix_b));
        end
    end
    assign finalSumLogsumAHighB_uid90_block_rsrvd_fix_q = finalSumLogsumAHighB_uid90_block_rsrvd_fix_o[39:0];

    // lowRangeB_uid88_block_rsrvd_fix(BITSELECT,87)@16
    assign lowRangeB_uid88_block_rsrvd_fix_in = postPEMulLog_uid85_block_rsrvd_fix_sums_result_add_0_0_q[13:0];
    assign lowRangeB_uid88_block_rsrvd_fix_b = lowRangeB_uid88_block_rsrvd_fix_in[13:0];

    // redist110_lowRangeB_uid88_block_rsrvd_fix_b_2(DELAY,1276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist110_lowRangeB_uid88_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist110_lowRangeB_uid88_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist110_lowRangeB_uid88_block_rsrvd_fix_b_2_delay_0 <= $unsigned(lowRangeB_uid88_block_rsrvd_fix_b);
            redist110_lowRangeB_uid88_block_rsrvd_fix_b_2_q <= redist110_lowRangeB_uid88_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // finalSumLog_uid91_block_rsrvd_fix(BITJOIN,90)@18
    assign finalSumLog_uid91_block_rsrvd_fix_q = {finalSumLogsumAHighB_uid90_block_rsrvd_fix_q, redist110_lowRangeB_uid88_block_rsrvd_fix_b_2_q};

    // finalSumSignLog_uid92_block_rsrvd_fix(BITSELECT,91)@18
    assign finalSumSignLog_uid92_block_rsrvd_fix_b = $unsigned(finalSumLog_uid91_block_rsrvd_fix_q[53:53]);

    // notCaseLog_uid98_block_rsrvd_fix(LOGICAL,97)@18
    assign notCaseLog_uid98_block_rsrvd_fix_q = ~ (redist117_caseLog_uid71_block_rsrvd_fix_q_18_q);

    // signSignLog_uid99_block_rsrvd_fix(LOGICAL,98)@18
    assign signSignLog_uid99_block_rsrvd_fix_q = notCaseLog_uid98_block_rsrvd_fix_q & finalSumSignLog_uid92_block_rsrvd_fix_b;

    // redist117_caseLog_uid71_block_rsrvd_fix_q_18(DELAY,1283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist117_caseLog_uid71_block_rsrvd_fix_q_18_delay_0 <= '0;
            redist117_caseLog_uid71_block_rsrvd_fix_q_18_q <= '0;
        end
        else
        begin
            redist117_caseLog_uid71_block_rsrvd_fix_q_18_delay_0 <= $unsigned(redist116_caseLog_uid71_block_rsrvd_fix_q_16_q);
            redist117_caseLog_uid71_block_rsrvd_fix_q_18_q <= redist117_caseLog_uid71_block_rsrvd_fix_q_18_delay_0;
        end
    end

    // signRLog0_uid100_block_rsrvd_fix(LOGICAL,99)@18 + 1
    assign signRLog0_uid100_block_rsrvd_fix_qi = redist117_caseLog_uid71_block_rsrvd_fix_q_18_q | signSignLog_uid99_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signRLog0_uid100_block_rsrvd_fix_delay ( .xin(signRLog0_uid100_block_rsrvd_fix_qi), .xout(signRLog0_uid100_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist108_signRLog0_uid100_block_rsrvd_fix_q_16(DELAY,1274)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist108_signRLog0_uid100_block_rsrvd_fix_q_16 ( .xin(signRLog0_uid100_block_rsrvd_fix_q), .xout(redist108_signRLog0_uid100_block_rsrvd_fix_q_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // signRLog_uid101_block_rsrvd_fix(LOGICAL,100)@34 + 1
    assign signRLog_uid101_block_rsrvd_fix_qi = excR_x_uid26_block_rsrvd_fix_q & redist108_signRLog0_uid100_block_rsrvd_fix_q_16_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signRLog_uid101_block_rsrvd_fix_delay ( .xin(signRLog_uid101_block_rsrvd_fix_qi), .xout(signRLog_uid101_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // signProd_uid121_block_rsrvd_fix(LOGICAL,120)@35
    assign signProd_uid121_block_rsrvd_fix_q = signRLog_uid101_block_rsrvd_fix_q ^ redist127_signY_uid44_block_rsrvd_fix_b_5_q;

    // redist99_signProd_uid121_block_rsrvd_fix_q_1(DELAY,1265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist99_signProd_uid121_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist99_signProd_uid121_block_rsrvd_fix_q_1_q <= $unsigned(signProd_uid121_block_rsrvd_fix_q);
        end
    end

    // zs_uid465_countZLog_uid96_block_rsrvd_fix(CONSTANT,464)
    assign zs_uid465_countZLog_uid96_block_rsrvd_fix_q = $unsigned(32'b00000000000000000000000000000000);

    // finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_0(BITSELECT,1144)@18
    assign finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_0_b = $unsigned(finalSumLogsumAHighB_uid90_block_rsrvd_fix_q[39:39]);

    // redist21_finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_0_b_1(DELAY,1187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_0_b_1_q <= '0;
        end
        else
        begin
            redist21_finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_0_b_1_q <= $unsigned(finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_0_b);
        end
    end

    // finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_BitJoin_for_b(BITJOIN,1146)@19
    assign finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_BitJoin_for_b_q = {finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_1_merged_bit_select_b, redist21_finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_0_b_1_q};

    // finalSumOneCompLog_uid94_block_rsrvd_fix(LOGICAL,93)@18 + 1
    assign finalSumOneCompLog_uid94_block_rsrvd_fix_b = $unsigned({{53{finalSumSignLog_uid92_block_rsrvd_fix_b[0]}}, finalSumSignLog_uid92_block_rsrvd_fix_b});
    assign finalSumOneCompLog_uid94_block_rsrvd_fix_qi = finalSumLog_uid91_block_rsrvd_fix_q ^ finalSumOneCompLog_uid94_block_rsrvd_fix_b;
    dspba_delay_ver #( .width(54), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    finalSumOneCompLog_uid94_block_rsrvd_fix_delay ( .xin(finalSumOneCompLog_uid94_block_rsrvd_fix_qi), .xout(finalSumOneCompLog_uid94_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,1150)@19
    assign finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(finalSumOneCompLog_uid94_block_rsrvd_fix_q[51:0]);
    assign finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(finalSumOneCompLog_uid94_block_rsrvd_fix_q[53:52]);

    // finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2(ADD,1136)@19 + 1
    assign finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_a = {1'b0, finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_b = {1'b0, finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_o <= 53'b0;
        end
        else
        begin
            finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_o <= $unsigned(finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_a) + $unsigned(finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_b);
        end
    end
    assign finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_c[0] = finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_o[52];
    assign finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_q = finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_o[51:0];

    // finalSumAbsLog_uid95_block_rsrvd_fix_UpperBits_for_b(CONSTANT,1133)
    assign finalSumAbsLog_uid95_block_rsrvd_fix_UpperBits_for_b_q = $unsigned(54'b000000000000000000000000000000000000000000000000000000);

    // finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,1165)
    assign finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(finalSumAbsLog_uid95_block_rsrvd_fix_UpperBits_for_b_q[50:0]);
    assign finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(finalSumAbsLog_uid95_block_rsrvd_fix_UpperBits_for_b_q[53:51]);

    // redist20_finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,1186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist20_finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_BitJoin_for_c(BITJOIN,1143)@20
    assign finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist20_finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2(ADD,1137)@20 + 1
    assign finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_cin = finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_c;
    assign finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_a = { {1'b0, finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_b = { {1'b0, finalSumAbsLog_uid95_block_rsrvd_fix_BitSelect_for_b_tessel0_1_merged_bit_select_c}, finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_o <= 5'b0;
        end
        else
        begin
            finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_o <= $unsigned(finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_a) + $unsigned(finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_b);
        end
    end
    assign finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_q = finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_o[3:1];

    // redist24_finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_q_1(DELAY,1190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist24_finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_q_1_q <= $unsigned(finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_q);
        end
    end

    // finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q(BITJOIN,1138)@21
    assign finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q = {finalSumAbsLog_uid95_block_rsrvd_fix_p2_of_2_q, redist24_finalSumAbsLog_uid95_block_rsrvd_fix_p1_of_2_q_1_q};

    // rVStage_uid466_countZLog_uid96_block_rsrvd_fix(BITSELECT,465)@21
    assign rVStage_uid466_countZLog_uid96_block_rsrvd_fix_b = finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q[54:23];

    // vCount_uid467_countZLog_uid96_block_rsrvd_fix(LOGICAL,466)@21 + 1
    assign vCount_uid467_countZLog_uid96_block_rsrvd_fix_qi = $unsigned(rVStage_uid466_countZLog_uid96_block_rsrvd_fix_b == zs_uid465_countZLog_uid96_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid467_countZLog_uid96_block_rsrvd_fix_delay ( .xin(vCount_uid467_countZLog_uid96_block_rsrvd_fix_qi), .xout(vCount_uid467_countZLog_uid96_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist75_vCount_uid467_countZLog_uid96_block_rsrvd_fix_q_7(DELAY,1241)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist75_vCount_uid467_countZLog_uid96_block_rsrvd_fix_q_7 ( .xin(vCount_uid467_countZLog_uid96_block_rsrvd_fix_q), .xout(redist75_vCount_uid467_countZLog_uid96_block_rsrvd_fix_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // zs_uid473_countZLog_uid96_block_rsrvd_fix(CONSTANT,472)
    assign zs_uid473_countZLog_uid96_block_rsrvd_fix_q = $unsigned(16'b0000000000000000);

    // redist22_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_1(DELAY,1188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_1_q <= '0;
        end
        else
        begin
            redist22_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_1_q <= $unsigned(finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q);
        end
    end

    // vStage_uid469_countZLog_uid96_block_rsrvd_fix(BITSELECT,468)@22
    assign vStage_uid469_countZLog_uid96_block_rsrvd_fix_in = redist22_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_1_q[22:0];
    assign vStage_uid469_countZLog_uid96_block_rsrvd_fix_b = vStage_uid469_countZLog_uid96_block_rsrvd_fix_in[22:0];

    // mO_uid468_countZLog_uid96_block_rsrvd_fix(CONSTANT,467)
    assign mO_uid468_countZLog_uid96_block_rsrvd_fix_q = $unsigned(9'b111111111);

    // cStage_uid470_countZLog_uid96_block_rsrvd_fix(BITJOIN,469)@22
    assign cStage_uid470_countZLog_uid96_block_rsrvd_fix_q = {vStage_uid469_countZLog_uid96_block_rsrvd_fix_b, mO_uid468_countZLog_uid96_block_rsrvd_fix_q};

    // redist76_rVStage_uid466_countZLog_uid96_block_rsrvd_fix_b_1(DELAY,1242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_rVStage_uid466_countZLog_uid96_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist76_rVStage_uid466_countZLog_uid96_block_rsrvd_fix_b_1_q <= $unsigned(rVStage_uid466_countZLog_uid96_block_rsrvd_fix_b);
        end
    end

    // vStagei_uid472_countZLog_uid96_block_rsrvd_fix(MUX,471)@22 + 1
    assign vStagei_uid472_countZLog_uid96_block_rsrvd_fix_s = vCount_uid467_countZLog_uid96_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid472_countZLog_uid96_block_rsrvd_fix_q <= 32'b0;
        end
        else
        begin
            unique case (vStagei_uid472_countZLog_uid96_block_rsrvd_fix_s)
                1'b0 : vStagei_uid472_countZLog_uid96_block_rsrvd_fix_q <= redist76_rVStage_uid466_countZLog_uid96_block_rsrvd_fix_b_1_q;
                1'b1 : vStagei_uid472_countZLog_uid96_block_rsrvd_fix_q <= cStage_uid470_countZLog_uid96_block_rsrvd_fix_q;
                default : vStagei_uid472_countZLog_uid96_block_rsrvd_fix_q <= 32'b0;
            endcase
        end
    end

    // rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select(BITSELECT,1159)@23
    assign rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b = vStagei_uid472_countZLog_uid96_block_rsrvd_fix_q[31:16];
    assign rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c = vStagei_uid472_countZLog_uid96_block_rsrvd_fix_q[15:0];

    // vCount_uid475_countZLog_uid96_block_rsrvd_fix(LOGICAL,474)@23 + 1
    assign vCount_uid475_countZLog_uid96_block_rsrvd_fix_qi = $unsigned(rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b == zs_uid473_countZLog_uid96_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid475_countZLog_uid96_block_rsrvd_fix_delay ( .xin(vCount_uid475_countZLog_uid96_block_rsrvd_fix_qi), .xout(vCount_uid475_countZLog_uid96_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5(DELAY,1239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_delay_2 <= '0;
            redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_delay_0 <= $unsigned(vCount_uid475_countZLog_uid96_block_rsrvd_fix_q);
            redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_delay_1 <= redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_delay_0;
            redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_delay_2 <= redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_delay_1;
            redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_q <= redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_delay_2;
        end
    end

    // redist9_rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1(DELAY,1175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist9_rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // redist8_rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1(DELAY,1174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist8_rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // vStagei_uid478_countZLog_uid96_block_rsrvd_fix(MUX,477)@24 + 1
    assign vStagei_uid478_countZLog_uid96_block_rsrvd_fix_s = vCount_uid475_countZLog_uid96_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid478_countZLog_uid96_block_rsrvd_fix_q <= 16'b0;
        end
        else
        begin
            unique case (vStagei_uid478_countZLog_uid96_block_rsrvd_fix_s)
                1'b0 : vStagei_uid478_countZLog_uid96_block_rsrvd_fix_q <= redist8_rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q;
                1'b1 : vStagei_uid478_countZLog_uid96_block_rsrvd_fix_q <= redist9_rVStage_uid474_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q;
                default : vStagei_uid478_countZLog_uid96_block_rsrvd_fix_q <= 16'b0;
            endcase
        end
    end

    // rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select(BITSELECT,1160)@25
    assign rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b = vStagei_uid478_countZLog_uid96_block_rsrvd_fix_q[15:8];
    assign rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c = vStagei_uid478_countZLog_uid96_block_rsrvd_fix_q[7:0];

    // vCount_uid481_countZLog_uid96_block_rsrvd_fix(LOGICAL,480)@25 + 1
    assign vCount_uid481_countZLog_uid96_block_rsrvd_fix_qi = $unsigned(rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b == cstAllZWE_uid15_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid481_countZLog_uid96_block_rsrvd_fix_delay ( .xin(vCount_uid481_countZLog_uid96_block_rsrvd_fix_qi), .xout(vCount_uid481_countZLog_uid96_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist72_vCount_uid481_countZLog_uid96_block_rsrvd_fix_q_3(DELAY,1238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_vCount_uid481_countZLog_uid96_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist72_vCount_uid481_countZLog_uid96_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist72_vCount_uid481_countZLog_uid96_block_rsrvd_fix_q_3_delay_0 <= $unsigned(vCount_uid481_countZLog_uid96_block_rsrvd_fix_q);
            redist72_vCount_uid481_countZLog_uid96_block_rsrvd_fix_q_3_q <= redist72_vCount_uid481_countZLog_uid96_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // zs_uid485_countZLog_uid96_block_rsrvd_fix(CONSTANT,484)
    assign zs_uid485_countZLog_uid96_block_rsrvd_fix_q = $unsigned(4'b0000);

    // redist7_rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1(DELAY,1173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist7_rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // redist6_rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1(DELAY,1172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist6_rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // vStagei_uid484_countZLog_uid96_block_rsrvd_fix(MUX,483)@26
    assign vStagei_uid484_countZLog_uid96_block_rsrvd_fix_s = vCount_uid481_countZLog_uid96_block_rsrvd_fix_q;
    always @(vStagei_uid484_countZLog_uid96_block_rsrvd_fix_s or redist6_rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q or redist7_rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid484_countZLog_uid96_block_rsrvd_fix_s)
            1'b0 : vStagei_uid484_countZLog_uid96_block_rsrvd_fix_q = redist6_rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid484_countZLog_uid96_block_rsrvd_fix_q = redist7_rVStage_uid480_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q;
            default : vStagei_uid484_countZLog_uid96_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select(BITSELECT,1161)@26
    assign rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b = vStagei_uid484_countZLog_uid96_block_rsrvd_fix_q[7:4];
    assign rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c = vStagei_uid484_countZLog_uid96_block_rsrvd_fix_q[3:0];

    // vCount_uid487_countZLog_uid96_block_rsrvd_fix(LOGICAL,486)@26 + 1
    assign vCount_uid487_countZLog_uid96_block_rsrvd_fix_qi = $unsigned(rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b == zs_uid485_countZLog_uid96_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid487_countZLog_uid96_block_rsrvd_fix_delay ( .xin(vCount_uid487_countZLog_uid96_block_rsrvd_fix_qi), .xout(vCount_uid487_countZLog_uid96_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist71_vCount_uid487_countZLog_uid96_block_rsrvd_fix_q_2(DELAY,1237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_vCount_uid487_countZLog_uid96_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist71_vCount_uid487_countZLog_uid96_block_rsrvd_fix_q_2_q <= $unsigned(vCount_uid487_countZLog_uid96_block_rsrvd_fix_q);
        end
    end

    // redist5_rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1(DELAY,1171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist5_rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // redist4_rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1(DELAY,1170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist4_rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // vStagei_uid490_countZLog_uid96_block_rsrvd_fix(MUX,489)@27
    assign vStagei_uid490_countZLog_uid96_block_rsrvd_fix_s = vCount_uid487_countZLog_uid96_block_rsrvd_fix_q;
    always @(vStagei_uid490_countZLog_uid96_block_rsrvd_fix_s or redist4_rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q or redist5_rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid490_countZLog_uid96_block_rsrvd_fix_s)
            1'b0 : vStagei_uid490_countZLog_uid96_block_rsrvd_fix_q = redist4_rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid490_countZLog_uid96_block_rsrvd_fix_q = redist5_rVStage_uid486_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q;
            default : vStagei_uid490_countZLog_uid96_block_rsrvd_fix_q = 4'b0;
        endcase
    end

    // rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select(BITSELECT,1162)@27
    assign rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b = vStagei_uid490_countZLog_uid96_block_rsrvd_fix_q[3:2];
    assign rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c = vStagei_uid490_countZLog_uid96_block_rsrvd_fix_q[1:0];

    // vCount_uid493_countZLog_uid96_block_rsrvd_fix(LOGICAL,492)@27 + 1
    assign vCount_uid493_countZLog_uid96_block_rsrvd_fix_qi = $unsigned(rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b == z2_uid81_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid493_countZLog_uid96_block_rsrvd_fix_delay ( .xin(vCount_uid493_countZLog_uid96_block_rsrvd_fix_qi), .xout(vCount_uid493_countZLog_uid96_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1(DELAY,1169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist3_rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // redist2_rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1(DELAY,1168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist2_rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // vStagei_uid496_countZLog_uid96_block_rsrvd_fix(MUX,495)@28
    assign vStagei_uid496_countZLog_uid96_block_rsrvd_fix_s = vCount_uid493_countZLog_uid96_block_rsrvd_fix_q;
    always @(vStagei_uid496_countZLog_uid96_block_rsrvd_fix_s or redist2_rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q or redist3_rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid496_countZLog_uid96_block_rsrvd_fix_s)
            1'b0 : vStagei_uid496_countZLog_uid96_block_rsrvd_fix_q = redist2_rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid496_countZLog_uid96_block_rsrvd_fix_q = redist3_rVStage_uid492_countZLog_uid96_block_rsrvd_fix_merged_bit_select_c_1_q;
            default : vStagei_uid496_countZLog_uid96_block_rsrvd_fix_q = 2'b0;
        endcase
    end

    // rVStage_uid498_countZLog_uid96_block_rsrvd_fix(BITSELECT,497)@28
    assign rVStage_uid498_countZLog_uid96_block_rsrvd_fix_b = vStagei_uid496_countZLog_uid96_block_rsrvd_fix_q[1:1];

    // vCount_uid499_countZLog_uid96_block_rsrvd_fix(LOGICAL,498)@28
    assign vCount_uid499_countZLog_uid96_block_rsrvd_fix_q = $unsigned(rVStage_uid498_countZLog_uid96_block_rsrvd_fix_b == GND_q ? 1'b1 : 1'b0);

    // r_uid500_countZLog_uid96_block_rsrvd_fix(BITJOIN,499)@28
    assign r_uid500_countZLog_uid96_block_rsrvd_fix_q = {redist75_vCount_uid467_countZLog_uid96_block_rsrvd_fix_q_7_q, redist73_vCount_uid475_countZLog_uid96_block_rsrvd_fix_q_5_q, redist72_vCount_uid481_countZLog_uid96_block_rsrvd_fix_q_3_q, redist71_vCount_uid487_countZLog_uid96_block_rsrvd_fix_q_2_q, vCount_uid493_countZLog_uid96_block_rsrvd_fix_q, vCount_uid499_countZLog_uid96_block_rsrvd_fix_q};

    // redist70_r_uid500_countZLog_uid96_block_rsrvd_fix_q_1(DELAY,1236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_r_uid500_countZLog_uid96_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist70_r_uid500_countZLog_uid96_block_rsrvd_fix_q_1_q <= $unsigned(r_uid500_countZLog_uid96_block_rsrvd_fix_q);
        end
    end

    // cstMSBFinalSumPBias_uid102_block_rsrvd_fix(CONSTANT,101)
    assign cstMSBFinalSumPBias_uid102_block_rsrvd_fix_q = $unsigned(9'b010001001);

    // expRExtLog_uid103_block_rsrvd_fix(SUB,102)@29 + 1
    assign expRExtLog_uid103_block_rsrvd_fix_a = {1'b0, cstMSBFinalSumPBias_uid102_block_rsrvd_fix_q};
    assign expRExtLog_uid103_block_rsrvd_fix_b = {4'b0000, redist70_r_uid500_countZLog_uid96_block_rsrvd_fix_q_1_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expRExtLog_uid103_block_rsrvd_fix_o <= 10'b0;
        end
        else
        begin
            expRExtLog_uid103_block_rsrvd_fix_o <= $unsigned(expRExtLog_uid103_block_rsrvd_fix_a) - $unsigned(expRExtLog_uid103_block_rsrvd_fix_b);
        end
    end
    assign expRExtLog_uid103_block_rsrvd_fix_q = expRExtLog_uid103_block_rsrvd_fix_o[9:0];

    // leftShiftStage2Idx3Rng3_uid977_normValLog_uid97_block_rsrvd_fix(BITSELECT,976)@29
    assign leftShiftStage2Idx3Rng3_uid977_normValLog_uid97_block_rsrvd_fix_in = leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_q[51:0];
    assign leftShiftStage2Idx3Rng3_uid977_normValLog_uid97_block_rsrvd_fix_b = leftShiftStage2Idx3Rng3_uid977_normValLog_uid97_block_rsrvd_fix_in[51:0];

    // leftShiftStage2Idx3Pad3_uid976_normValLog_uid97_block_rsrvd_fix(CONSTANT,975)
    assign leftShiftStage2Idx3Pad3_uid976_normValLog_uid97_block_rsrvd_fix_q = $unsigned(3'b000);

    // leftShiftStage2Idx3_uid978_normValLog_uid97_block_rsrvd_fix(BITJOIN,977)@29
    assign leftShiftStage2Idx3_uid978_normValLog_uid97_block_rsrvd_fix_q = {leftShiftStage2Idx3Rng3_uid977_normValLog_uid97_block_rsrvd_fix_b, leftShiftStage2Idx3Pad3_uid976_normValLog_uid97_block_rsrvd_fix_q};

    // leftShiftStage2Idx2Rng2_uid974_normValLog_uid97_block_rsrvd_fix(BITSELECT,973)@29
    assign leftShiftStage2Idx2Rng2_uid974_normValLog_uid97_block_rsrvd_fix_in = leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_q[52:0];
    assign leftShiftStage2Idx2Rng2_uid974_normValLog_uid97_block_rsrvd_fix_b = leftShiftStage2Idx2Rng2_uid974_normValLog_uid97_block_rsrvd_fix_in[52:0];

    // leftShiftStage2Idx2_uid975_normValLog_uid97_block_rsrvd_fix(BITJOIN,974)@29
    assign leftShiftStage2Idx2_uid975_normValLog_uid97_block_rsrvd_fix_q = {leftShiftStage2Idx2Rng2_uid974_normValLog_uid97_block_rsrvd_fix_b, z2_uid81_block_rsrvd_fix_q};

    // leftShiftStage2Idx1Rng1_uid971_normValLog_uid97_block_rsrvd_fix(BITSELECT,970)@29
    assign leftShiftStage2Idx1Rng1_uid971_normValLog_uid97_block_rsrvd_fix_in = leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_q[53:0];
    assign leftShiftStage2Idx1Rng1_uid971_normValLog_uid97_block_rsrvd_fix_b = leftShiftStage2Idx1Rng1_uid971_normValLog_uid97_block_rsrvd_fix_in[53:0];

    // leftShiftStage2Idx1_uid972_normValLog_uid97_block_rsrvd_fix(BITJOIN,971)@29
    assign leftShiftStage2Idx1_uid972_normValLog_uid97_block_rsrvd_fix_q = {leftShiftStage2Idx1Rng1_uid971_normValLog_uid97_block_rsrvd_fix_b, GND_q};

    // leftShiftStage1Idx3Rng12_uid966_normValLog_uid97_block_rsrvd_fix(BITSELECT,965)@29
    assign leftShiftStage1Idx3Rng12_uid966_normValLog_uid97_block_rsrvd_fix_in = leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_q[42:0];
    assign leftShiftStage1Idx3Rng12_uid966_normValLog_uid97_block_rsrvd_fix_b = leftShiftStage1Idx3Rng12_uid966_normValLog_uid97_block_rsrvd_fix_in[42:0];

    // leftShiftStage1Idx3Pad12_uid965_normValLog_uid97_block_rsrvd_fix(CONSTANT,964)
    assign leftShiftStage1Idx3Pad12_uid965_normValLog_uid97_block_rsrvd_fix_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid967_normValLog_uid97_block_rsrvd_fix(BITJOIN,966)@29
    assign leftShiftStage1Idx3_uid967_normValLog_uid97_block_rsrvd_fix_q = {leftShiftStage1Idx3Rng12_uid966_normValLog_uid97_block_rsrvd_fix_b, leftShiftStage1Idx3Pad12_uid965_normValLog_uid97_block_rsrvd_fix_q};

    // leftShiftStage1Idx2Rng8_uid963_normValLog_uid97_block_rsrvd_fix(BITSELECT,962)@29
    assign leftShiftStage1Idx2Rng8_uid963_normValLog_uid97_block_rsrvd_fix_in = leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_q[46:0];
    assign leftShiftStage1Idx2Rng8_uid963_normValLog_uid97_block_rsrvd_fix_b = leftShiftStage1Idx2Rng8_uid963_normValLog_uid97_block_rsrvd_fix_in[46:0];

    // leftShiftStage1Idx2_uid964_normValLog_uid97_block_rsrvd_fix(BITJOIN,963)@29
    assign leftShiftStage1Idx2_uid964_normValLog_uid97_block_rsrvd_fix_q = {leftShiftStage1Idx2Rng8_uid963_normValLog_uid97_block_rsrvd_fix_b, cstAllZWE_uid15_block_rsrvd_fix_q};

    // leftShiftStage1Idx1Rng4_uid960_normValLog_uid97_block_rsrvd_fix(BITSELECT,959)@29
    assign leftShiftStage1Idx1Rng4_uid960_normValLog_uid97_block_rsrvd_fix_in = leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_q[50:0];
    assign leftShiftStage1Idx1Rng4_uid960_normValLog_uid97_block_rsrvd_fix_b = leftShiftStage1Idx1Rng4_uid960_normValLog_uid97_block_rsrvd_fix_in[50:0];

    // leftShiftStage1Idx1_uid961_normValLog_uid97_block_rsrvd_fix(BITJOIN,960)@29
    assign leftShiftStage1Idx1_uid961_normValLog_uid97_block_rsrvd_fix_q = {leftShiftStage1Idx1Rng4_uid960_normValLog_uid97_block_rsrvd_fix_b, zs_uid485_countZLog_uid96_block_rsrvd_fix_q};

    // leftShiftStage0Idx3Rng48_uid955_normValLog_uid97_block_rsrvd_fix(BITSELECT,954)@28
    assign leftShiftStage0Idx3Rng48_uid955_normValLog_uid97_block_rsrvd_fix_in = redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_outputreg0_q[6:0];
    assign leftShiftStage0Idx3Rng48_uid955_normValLog_uid97_block_rsrvd_fix_b = leftShiftStage0Idx3Rng48_uid955_normValLog_uid97_block_rsrvd_fix_in[6:0];

    // leftShiftStage0Idx3Pad48_uid954_normValLog_uid97_block_rsrvd_fix(CONSTANT,953)
    assign leftShiftStage0Idx3Pad48_uid954_normValLog_uid97_block_rsrvd_fix_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage0Idx3_uid956_normValLog_uid97_block_rsrvd_fix(BITJOIN,955)@28
    assign leftShiftStage0Idx3_uid956_normValLog_uid97_block_rsrvd_fix_q = {leftShiftStage0Idx3Rng48_uid955_normValLog_uid97_block_rsrvd_fix_b, leftShiftStage0Idx3Pad48_uid954_normValLog_uid97_block_rsrvd_fix_q};

    // redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_notEnable(LOGICAL,1385)
    assign redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_nor(LOGICAL,1386)
    assign redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_nor_q = ~ (redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_notEnable_q | redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_sticky_ena_q);

    // redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_last(CONSTANT,1382)
    assign redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_last_q = $unsigned(2'b01);

    // redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_cmp(LOGICAL,1383)
    assign redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_cmp_q = $unsigned(redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_last_q == redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_cmpReg(REG,1384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_cmpReg_q <= $unsigned(redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_cmp_q);
        end
    end

    // redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_sticky_ena(REG,1387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_nor_q == 1'b1)
        begin
            redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_sticky_ena_q <= $unsigned(redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_cmpReg_q);
        end
    end

    // redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_enaAnd(LOGICAL,1388)
    assign redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_enaAnd_q = redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_sticky_ena_q & VCC_q;

    // redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt(COUNTER,1380)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_i <= 2'd0;
            redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_i == 2'd1)
            begin
                redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_eq <= 1'b0;
            end
            if (redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_eq == 1'b1)
            begin
                redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_i <= $unsigned(redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_i <= $unsigned(redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_q = redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_i[1:0];

    // redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_inputreg0(DELAY,1377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_inputreg0_q <= '0;
        end
        else
        begin
            redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_inputreg0_q <= $unsigned(vStage_uid469_countZLog_uid96_block_rsrvd_fix_b);
        end
    end

    // redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_wraddr(REG,1381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_wraddr_q <= $unsigned(redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_q);
        end
    end

    // redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem(DUALMEM,1379)
    assign redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_ia = $unsigned(redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_inputreg0_q);
    assign redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_aa = redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_wraddr_q;
    assign redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_ab = redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_rdcnt_q;
    assign redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(23),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(23),
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
    ) redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_dmem (
        .clocken1(redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_reset0),
        .clock1(clock),
        .address_a(redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_aa),
        .data_a(redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_ab),
        .q_b(redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_iq),
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
    assign redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_q = redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_iq[22:0];

    // redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_outputreg0(DELAY,1378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_outputreg0_q <= '0;
        end
        else
        begin
            redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_outputreg0_q <= $unsigned(redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_mem_q);
        end
    end

    // leftShiftStage0Idx2_uid953_normValLog_uid97_block_rsrvd_fix(BITJOIN,952)@28
    assign leftShiftStage0Idx2_uid953_normValLog_uid97_block_rsrvd_fix_q = {redist74_vStage_uid469_countZLog_uid96_block_rsrvd_fix_b_6_outputreg0_q, zs_uid465_countZLog_uid96_block_rsrvd_fix_q};

    // leftShiftStage0Idx1Rng16_uid949_normValLog_uid97_block_rsrvd_fix(BITSELECT,948)@28
    assign leftShiftStage0Idx1Rng16_uid949_normValLog_uid97_block_rsrvd_fix_in = redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_outputreg0_q[38:0];
    assign leftShiftStage0Idx1Rng16_uid949_normValLog_uid97_block_rsrvd_fix_b = leftShiftStage0Idx1Rng16_uid949_normValLog_uid97_block_rsrvd_fix_in[38:0];

    // leftShiftStage0Idx1_uid950_normValLog_uid97_block_rsrvd_fix(BITJOIN,949)@28
    assign leftShiftStage0Idx1_uid950_normValLog_uid97_block_rsrvd_fix_q = {leftShiftStage0Idx1Rng16_uid949_normValLog_uid97_block_rsrvd_fix_b, zs_uid473_countZLog_uid96_block_rsrvd_fix_q};

    // redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_notEnable(LOGICAL,1349)
    assign redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_nor(LOGICAL,1350)
    assign redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_nor_q = ~ (redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_notEnable_q | redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_sticky_ena_q);

    // redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_last(CONSTANT,1346)
    assign redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_last_q = $unsigned(2'b01);

    // redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_cmp(LOGICAL,1347)
    assign redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_cmp_q = $unsigned(redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_last_q == redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_q ? 1'b1 : 1'b0);

    // redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_cmpReg(REG,1348)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_cmpReg_q <= $unsigned(redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_cmp_q);
        end
    end

    // redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_sticky_ena(REG,1351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_nor_q == 1'b1)
        begin
            redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_sticky_ena_q <= $unsigned(redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_cmpReg_q);
        end
    end

    // redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_enaAnd(LOGICAL,1352)
    assign redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_enaAnd_q = redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_sticky_ena_q & VCC_q;

    // redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt(COUNTER,1344)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_i <= 2'd0;
            redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_i == 2'd1)
            begin
                redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_eq <= 1'b0;
            end
            if (redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_eq == 1'b1)
            begin
                redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_i <= $unsigned(redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_i <= $unsigned(redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_q = redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_i[1:0];

    // redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_inputreg0(DELAY,1341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_inputreg0_q <= '0;
        end
        else
        begin
            redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_inputreg0_q <= $unsigned(redist22_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_1_q);
        end
    end

    // redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_wraddr(REG,1345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_wraddr_q <= $unsigned(redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_q);
        end
    end

    // redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem(DUALMEM,1343)
    assign redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_ia = $unsigned(redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_inputreg0_q);
    assign redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_aa = redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_wraddr_q;
    assign redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_ab = redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_rdcnt_q;
    assign redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(55),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(55),
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
    ) redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_dmem (
        .clocken1(redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_reset0),
        .clock1(clock),
        .address_a(redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_aa),
        .data_a(redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_ab),
        .q_b(redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_iq),
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
    assign redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_q = redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_iq[54:0];

    // redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_outputreg0(DELAY,1342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_outputreg0_q <= '0;
        end
        else
        begin
            redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_outputreg0_q <= $unsigned(redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_mem_q);
        end
    end

    // leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select(BITSELECT,1163)@28
    assign leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_b = r_uid500_countZLog_uid96_block_rsrvd_fix_q[5:4];
    assign leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_c = r_uid500_countZLog_uid96_block_rsrvd_fix_q[3:2];
    assign leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_d = r_uid500_countZLog_uid96_block_rsrvd_fix_q[1:0];

    // leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix(MUX,957)@28 + 1
    assign leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_s = leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_q <= 55'b0;
        end
        else
        begin
            unique case (leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_s)
                2'b00 : leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_q <= redist23_finalSumAbsLog_uid95_block_rsrvd_fix_BitJoin_for_q_q_7_outputreg0_q;
                2'b01 : leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid950_normValLog_uid97_block_rsrvd_fix_q;
                2'b10 : leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid953_normValLog_uid97_block_rsrvd_fix_q;
                2'b11 : leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid956_normValLog_uid97_block_rsrvd_fix_q;
                default : leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_q <= 55'b0;
            endcase
        end
    end

    // redist0_leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_c_1(DELAY,1166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix(MUX,968)@29
    assign leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_s = redist0_leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_c_1_q;
    always @(leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_s or leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_q or leftShiftStage1Idx1_uid961_normValLog_uid97_block_rsrvd_fix_q or leftShiftStage1Idx2_uid964_normValLog_uid97_block_rsrvd_fix_q or leftShiftStage1Idx3_uid967_normValLog_uid97_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_s)
            2'b00 : leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_q = leftShiftStage0_uid958_normValLog_uid97_block_rsrvd_fix_q;
            2'b01 : leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_q = leftShiftStage1Idx1_uid961_normValLog_uid97_block_rsrvd_fix_q;
            2'b10 : leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_q = leftShiftStage1Idx2_uid964_normValLog_uid97_block_rsrvd_fix_q;
            2'b11 : leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_q = leftShiftStage1Idx3_uid967_normValLog_uid97_block_rsrvd_fix_q;
            default : leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_q = 55'b0;
        endcase
    end

    // redist1_leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_d_1(DELAY,1167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist1_leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_d_1_q <= $unsigned(leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_d);
        end
    end

    // leftShiftStage2_uid980_normValLog_uid97_block_rsrvd_fix(MUX,979)@29
    assign leftShiftStage2_uid980_normValLog_uid97_block_rsrvd_fix_s = redist1_leftShiftStageSel0Dto4_uid957_normValLog_uid97_block_rsrvd_fix_merged_bit_select_d_1_q;
    always @(leftShiftStage2_uid980_normValLog_uid97_block_rsrvd_fix_s or leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_q or leftShiftStage2Idx1_uid972_normValLog_uid97_block_rsrvd_fix_q or leftShiftStage2Idx2_uid975_normValLog_uid97_block_rsrvd_fix_q or leftShiftStage2Idx3_uid978_normValLog_uid97_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage2_uid980_normValLog_uid97_block_rsrvd_fix_s)
            2'b00 : leftShiftStage2_uid980_normValLog_uid97_block_rsrvd_fix_q = leftShiftStage1_uid969_normValLog_uid97_block_rsrvd_fix_q;
            2'b01 : leftShiftStage2_uid980_normValLog_uid97_block_rsrvd_fix_q = leftShiftStage2Idx1_uid972_normValLog_uid97_block_rsrvd_fix_q;
            2'b10 : leftShiftStage2_uid980_normValLog_uid97_block_rsrvd_fix_q = leftShiftStage2Idx2_uid975_normValLog_uid97_block_rsrvd_fix_q;
            2'b11 : leftShiftStage2_uid980_normValLog_uid97_block_rsrvd_fix_q = leftShiftStage2Idx3_uid978_normValLog_uid97_block_rsrvd_fix_q;
            default : leftShiftStage2_uid980_normValLog_uid97_block_rsrvd_fix_q = 55'b0;
        endcase
    end

    // fracRPreRndLog_uid104_block_rsrvd_fix(BITSELECT,103)@29
    assign fracRPreRndLog_uid104_block_rsrvd_fix_in = leftShiftStage2_uid980_normValLog_uid97_block_rsrvd_fix_q[53:0];
    assign fracRPreRndLog_uid104_block_rsrvd_fix_b = fracRPreRndLog_uid104_block_rsrvd_fix_in[53:26];

    // redist107_fracRPreRndLog_uid104_block_rsrvd_fix_b_1(DELAY,1273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist107_fracRPreRndLog_uid104_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist107_fracRPreRndLog_uid104_block_rsrvd_fix_b_1_q <= $unsigned(fracRPreRndLog_uid104_block_rsrvd_fix_b);
        end
    end

    // expFracConc_uid105_block_rsrvd_fix(BITJOIN,104)@30
    assign expFracConc_uid105_block_rsrvd_fix_q = {expRExtLog_uid103_block_rsrvd_fix_q, redist107_fracRPreRndLog_uid104_block_rsrvd_fix_b_1_q};

    // expFracPostRndLog_uid107_block_rsrvd_fix(ADD,106)@30
    assign expFracPostRndLog_uid107_block_rsrvd_fix_a = {1'b0, expFracConc_uid105_block_rsrvd_fix_q};
    assign expFracPostRndLog_uid107_block_rsrvd_fix_b = {38'b00000000000000000000000000000000000000, VCC_q};
    assign expFracPostRndLog_uid107_block_rsrvd_fix_o = $unsigned(expFracPostRndLog_uid107_block_rsrvd_fix_a) + $unsigned(expFracPostRndLog_uid107_block_rsrvd_fix_b);
    assign expFracPostRndLog_uid107_block_rsrvd_fix_q = expFracPostRndLog_uid107_block_rsrvd_fix_o[38:0];

    // fracRLog_uid108_block_rsrvd_fix(BITSELECT,107)@30
    assign fracRLog_uid108_block_rsrvd_fix_in = expFracPostRndLog_uid107_block_rsrvd_fix_q[27:0];
    assign fracRLog_uid108_block_rsrvd_fix_b = fracRLog_uid108_block_rsrvd_fix_in[27:1];

    // redist106_fracRLog_uid108_block_rsrvd_fix_b_1(DELAY,1272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist106_fracRLog_uid108_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist106_fracRLog_uid108_block_rsrvd_fix_b_1_q <= $unsigned(fracRLog_uid108_block_rsrvd_fix_b);
        end
    end

    // oFracLog_uid110_block_rsrvd_fix(BITJOIN,109)@31
    assign oFracLog_uid110_block_rsrvd_fix_q = {VCC_q, redist106_fracRLog_uid108_block_rsrvd_fix_b_1_q};

    // prodYLogX_uid111_block_rsrvd_fix_bs2_merged_bit_select(BITSELECT,1151)@31
    assign prodYLogX_uid111_block_rsrvd_fix_bs2_merged_bit_select_b = oFracLog_uid110_block_rsrvd_fix_q[27:18];
    assign prodYLogX_uid111_block_rsrvd_fix_bs2_merged_bit_select_c = oFracLog_uid110_block_rsrvd_fix_q[17:0];

    // prodYLogX_uid111_block_rsrvd_fix_im0_cma(CHAINMULTADD,1124)@31 + 2
    assign prodYLogX_uid111_block_rsrvd_fix_im0_cma_reset = ~ (resetn);
    assign prodYLogX_uid111_block_rsrvd_fix_im0_cma_ena0 = 1'b1;
    assign prodYLogX_uid111_block_rsrvd_fix_im0_cma_ena1 = prodYLogX_uid111_block_rsrvd_fix_im0_cma_ena0;
    assign prodYLogX_uid111_block_rsrvd_fix_im0_cma_p[0] = prodYLogX_uid111_block_rsrvd_fix_im0_cma_a0[0] * prodYLogX_uid111_block_rsrvd_fix_im0_cma_c0[0];
    assign prodYLogX_uid111_block_rsrvd_fix_im0_cma_u[0] = prodYLogX_uid111_block_rsrvd_fix_im0_cma_p[0][27:0];
    assign prodYLogX_uid111_block_rsrvd_fix_im0_cma_w[0] = prodYLogX_uid111_block_rsrvd_fix_im0_cma_u[0];
    assign prodYLogX_uid111_block_rsrvd_fix_im0_cma_x[0] = prodYLogX_uid111_block_rsrvd_fix_im0_cma_w[0];
    assign prodYLogX_uid111_block_rsrvd_fix_im0_cma_y[0] = prodYLogX_uid111_block_rsrvd_fix_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodYLogX_uid111_block_rsrvd_fix_im0_cma_a0 <= '{default: '0};
            prodYLogX_uid111_block_rsrvd_fix_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodYLogX_uid111_block_rsrvd_fix_im0_cma_ena0 == 1'b1)
            begin
                prodYLogX_uid111_block_rsrvd_fix_im0_cma_a0[0] <= oFracY_uid60_block_rsrvd_fix_q;
                prodYLogX_uid111_block_rsrvd_fix_im0_cma_c0[0] <= prodYLogX_uid111_block_rsrvd_fix_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodYLogX_uid111_block_rsrvd_fix_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodYLogX_uid111_block_rsrvd_fix_im0_cma_ena1 == 1'b1)
            begin
                prodYLogX_uid111_block_rsrvd_fix_im0_cma_s[0] <= prodYLogX_uid111_block_rsrvd_fix_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodYLogX_uid111_block_rsrvd_fix_im0_cma_delay ( .xin(prodYLogX_uid111_block_rsrvd_fix_im0_cma_s[0]), .xout(prodYLogX_uid111_block_rsrvd_fix_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodYLogX_uid111_block_rsrvd_fix_im0_cma_q = $unsigned(prodYLogX_uid111_block_rsrvd_fix_im0_cma_qq[27:0]);

    // redist30_prodYLogX_uid111_block_rsrvd_fix_im0_cma_q_1(DELAY,1196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_prodYLogX_uid111_block_rsrvd_fix_im0_cma_q_1_q <= '0;
        end
        else
        begin
            redist30_prodYLogX_uid111_block_rsrvd_fix_im0_cma_q_1_q <= $unsigned(prodYLogX_uid111_block_rsrvd_fix_im0_cma_q);
        end
    end

    // prodYLogX_uid111_block_rsrvd_fix_sums_align_1(BITSHIFT,988)@34
    assign prodYLogX_uid111_block_rsrvd_fix_sums_align_1_qint = { redist30_prodYLogX_uid111_block_rsrvd_fix_im0_cma_q_1_q, 18'b000000000000000000 };
    assign prodYLogX_uid111_block_rsrvd_fix_sums_align_1_q = prodYLogX_uid111_block_rsrvd_fix_sums_align_1_qint[45:0];

    // prodYLogX_uid111_block_rsrvd_fix_im3_cma(CHAINMULTADD,1125)@31 + 2
    assign prodYLogX_uid111_block_rsrvd_fix_im3_cma_reset = ~ (resetn);
    assign prodYLogX_uid111_block_rsrvd_fix_im3_cma_ena0 = 1'b1;
    assign prodYLogX_uid111_block_rsrvd_fix_im3_cma_ena1 = prodYLogX_uid111_block_rsrvd_fix_im3_cma_ena0;
    assign prodYLogX_uid111_block_rsrvd_fix_im3_cma_p[0] = prodYLogX_uid111_block_rsrvd_fix_im3_cma_a0[0] * prodYLogX_uid111_block_rsrvd_fix_im3_cma_c0[0];
    assign prodYLogX_uid111_block_rsrvd_fix_im3_cma_u[0] = prodYLogX_uid111_block_rsrvd_fix_im3_cma_p[0][35:0];
    assign prodYLogX_uid111_block_rsrvd_fix_im3_cma_w[0] = prodYLogX_uid111_block_rsrvd_fix_im3_cma_u[0];
    assign prodYLogX_uid111_block_rsrvd_fix_im3_cma_x[0] = prodYLogX_uid111_block_rsrvd_fix_im3_cma_w[0];
    assign prodYLogX_uid111_block_rsrvd_fix_im3_cma_y[0] = prodYLogX_uid111_block_rsrvd_fix_im3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodYLogX_uid111_block_rsrvd_fix_im3_cma_a0 <= '{default: '0};
            prodYLogX_uid111_block_rsrvd_fix_im3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodYLogX_uid111_block_rsrvd_fix_im3_cma_ena0 == 1'b1)
            begin
                prodYLogX_uid111_block_rsrvd_fix_im3_cma_a0[0] <= oFracY_uid60_block_rsrvd_fix_q;
                prodYLogX_uid111_block_rsrvd_fix_im3_cma_c0[0] <= prodYLogX_uid111_block_rsrvd_fix_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodYLogX_uid111_block_rsrvd_fix_im3_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodYLogX_uid111_block_rsrvd_fix_im3_cma_ena1 == 1'b1)
            begin
                prodYLogX_uid111_block_rsrvd_fix_im3_cma_s[0] <= prodYLogX_uid111_block_rsrvd_fix_im3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodYLogX_uid111_block_rsrvd_fix_im3_cma_delay ( .xin(prodYLogX_uid111_block_rsrvd_fix_im3_cma_s[0]), .xout(prodYLogX_uid111_block_rsrvd_fix_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodYLogX_uid111_block_rsrvd_fix_im3_cma_q = $unsigned(prodYLogX_uid111_block_rsrvd_fix_im3_cma_qq[35:0]);

    // redist29_prodYLogX_uid111_block_rsrvd_fix_im3_cma_q_1(DELAY,1195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_prodYLogX_uid111_block_rsrvd_fix_im3_cma_q_1_q <= '0;
        end
        else
        begin
            redist29_prodYLogX_uid111_block_rsrvd_fix_im3_cma_q_1_q <= $unsigned(prodYLogX_uid111_block_rsrvd_fix_im3_cma_q);
        end
    end

    // prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0(ADD,990)@34 + 1
    assign prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_a = {11'b00000000000, redist29_prodYLogX_uid111_block_rsrvd_fix_im3_cma_q_1_q};
    assign prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_b = {1'b0, prodYLogX_uid111_block_rsrvd_fix_sums_align_1_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_o <= 47'b0;
        end
        else
        begin
            prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_o <= $unsigned(prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_a) + $unsigned(prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_b);
        end
    end
    assign prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_q = prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_o[46:0];

    // normProdYLogXHigh_uid114_block_rsrvd_fix(BITSELECT,113)@35
    assign normProdYLogXHigh_uid114_block_rsrvd_fix_in = prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_q[44:0];
    assign normProdYLogXHigh_uid114_block_rsrvd_fix_b = normProdYLogXHigh_uid114_block_rsrvd_fix_in[44:18];

    // normProdYLogXLow_uid115_block_rsrvd_fix(BITSELECT,114)@35
    assign normProdYLogXLow_uid115_block_rsrvd_fix_in = prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_q[43:0];
    assign normProdYLogXLow_uid115_block_rsrvd_fix_b = normProdYLogXLow_uid115_block_rsrvd_fix_in[43:17];

    // prodNormBit_uid112_block_rsrvd_fix(BITSELECT,111)@35
    assign prodNormBit_uid112_block_rsrvd_fix_in = $unsigned(prodYLogX_uid111_block_rsrvd_fix_sums_result_add_0_0_q[45:0]);
    assign prodNormBit_uid112_block_rsrvd_fix_b = $unsigned(prodNormBit_uid112_block_rsrvd_fix_in[45:45]);

    // normProdYLogX_uid116_block_rsrvd_fix(MUX,115)@35
    assign normProdYLogX_uid116_block_rsrvd_fix_s = prodNormBit_uid112_block_rsrvd_fix_b;
    always @(normProdYLogX_uid116_block_rsrvd_fix_s or normProdYLogXLow_uid115_block_rsrvd_fix_b or normProdYLogXHigh_uid114_block_rsrvd_fix_b)
    begin
        unique case (normProdYLogX_uid116_block_rsrvd_fix_s)
            1'b0 : normProdYLogX_uid116_block_rsrvd_fix_q = normProdYLogXLow_uid115_block_rsrvd_fix_b;
            1'b1 : normProdYLogX_uid116_block_rsrvd_fix_q = normProdYLogXHigh_uid114_block_rsrvd_fix_b;
            default : normProdYLogX_uid116_block_rsrvd_fix_q = 27'b0;
        endcase
    end

    // oFracProd_uid117_block_rsrvd_fix(BITJOIN,116)@35
    assign oFracProd_uid117_block_rsrvd_fix_q = {VCC_q, normProdYLogX_uid116_block_rsrvd_fix_q};

    // zoFracQ_uid126_block_rsrvd_fix(BITJOIN,125)@35
    assign zoFracQ_uid126_block_rsrvd_fix_q = {GND_q, oFracProd_uid117_block_rsrvd_fix_q};

    // onesCmpFxpInQ_uid127_block_rsrvd_fix(LOGICAL,126)@35 + 1
    assign onesCmpFxpInQ_uid127_block_rsrvd_fix_b = $unsigned({{28{signProd_uid121_block_rsrvd_fix_q[0]}}, signProd_uid121_block_rsrvd_fix_q});
    assign onesCmpFxpInQ_uid127_block_rsrvd_fix_qi = zoFracQ_uid126_block_rsrvd_fix_q ^ onesCmpFxpInQ_uid127_block_rsrvd_fix_b;
    dspba_delay_ver #( .width(29), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    onesCmpFxpInQ_uid127_block_rsrvd_fix_delay ( .xin(onesCmpFxpInQ_uid127_block_rsrvd_fix_qi), .xout(onesCmpFxpInQ_uid127_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fxpInExtQ_uid128_block_rsrvd_fix(ADD,127)@36
    assign fxpInExtQ_uid128_block_rsrvd_fix_a = {1'b0, onesCmpFxpInQ_uid127_block_rsrvd_fix_q};
    assign fxpInExtQ_uid128_block_rsrvd_fix_b = {29'b00000000000000000000000000000, redist99_signProd_uid121_block_rsrvd_fix_q_1_q};
    assign fxpInExtQ_uid128_block_rsrvd_fix_o = $unsigned(fxpInExtQ_uid128_block_rsrvd_fix_a) + $unsigned(fxpInExtQ_uid128_block_rsrvd_fix_b);
    assign fxpInExtQ_uid128_block_rsrvd_fix_q = fxpInExtQ_uid128_block_rsrvd_fix_o[29:0];

    // fxpInQPreConstMult_uid129_block_rsrvd_fix(BITSELECT,128)@36
    assign fxpInQPreConstMult_uid129_block_rsrvd_fix_in = $unsigned(fxpInExtQ_uid128_block_rsrvd_fix_q[28:0]);
    assign fxpInQPreConstMult_uid129_block_rsrvd_fix_b = $unsigned(fxpInQPreConstMult_uid129_block_rsrvd_fix_in[28:0]);

    // xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix(BITSELECT,642)@36
    assign xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in = fxpInQPreConstMult_uid129_block_rsrvd_fix_b[4:0];
    assign xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b = xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in[4:0];

    // redist69_xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2(DELAY,1235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist69_xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist69_xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_delay_0 <= $unsigned(xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b);
            redist69_xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_q <= redist69_xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix(LOOKUP,653)@38 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= $unsigned(12'b000000000000);
        end
        else
        begin
            unique case (redist69_xv0_uid643_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_q)
                5'b00000 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b000000000000;
                5'b00001 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b000001011100;
                5'b00010 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b000010111000;
                5'b00011 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b000100010100;
                5'b00100 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b000101110001;
                5'b00101 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b000111001101;
                5'b00110 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b001000101001;
                5'b00111 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b001010000110;
                5'b01000 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b001011100010;
                5'b01001 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b001100111110;
                5'b01010 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b001110011011;
                5'b01011 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b001111110111;
                5'b01100 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b010001010011;
                5'b01101 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b010010110000;
                5'b01110 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b010100001100;
                5'b01111 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b010101101000;
                5'b10000 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b010111000101;
                5'b10001 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b011000100001;
                5'b10010 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b011001111101;
                5'b10011 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b011011011010;
                5'b10100 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b011100110110;
                5'b10101 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b011110010010;
                5'b10110 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b011111101111;
                5'b10111 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b100001001011;
                5'b11000 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b100010100111;
                5'b11001 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b100100000100;
                5'b11010 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b100101100000;
                5'b11011 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b100110111100;
                5'b11100 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b101000011001;
                5'b11101 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b101001110101;
                5'b11110 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b101011010001;
                5'b11111 : p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'b101100101110;
                default : begin
                              // unreachable
                              p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 12'bxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix(BITSELECT,643)@36
    assign xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in = fxpInQPreConstMult_uid129_block_rsrvd_fix_b[9:0];
    assign xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b = xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in[9:5];

    // redist68_xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2(DELAY,1234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist68_xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist68_xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_delay_0 <= $unsigned(xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b);
            redist68_xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_q <= redist68_xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix(LOOKUP,652)@38 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= $unsigned(17'b00000000000000000);
        end
        else
        begin
            unique case (redist68_xv1_uid644_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_2_q)
                5'b00000 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b00000000000000000;
                5'b00001 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b00000101110001010;
                5'b00010 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b00001011100010101;
                5'b00011 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b00010001010011111;
                5'b00100 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b00010111000101010;
                5'b00101 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b00011100110110101;
                5'b00110 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b00100010100111111;
                5'b00111 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b00101000011001010;
                5'b01000 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b00101110001010101;
                5'b01001 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b00110011111011111;
                5'b01010 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b00111001101101010;
                5'b01011 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b00111111011110101;
                5'b01100 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b01000101001111111;
                5'b01101 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b01001011000001010;
                5'b01110 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b01010000110010100;
                5'b01111 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b01010110100011111;
                5'b10000 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b01011100010101010;
                5'b10001 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b01100010000110100;
                5'b10010 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b01100111110111111;
                5'b10011 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b01101101101001010;
                5'b10100 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b01110011011010100;
                5'b10101 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b01111001001011111;
                5'b10110 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b01111110111101010;
                5'b10111 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b10000100101110100;
                5'b11000 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b10001010011111111;
                5'b11001 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b10010000010001001;
                5'b11010 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b10010110000010100;
                5'b11011 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b10011011110011111;
                5'b11100 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b10100001100101001;
                5'b11101 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b10100111010110100;
                5'b11110 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b10101101000111111;
                5'b11111 : p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'b10110010111001001;
                default : begin
                              // unreachable
                              p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 17'bxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // lev1_a2_uid657_qTimesOOlog2Ext_uid130_block_rsrvd_fix(ADD,656)@39 + 1
    assign lev1_a2_uid657_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a = {1'b0, p1_uid653_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q};
    assign lev1_a2_uid657_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b = {6'b000000, p0_uid654_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a2_uid657_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o <= 18'b0;
        end
        else
        begin
            lev1_a2_uid657_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o <= $unsigned(lev1_a2_uid657_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a) + $unsigned(lev1_a2_uid657_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b);
        end
    end
    assign lev1_a2_uid657_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q = lev1_a2_uid657_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o[17:0];

    // xv2_uid645_qTimesOOlog2Ext_uid130_block_rsrvd_fix(BITSELECT,644)@36
    assign xv2_uid645_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in = fxpInQPreConstMult_uid129_block_rsrvd_fix_b[14:0];
    assign xv2_uid645_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b = xv2_uid645_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in[14:10];

    // redist67_xv2_uid645_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1(DELAY,1233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_xv2_uid645_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist67_xv2_uid645_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q <= $unsigned(xv2_uid645_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b);
        end
    end

    // p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix(LOOKUP,651)@37 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= $unsigned(22'b0000000000000000000000);
        end
        else
        begin
            unique case (redist67_xv2_uid645_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q)
                5'b00000 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0000000000000000000000;
                5'b00001 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0000010111000101010100;
                5'b00010 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0000101110001010101000;
                5'b00011 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0001000101001111111101;
                5'b00100 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0001011100010101010001;
                5'b00101 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0001110011011010100110;
                5'b00110 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0010001010011111111010;
                5'b00111 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0010100001100101001111;
                5'b01000 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0010111000101010100011;
                5'b01001 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0011001111101111111000;
                5'b01010 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0011100110110101001100;
                5'b01011 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0011111101111010100001;
                5'b01100 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0100010100111111110101;
                5'b01101 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0100101100000101001010;
                5'b01110 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0101000011001010011110;
                5'b01111 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0101011010001111110010;
                5'b10000 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0101110001010101000111;
                5'b10001 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0110001000011010011011;
                5'b10010 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0110011111011111110000;
                5'b10011 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0110110110100101000100;
                5'b10100 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0111001101101010011001;
                5'b10101 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0111100100101111101101;
                5'b10110 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b0111111011110101000010;
                5'b10111 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b1000010010111010010110;
                5'b11000 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b1000101001111111101011;
                5'b11001 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b1001000001000100111111;
                5'b11010 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b1001011000001010010100;
                5'b11011 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b1001101111001111101000;
                5'b11100 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b1010000110010100111100;
                5'b11101 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b1010011101011010010001;
                5'b11110 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b1010110100011111100101;
                5'b11111 : p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'b1011001011100100111010;
                default : begin
                              // unreachable
                              p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 22'bxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // xv3_uid646_qTimesOOlog2Ext_uid130_block_rsrvd_fix(BITSELECT,645)@36
    assign xv3_uid646_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in = fxpInQPreConstMult_uid129_block_rsrvd_fix_b[19:0];
    assign xv3_uid646_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b = xv3_uid646_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in[19:15];

    // redist66_xv3_uid646_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1(DELAY,1232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_xv3_uid646_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist66_xv3_uid646_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q <= $unsigned(xv3_uid646_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b);
        end
    end

    // p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix(LOOKUP,650)@37 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= $unsigned(27'b000000000000000000000000000);
        end
        else
        begin
            unique case (redist66_xv3_uid646_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q)
                5'b00000 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b000000000000000000000000000;
                5'b00001 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b000001011100010101010001110;
                5'b00010 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b000010111000101010100011101;
                5'b00011 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b000100010100111111110101100;
                5'b00100 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b000101110001010101000111011;
                5'b00101 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b000111001101101010011001001;
                5'b00110 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b001000101001111111101011000;
                5'b00111 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b001010000110010100111100111;
                5'b01000 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b001011100010101010001110110;
                5'b01001 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b001100111110111111100000101;
                5'b01010 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b001110011011010100110010011;
                5'b01011 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b001111110111101010000100010;
                5'b01100 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b010001010011111111010110001;
                5'b01101 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b010010110000010100101000000;
                5'b01110 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b010100001100101001111001111;
                5'b01111 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b010101101000111111001011101;
                5'b10000 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b010111000101010100011101100;
                5'b10001 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b011000100001101001101111011;
                5'b10010 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b011001111101111111000001010;
                5'b10011 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b011011011010010100010011001;
                5'b10100 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b011100110110101001100100111;
                5'b10101 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b011110010010111110110110110;
                5'b10110 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b011111101111010100001000101;
                5'b10111 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b100001001011101001011010100;
                5'b11000 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b100010100111111110101100010;
                5'b11001 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b100100000100010011111110001;
                5'b11010 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b100101100000101001010000000;
                5'b11011 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b100110111100111110100001111;
                5'b11100 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b101000011001010011110011110;
                5'b11101 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b101001110101101001000101100;
                5'b11110 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b101011010001111110010111011;
                5'b11111 : p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'b101100101110010011101001010;
                default : begin
                              // unreachable
                              p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 27'bxxxxxxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // lev1_a1_uid656_qTimesOOlog2Ext_uid130_block_rsrvd_fix(ADD,655)@38 + 1
    assign lev1_a1_uid656_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a = {1'b0, p3_uid651_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q};
    assign lev1_a1_uid656_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b = {6'b000000, p2_uid652_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a1_uid656_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o <= 28'b0;
        end
        else
        begin
            lev1_a1_uid656_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o <= $unsigned(lev1_a1_uid656_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a) + $unsigned(lev1_a1_uid656_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b);
        end
    end
    assign lev1_a1_uid656_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q = lev1_a1_uid656_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o[27:0];

    // xv4_uid647_qTimesOOlog2Ext_uid130_block_rsrvd_fix(BITSELECT,646)@36
    assign xv4_uid647_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in = fxpInQPreConstMult_uid129_block_rsrvd_fix_b[24:0];
    assign xv4_uid647_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b = xv4_uid647_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in[24:20];

    // redist65_xv4_uid647_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1(DELAY,1231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_xv4_uid647_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist65_xv4_uid647_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q <= $unsigned(xv4_uid647_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b);
        end
    end

    // p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix(LOOKUP,649)@37 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            unique case (redist65_xv4_uid647_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q)
                5'b00000 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b00000000000000000000000000000000;
                5'b00001 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b00000101110001010101000111011001;
                5'b00010 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b00001011100010101010001110110010;
                5'b00011 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b00010001010011111111010110001011;
                5'b00100 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b00010111000101010100011101100101;
                5'b00101 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b00011100110110101001100100111110;
                5'b00110 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b00100010100111111110101100010111;
                5'b00111 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b00101000011001010011110011110001;
                5'b01000 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b00101110001010101000111011001010;
                5'b01001 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b00110011111011111110000010100011;
                5'b01010 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b00111001101101010011001001111100;
                5'b01011 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b00111111011110101000010001010110;
                5'b01100 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b01000101001111111101011000101111;
                5'b01101 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b01001011000001010010100000001000;
                5'b01110 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b01010000110010100111100111100010;
                5'b01111 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b01010110100011111100101110111011;
                5'b10000 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b01011100010101010001110110010100;
                5'b10001 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b01100010000110100110111101101101;
                5'b10010 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b01100111110111111100000101000111;
                5'b10011 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b01101101101001010001001100100000;
                5'b10100 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b01110011011010100110010011111001;
                5'b10101 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b01111001001011111011011011010011;
                5'b10110 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b01111110111101010000100010101100;
                5'b10111 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b10000100101110100101101010000101;
                5'b11000 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b10001010011111111010110001011111;
                5'b11001 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b10010000010001001111111000111000;
                5'b11010 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b10010110000010100101000000010001;
                5'b11011 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b10011011110011111010000111101010;
                5'b11100 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b10100001100101001111001111000100;
                5'b11101 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b10100111010110100100010110011101;
                5'b11110 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b10101101000111111001011101110110;
                5'b11111 : p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'b10110010111001001110100101010000;
                default : begin
                              // unreachable
                              p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // xv5_uid648_qTimesOOlog2Ext_uid130_block_rsrvd_fix(BITSELECT,647)@36
    assign xv5_uid648_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b = $unsigned(fxpInQPreConstMult_uid129_block_rsrvd_fix_b[28:25]);

    // redist64_xv5_uid648_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1(DELAY,1230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_xv5_uid648_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist64_xv5_uid648_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q <= $unsigned(xv5_uid648_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b);
        end
    end

    // p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix(LOOKUP,648)@37 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= $unsigned(37'b0000000000000000000000000000000000100);
        end
        else
        begin
            unique case (redist64_xv5_uid648_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q)
                4'b0000 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b0000000000000000000000000000000000100;
                4'b0001 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b0000010111000101010100011101100101101;
                4'b0010 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b0000101110001010101000111011001010110;
                4'b0011 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b0001000101001111111101011000110000000;
                4'b0100 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b0001011100010101010001110110010101001;
                4'b0101 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b0001110011011010100110010011111010010;
                4'b0110 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b0010001010011111111010110001011111100;
                4'b0111 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b0010100001100101001111001111000100101;
                4'b1000 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b1101000111010101011100010011010111001;
                4'b1001 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b1101011110011010110000110000111100010;
                4'b1010 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b1101110101100000000101001110100001011;
                4'b1011 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b1110001100100101011001101100000110101;
                4'b1100 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b1110100011101010101110001001101011110;
                4'b1101 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b1110111010110000000010100111010000111;
                4'b1110 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b1111010001110101010111000100110110001;
                4'b1111 : p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'b1111101000111010101011100010011011010;
                default : begin
                              // unreachable
                              p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q <= 37'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix(ADD,654)@38 + 1
    assign lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a = $unsigned({{2{p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q[36]}}, p5_uid649_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q});
    assign lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b = $unsigned({7'b0000000, p4_uid650_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o <= 39'b0;
        end
        else
        begin
            lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o <= $unsigned($signed(lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a) + $signed(lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b));
        end
    end
    assign lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q = lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o[37:0];

    // lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix(ADD,657)@39 + 1
    assign lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a = $unsigned({{2{lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q[37]}}, lev1_a0_uid655_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q});
    assign lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b = $unsigned({12'b000000000000, lev1_a1_uid656_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o <= 40'b0;
        end
        else
        begin
            lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o <= $unsigned($signed(lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a) + $signed(lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b));
        end
    end
    assign lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q = lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o[38:0];

    // lev3_a0_uid659_qTimesOOlog2Ext_uid130_block_rsrvd_fix(ADD,658)@40
    assign lev3_a0_uid659_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a = $unsigned({{2{lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q[38]}}, lev2_a0_uid658_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q});
    assign lev3_a0_uid659_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b = $unsigned({23'b00000000000000000000000, lev1_a2_uid657_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q});
    assign lev3_a0_uid659_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o = $unsigned($signed(lev3_a0_uid659_qTimesOOlog2Ext_uid130_block_rsrvd_fix_a) + $signed(lev3_a0_uid659_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b));
    assign lev3_a0_uid659_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q = lev3_a0_uid659_qTimesOOlog2Ext_uid130_block_rsrvd_fix_o[39:0];

    // sOuputFormat_uid660_qTimesOOlog2Ext_uid130_block_rsrvd_fix(BITSELECT,659)@40
    assign sOuputFormat_uid660_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in = $unsigned(lev3_a0_uid659_qTimesOOlog2Ext_uid130_block_rsrvd_fix_q[35:0]);
    assign sOuputFormat_uid660_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b = $unsigned(sOuputFormat_uid660_qTimesOOlog2Ext_uid130_block_rsrvd_fix_in[35:3]);

    // redist63_sOuputFormat_uid660_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1(DELAY,1229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_sOuputFormat_uid660_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist63_sOuputFormat_uid660_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q <= $unsigned(sOuputFormat_uid660_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b);
        end
    end

    // oFracXZwE_uid132_block_rsrvd_fix(BITJOIN,131)@41
    assign oFracXZwE_uid132_block_rsrvd_fix_q = {redist63_sOuputFormat_uid660_qTimesOOlog2Ext_uid130_block_rsrvd_fix_b_1_q, cstAllZWE_uid15_block_rsrvd_fix_q};

    // xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITSELECT,991)@41
    assign xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b = $unsigned(oFracXZwE_uid132_block_rsrvd_fix_q[40:40]);

    // redist52_xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b_1(DELAY,1218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist52_xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b_1_q <= $unsigned(xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b);
        end
    end

    // stageIndexName_to41_uid1021(BITSELECT,1020)@42
    assign stageIndexName_to41_uid1021_in = $unsigned({{40{redist52_xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b_1_q[0]}}, redist52_xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b_1_q});
    assign stageIndexName_to41_uid1021_b = $unsigned(stageIndexName_to41_uid1021_in[40:0]);

    // seMsb_to32_uid1018(BITSELECT,1017)@42
    assign seMsb_to32_uid1018_in = $unsigned({{31{redist52_xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b_1_q[0]}}, redist52_xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b_1_q});
    assign seMsb_to32_uid1018_b = $unsigned(seMsb_to32_uid1018_in[31:0]);

    // rightShiftStage2Idx2Rng32_uid1019_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITSELECT,1018)@42
    assign rightShiftStage2Idx2Rng32_uid1019_fxpInPostAlignExp_uid139_block_rsrvd_fix_b = $unsigned(rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix_q[40:32]);

    // rightShiftStage2Idx2_uid1020_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITJOIN,1019)@42
    assign rightShiftStage2Idx2_uid1020_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = {seMsb_to32_uid1018_b, rightShiftStage2Idx2Rng32_uid1019_fxpInPostAlignExp_uid139_block_rsrvd_fix_b};

    // seMsb_to16_uid1015(BITSELECT,1014)@42
    assign seMsb_to16_uid1015_in = $unsigned({{15{redist52_xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b_1_q[0]}}, redist52_xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b_1_q});
    assign seMsb_to16_uid1015_b = $unsigned(seMsb_to16_uid1015_in[15:0]);

    // rightShiftStage2Idx1Rng16_uid1016_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITSELECT,1015)@42
    assign rightShiftStage2Idx1Rng16_uid1016_fxpInPostAlignExp_uid139_block_rsrvd_fix_b = $unsigned(rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix_q[40:16]);

    // rightShiftStage2Idx1_uid1017_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITJOIN,1016)@42
    assign rightShiftStage2Idx1_uid1017_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = {seMsb_to16_uid1015_b, rightShiftStage2Idx1Rng16_uid1016_fxpInPostAlignExp_uid139_block_rsrvd_fix_b};

    // seMsb_to12_uid1010(BITSELECT,1009)@41
    assign seMsb_to12_uid1010_in = $unsigned({{11{xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b[0]}}, xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b});
    assign seMsb_to12_uid1010_b = $unsigned(seMsb_to12_uid1010_in[11:0]);

    // rightShiftStage1Idx3Rng12_uid1011_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITSELECT,1010)@41
    assign rightShiftStage1Idx3Rng12_uid1011_fxpInPostAlignExp_uid139_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix_q[40:12]);

    // rightShiftStage1Idx3_uid1012_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITJOIN,1011)@41
    assign rightShiftStage1Idx3_uid1012_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = {seMsb_to12_uid1010_b, rightShiftStage1Idx3Rng12_uid1011_fxpInPostAlignExp_uid139_block_rsrvd_fix_b};

    // seMsb_to8_uid1007(BITSELECT,1006)@41
    assign seMsb_to8_uid1007_in = $unsigned({{7{xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b[0]}}, xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b});
    assign seMsb_to8_uid1007_b = $unsigned(seMsb_to8_uid1007_in[7:0]);

    // rightShiftStage1Idx2Rng8_uid1008_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITSELECT,1007)@41
    assign rightShiftStage1Idx2Rng8_uid1008_fxpInPostAlignExp_uid139_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix_q[40:8]);

    // rightShiftStage1Idx2_uid1009_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITJOIN,1008)@41
    assign rightShiftStage1Idx2_uid1009_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = {seMsb_to8_uid1007_b, rightShiftStage1Idx2Rng8_uid1008_fxpInPostAlignExp_uid139_block_rsrvd_fix_b};

    // seMsb_to4_uid1004(BITSELECT,1003)@41
    assign seMsb_to4_uid1004_in = $unsigned({{3{xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b[0]}}, xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b});
    assign seMsb_to4_uid1004_b = $unsigned(seMsb_to4_uid1004_in[3:0]);

    // rightShiftStage1Idx1Rng4_uid1005_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITSELECT,1004)@41
    assign rightShiftStage1Idx1Rng4_uid1005_fxpInPostAlignExp_uid139_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix_q[40:4]);

    // rightShiftStage1Idx1_uid1006_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITJOIN,1005)@41
    assign rightShiftStage1Idx1_uid1006_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = {seMsb_to4_uid1004_b, rightShiftStage1Idx1Rng4_uid1005_fxpInPostAlignExp_uid139_block_rsrvd_fix_b};

    // seMsb_to3_uid999(BITSELECT,998)@41
    assign seMsb_to3_uid999_in = $unsigned({{2{xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b[0]}}, xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b});
    assign seMsb_to3_uid999_b = $unsigned(seMsb_to3_uid999_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid1000_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITSELECT,999)@41
    assign rightShiftStage0Idx3Rng3_uid1000_fxpInPostAlignExp_uid139_block_rsrvd_fix_b = $unsigned(oFracXZwE_uid132_block_rsrvd_fix_q[40:3]);

    // rightShiftStage0Idx3_uid1001_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITJOIN,1000)@41
    assign rightShiftStage0Idx3_uid1001_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = {seMsb_to3_uid999_b, rightShiftStage0Idx3Rng3_uid1000_fxpInPostAlignExp_uid139_block_rsrvd_fix_b};

    // seMsb_to2_uid996(BITSELECT,995)@41
    assign seMsb_to2_uid996_in = $unsigned({{1{xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b[0]}}, xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b});
    assign seMsb_to2_uid996_b = $unsigned(seMsb_to2_uid996_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid997_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITSELECT,996)@41
    assign rightShiftStage0Idx2Rng2_uid997_fxpInPostAlignExp_uid139_block_rsrvd_fix_b = $unsigned(oFracXZwE_uid132_block_rsrvd_fix_q[40:2]);

    // rightShiftStage0Idx2_uid998_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITJOIN,997)@41
    assign rightShiftStage0Idx2_uid998_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = {seMsb_to2_uid996_b, rightShiftStage0Idx2Rng2_uid997_fxpInPostAlignExp_uid139_block_rsrvd_fix_b};

    // rightShiftStage0Idx1Rng1_uid994_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITSELECT,993)@41
    assign rightShiftStage0Idx1Rng1_uid994_fxpInPostAlignExp_uid139_block_rsrvd_fix_b = $unsigned(oFracXZwE_uid132_block_rsrvd_fix_q[40:1]);

    // rightShiftStage0Idx1_uid995_fxpInPostAlignExp_uid139_block_rsrvd_fix(BITJOIN,994)@41
    assign rightShiftStage0Idx1_uid995_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = {xMSB_uid992_fxpInPostAlignExp_uid139_block_rsrvd_fix_b, rightShiftStage0Idx1Rng1_uid994_fxpInPostAlignExp_uid139_block_rsrvd_fix_b};

    // rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix(MUX,1002)@41
    assign rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix_s = rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_b;
    always @(rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix_s or oFracXZwE_uid132_block_rsrvd_fix_q or rightShiftStage0Idx1_uid995_fxpInPostAlignExp_uid139_block_rsrvd_fix_q or rightShiftStage0Idx2_uid998_fxpInPostAlignExp_uid139_block_rsrvd_fix_q or rightShiftStage0Idx3_uid1001_fxpInPostAlignExp_uid139_block_rsrvd_fix_q)
    begin
        unique case (rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix_s)
            2'b00 : rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = oFracXZwE_uid132_block_rsrvd_fix_q;
            2'b01 : rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = rightShiftStage0Idx1_uid995_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
            2'b10 : rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = rightShiftStage0Idx2_uid998_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
            2'b11 : rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = rightShiftStage0Idx3_uid1001_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
            default : rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = 41'b0;
        endcase
    end

    // cstBiasPWE_uid125_block_rsrvd_fix(CONSTANT,124)
    assign cstBiasPWE_uid125_block_rsrvd_fix_q = $unsigned(6'b100101);

    // expRLog_uid109_block_rsrvd_fix(BITSELECT,108)@30
    assign expRLog_uid109_block_rsrvd_fix_in = $unsigned(expFracPostRndLog_uid107_block_rsrvd_fix_q[36:0]);
    assign expRLog_uid109_block_rsrvd_fix_b = $unsigned(expRLog_uid109_block_rsrvd_fix_in[36:28]);

    // redist105_expRLog_uid109_block_rsrvd_fix_b_1(DELAY,1271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist105_expRLog_uid109_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist105_expRLog_uid109_block_rsrvd_fix_b_1_q <= $unsigned(expRLog_uid109_block_rsrvd_fix_b);
        end
    end

    // expProdPhase1_uid118_block_rsrvd_fix(ADD,117)@31 + 1
    assign expProdPhase1_uid118_block_rsrvd_fix_a = $unsigned({3'b000, redist141_exp_y_uid30_block_rsrvd_fix_b_1_q});
    assign expProdPhase1_uid118_block_rsrvd_fix_b = $unsigned({{2{redist105_expRLog_uid109_block_rsrvd_fix_b_1_q[8]}}, redist105_expRLog_uid109_block_rsrvd_fix_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expProdPhase1_uid118_block_rsrvd_fix_o <= 11'b0;
        end
        else
        begin
            expProdPhase1_uid118_block_rsrvd_fix_o <= $unsigned($signed(expProdPhase1_uid118_block_rsrvd_fix_a) + $signed(expProdPhase1_uid118_block_rsrvd_fix_b));
        end
    end
    assign expProdPhase1_uid118_block_rsrvd_fix_q = expProdPhase1_uid118_block_rsrvd_fix_o[9:0];

    // redist103_expProdPhase1_uid118_block_rsrvd_fix_q_4(DELAY,1269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist103_expProdPhase1_uid118_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist103_expProdPhase1_uid118_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist103_expProdPhase1_uid118_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist103_expProdPhase1_uid118_block_rsrvd_fix_q_4_delay_0 <= $unsigned(expProdPhase1_uid118_block_rsrvd_fix_q);
            redist103_expProdPhase1_uid118_block_rsrvd_fix_q_4_delay_1 <= redist103_expProdPhase1_uid118_block_rsrvd_fix_q_4_delay_0;
            redist103_expProdPhase1_uid118_block_rsrvd_fix_q_4_q <= redist103_expProdPhase1_uid118_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // expProdPhase2_uid119_block_rsrvd_fix(ADD,118)@35 + 1
    assign expProdPhase2_uid119_block_rsrvd_fix_a = $unsigned({{2{redist103_expProdPhase1_uid118_block_rsrvd_fix_q_4_q[9]}}, redist103_expProdPhase1_uid118_block_rsrvd_fix_q_4_q});
    assign expProdPhase2_uid119_block_rsrvd_fix_b = $unsigned({11'b00000000000, prodNormBit_uid112_block_rsrvd_fix_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expProdPhase2_uid119_block_rsrvd_fix_o <= 12'b0;
        end
        else
        begin
            expProdPhase2_uid119_block_rsrvd_fix_o <= $unsigned($signed(expProdPhase2_uid119_block_rsrvd_fix_a) + $signed(expProdPhase2_uid119_block_rsrvd_fix_b));
        end
    end
    assign expProdPhase2_uid119_block_rsrvd_fix_q = expProdPhase2_uid119_block_rsrvd_fix_o[10:0];

    // expProd_uid120_block_rsrvd_fix(SUB,119)@36 + 1
    assign expProd_uid120_block_rsrvd_fix_a = $unsigned({{2{expProdPhase2_uid119_block_rsrvd_fix_q[10]}}, expProdPhase2_uid119_block_rsrvd_fix_q});
    assign expProd_uid120_block_rsrvd_fix_b = $unsigned({5'b00000, cstBias_uid8_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expProd_uid120_block_rsrvd_fix_o <= 13'b0;
        end
        else
        begin
            expProd_uid120_block_rsrvd_fix_o <= $unsigned($signed(expProd_uid120_block_rsrvd_fix_a) - $signed(expProd_uid120_block_rsrvd_fix_b));
        end
    end
    assign expProd_uid120_block_rsrvd_fix_q = expProd_uid120_block_rsrvd_fix_o[11:0];

    // cstBiasPWE_uid124_block_rsrvd_fix(CONSTANT,123)
    assign cstBiasPWE_uid124_block_rsrvd_fix_q = $unsigned(8'b10000111);

    // shiftValuePreSatExp_uid134_block_rsrvd_fix(SUB,133)@37 + 1
    assign shiftValuePreSatExp_uid134_block_rsrvd_fix_a = $unsigned({6'b000000, cstBiasPWE_uid124_block_rsrvd_fix_q});
    assign shiftValuePreSatExp_uid134_block_rsrvd_fix_b = $unsigned({{2{expProd_uid120_block_rsrvd_fix_q[11]}}, expProd_uid120_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            shiftValuePreSatExp_uid134_block_rsrvd_fix_o <= 14'b0;
        end
        else
        begin
            shiftValuePreSatExp_uid134_block_rsrvd_fix_o <= $unsigned($signed(shiftValuePreSatExp_uid134_block_rsrvd_fix_a) - $signed(shiftValuePreSatExp_uid134_block_rsrvd_fix_b));
        end
    end
    assign shiftValuePreSatExp_uid134_block_rsrvd_fix_q = shiftValuePreSatExp_uid134_block_rsrvd_fix_o[12:0];

    // shiftValuePreSatRedExp_uid137_block_rsrvd_fix(BITSELECT,136)@38
    assign shiftValuePreSatRedExp_uid137_block_rsrvd_fix_in = shiftValuePreSatExp_uid134_block_rsrvd_fix_q[5:0];
    assign shiftValuePreSatRedExp_uid137_block_rsrvd_fix_b = shiftValuePreSatRedExp_uid137_block_rsrvd_fix_in[5:0];

    // redist97_shiftValuePreSatRedExp_uid137_block_rsrvd_fix_b_1(DELAY,1263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist97_shiftValuePreSatRedExp_uid137_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist97_shiftValuePreSatRedExp_uid137_block_rsrvd_fix_b_1_q <= $unsigned(shiftValuePreSatRedExp_uid137_block_rsrvd_fix_b);
        end
    end

    // shiftUdfExp_uid136_block_rsrvd_fix(COMPARE,135)@38 + 1
    assign shiftUdfExp_uid136_block_rsrvd_fix_a = $unsigned({{2{shiftValuePreSatExp_uid134_block_rsrvd_fix_q[12]}}, shiftValuePreSatExp_uid134_block_rsrvd_fix_q});
    assign shiftUdfExp_uid136_block_rsrvd_fix_b = $unsigned({9'b000000000, cstBiasPWE_uid125_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            shiftUdfExp_uid136_block_rsrvd_fix_o <= 15'b0;
        end
        else
        begin
            shiftUdfExp_uid136_block_rsrvd_fix_o <= $unsigned($signed(shiftUdfExp_uid136_block_rsrvd_fix_a) - $signed(shiftUdfExp_uid136_block_rsrvd_fix_b));
        end
    end
    assign shiftUdfExp_uid136_block_rsrvd_fix_n[0] = ~ (shiftUdfExp_uid136_block_rsrvd_fix_o[14]);

    // shiftValExp_uid138_block_rsrvd_fix(MUX,137)@39 + 1
    assign shiftValExp_uid138_block_rsrvd_fix_s = shiftUdfExp_uid136_block_rsrvd_fix_n;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            shiftValExp_uid138_block_rsrvd_fix_q <= 6'b0;
        end
        else
        begin
            unique case (shiftValExp_uid138_block_rsrvd_fix_s)
                1'b0 : shiftValExp_uid138_block_rsrvd_fix_q <= redist97_shiftValuePreSatRedExp_uid137_block_rsrvd_fix_b_1_q;
                1'b1 : shiftValExp_uid138_block_rsrvd_fix_q <= cstBiasPWE_uid125_block_rsrvd_fix_q;
                default : shiftValExp_uid138_block_rsrvd_fix_q <= 6'b0;
            endcase
        end
    end

    // redist96_shiftValExp_uid138_block_rsrvd_fix_q_2(DELAY,1262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist96_shiftValExp_uid138_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist96_shiftValExp_uid138_block_rsrvd_fix_q_2_q <= $unsigned(shiftValExp_uid138_block_rsrvd_fix_q);
        end
    end

    // rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select(BITSELECT,1152)@41
    assign rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_b = redist96_shiftValExp_uid138_block_rsrvd_fix_q_2_q[1:0];
    assign rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_c = redist96_shiftValExp_uid138_block_rsrvd_fix_q_2_q[3:2];
    assign rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_d = redist96_shiftValExp_uid138_block_rsrvd_fix_q_2_q[5:4];

    // rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix(MUX,1013)@41 + 1
    assign rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix_s = rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix_q <= 41'b0;
        end
        else
        begin
            unique case (rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix_s)
                2'b00 : rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix_q <= rightShiftStage0_uid1003_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
                2'b01 : rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid1006_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
                2'b10 : rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid1009_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
                2'b11 : rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix_q <= rightShiftStage1Idx3_uid1012_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
                default : rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix_q <= 41'b0;
            endcase
        end
    end

    // redist18_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_d_1(DELAY,1184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist18_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_d_1_q <= $unsigned(rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_d);
        end
    end

    // rightShiftStage2_uid1024_fxpInPostAlignExp_uid139_block_rsrvd_fix(MUX,1023)@42
    assign rightShiftStage2_uid1024_fxpInPostAlignExp_uid139_block_rsrvd_fix_s = redist18_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_d_1_q;
    always @(rightShiftStage2_uid1024_fxpInPostAlignExp_uid139_block_rsrvd_fix_s or rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix_q or rightShiftStage2Idx1_uid1017_fxpInPostAlignExp_uid139_block_rsrvd_fix_q or rightShiftStage2Idx2_uid1020_fxpInPostAlignExp_uid139_block_rsrvd_fix_q or stageIndexName_to41_uid1021_b)
    begin
        unique case (rightShiftStage2_uid1024_fxpInPostAlignExp_uid139_block_rsrvd_fix_s)
            2'b00 : rightShiftStage2_uid1024_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = rightShiftStage1_uid1014_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
            2'b01 : rightShiftStage2_uid1024_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = rightShiftStage2Idx1_uid1017_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
            2'b10 : rightShiftStage2_uid1024_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = rightShiftStage2Idx2_uid1020_fxpInPostAlignExp_uid139_block_rsrvd_fix_q;
            2'b11 : rightShiftStage2_uid1024_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = stageIndexName_to41_uid1021_b;
            default : rightShiftStage2_uid1024_fxpInPostAlignExp_uid139_block_rsrvd_fix_q = 41'b0;
        endcase
    end

    // ePreRndExp_uid141_block_rsrvd_fix(BITSELECT,140)@42
    assign ePreRndExp_uid141_block_rsrvd_fix_b = $unsigned(rightShiftStage2_uid1024_fxpInPostAlignExp_uid139_block_rsrvd_fix_q[40:30]);

    // xv0_uid841_eRndXlog2_uid142_block_rsrvd_fix(BITSELECT,840)@42
    assign xv0_uid841_eRndXlog2_uid142_block_rsrvd_fix_in = ePreRndExp_uid141_block_rsrvd_fix_b[4:0];
    assign xv0_uid841_eRndXlog2_uid142_block_rsrvd_fix_b = xv0_uid841_eRndXlog2_uid142_block_rsrvd_fix_in[4:0];

    // p0_uid844_eRndXlog2_uid142_block_rsrvd_fix(LOOKUP,843)@42 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= $unsigned(36'b000000000000000000000000000000000000);
        end
        else
        begin
            unique case (xv0_uid841_eRndXlog2_uid142_block_rsrvd_fix_b)
                5'b00000 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b000000000000000000000000000000000000;
                5'b00001 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b000001011000101110010000101111111011;
                5'b00010 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b000010110001011100100001011111110111;
                5'b00011 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b000100001010001010110010001111110011;
                5'b00100 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b000101100010111001000010111111101111;
                5'b00101 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b000110111011100111010011101111101011;
                5'b00110 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b001000010100010101100100011111100111;
                5'b00111 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b001001101101000011110101001111100011;
                5'b01000 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b001011000101110010000101111111011111;
                5'b01001 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b001100011110100000010110101111011011;
                5'b01010 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b001101110111001110100111011111010111;
                5'b01011 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b001111001111111100111000001111010011;
                5'b01100 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b010000101000101011001000111111001110;
                5'b01101 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b010010000001011001011001101111001010;
                5'b01110 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b010011011010000111101010011111000110;
                5'b01111 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b010100110010110101111011001111000010;
                5'b10000 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b010110001011100100001011111110111110;
                5'b10001 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b010111100100010010011100101110111010;
                5'b10010 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b011000111101000000101101011110110110;
                5'b10011 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b011010010101101110111110001110110010;
                5'b10100 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b011011101110011101001110111110101110;
                5'b10101 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b011101000111001011011111101110101010;
                5'b10110 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b011110011111111001110000011110100110;
                5'b10111 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b011111111000101000000001001110100001;
                5'b11000 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b100001010001010110010001111110011101;
                5'b11001 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b100010101010000100100010101110011001;
                5'b11010 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b100100000010110010110011011110010101;
                5'b11011 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b100101011011100001000100001110010001;
                5'b11100 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b100110110100001111010100111110001101;
                5'b11101 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b101000001100111101100101101110001001;
                5'b11110 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b101001100101101011110110011110000101;
                5'b11111 : p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'b101010111110011010000111001110000001;
                default : begin
                              // unreachable
                              p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q <= 36'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // xv1_uid842_eRndXlog2_uid142_block_rsrvd_fix(BITSELECT,841)@42
    assign xv1_uid842_eRndXlog2_uid142_block_rsrvd_fix_b = $unsigned(ePreRndExp_uid141_block_rsrvd_fix_b[10:5]);

    // p1_uid843_eRndXlog2_uid142_block_rsrvd_fix(LOOKUP,842)@42 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= $unsigned(43'b0000000000000000000000000000000000000000010);
        end
        else
        begin
            unique case (xv1_uid842_eRndXlog2_uid142_block_rsrvd_fix_b)
                6'b000000 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0000000000000000000000000000000000000000010;
                6'b000001 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0000000101100010111001000010111111101111111;
                6'b000010 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0000001011000101110010000101111111011111100;
                6'b000011 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0000010000101000101011001000111111001111001;
                6'b000100 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0000010110001011100100001011111110111110110;
                6'b000101 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0000011011101110011101001110111110101110011;
                6'b000110 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0000100001010001010110010001111110011110000;
                6'b000111 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0000100110110100001111010100111110001101101;
                6'b001000 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0000101100010111001000010111111101111101010;
                6'b001001 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0000110001111010000001011010111101101101000;
                6'b001010 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0000110111011100111010011101111101011100101;
                6'b001011 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0000111100111111110011100000111101001100010;
                6'b001100 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0001000010100010101100100011111100111011111;
                6'b001101 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0001001000000101100101100110111100101011100;
                6'b001110 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0001001101101000011110101001111100011011001;
                6'b001111 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0001010011001011010111101100111100001010110;
                6'b010000 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0001011000101110010000101111111011111010011;
                6'b010001 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0001011110010001001001110010111011101010000;
                6'b010010 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0001100011110100000010110101111011011001110;
                6'b010011 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0001101001010110111011111000111011001001011;
                6'b010100 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0001101110111001110100111011111010111001000;
                6'b010101 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0001110100011100101101111110111010101000101;
                6'b010110 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0001111001111111100111000001111010011000010;
                6'b010111 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0001111111100010100000000100111010000111111;
                6'b011000 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0010000101000101011001000111111001110111100;
                6'b011001 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0010001010101000010010001010111001100111001;
                6'b011010 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0010010000001011001011001101111001010110110;
                6'b011011 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0010010101101110000100010000111001000110100;
                6'b011100 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0010011011010000111101010011111000110110001;
                6'b011101 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0010100000110011110110010110111000100101110;
                6'b011110 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0010100110010110101111011001111000010101011;
                6'b011111 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b0010101011111001101000011100111000000101000;
                6'b100000 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1101001110100011011110100000001000001011110;
                6'b100001 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1101010100000110010111100011000111111011011;
                6'b100010 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1101011001101001010000100110000111101011000;
                6'b100011 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1101011111001100001001101001000111011010101;
                6'b100100 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1101100100101111000010101100000111001010010;
                6'b100101 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1101101010010001111011101111000110111001111;
                6'b100110 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1101101111110100110100110010000110101001101;
                6'b100111 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1101110101010111101101110101000110011001010;
                6'b101000 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1101111010111010100110111000000110001000111;
                6'b101001 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1110000000011101011111111011000101111000100;
                6'b101010 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1110000110000000011000111110000101101000001;
                6'b101011 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1110001011100011010010000001000101010111110;
                6'b101100 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1110010001000110001011000100000101000111011;
                6'b101101 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1110010110101001000100000111000100110111000;
                6'b101110 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1110011100001011111101001010000100100110101;
                6'b101111 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1110100001101110110110001101000100010110011;
                6'b110000 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1110100111010001101111010000000100000110000;
                6'b110001 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1110101100110100101000010011000011110101101;
                6'b110010 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1110110010010111100001010110000011100101010;
                6'b110011 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1110110111111010011010011001000011010100111;
                6'b110100 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1110111101011101010011011100000011000100100;
                6'b110101 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1111000011000000001100011111000010110100001;
                6'b110110 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1111001000100011000101100010000010100011110;
                6'b110111 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1111001110000101111110100101000010010011011;
                6'b111000 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1111010011101000110111101000000010000011001;
                6'b111001 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1111011001001011110000101011000001110010110;
                6'b111010 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1111011110101110101001101110000001100010011;
                6'b111011 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1111100100010001100010110001000001010010000;
                6'b111100 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1111101001110100011011110100000001000001101;
                6'b111101 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1111101111010111010100110111000000110001010;
                6'b111110 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1111110100111010001101111010000000100000111;
                6'b111111 : p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'b1111111010011101000110111101000000010000100;
                default : begin
                              // unreachable
                              p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q <= 43'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
                          end
            endcase
        end
    end

    // lev1_a0_uid845_eRndXlog2_uid142_block_rsrvd_fix(ADD,844)@43
    assign lev1_a0_uid845_eRndXlog2_uid142_block_rsrvd_fix_a = $unsigned({{2{p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q[42]}}, p1_uid843_eRndXlog2_uid142_block_rsrvd_fix_q});
    assign lev1_a0_uid845_eRndXlog2_uid142_block_rsrvd_fix_b = $unsigned({9'b000000000, p0_uid844_eRndXlog2_uid142_block_rsrvd_fix_q});
    assign lev1_a0_uid845_eRndXlog2_uid142_block_rsrvd_fix_o = $unsigned($signed(lev1_a0_uid845_eRndXlog2_uid142_block_rsrvd_fix_a) + $signed(lev1_a0_uid845_eRndXlog2_uid142_block_rsrvd_fix_b));
    assign lev1_a0_uid845_eRndXlog2_uid142_block_rsrvd_fix_q = lev1_a0_uid845_eRndXlog2_uid142_block_rsrvd_fix_o[43:0];

    // sOuputFormat_uid846_eRndXlog2_uid142_block_rsrvd_fix(BITSELECT,845)@43
    assign sOuputFormat_uid846_eRndXlog2_uid142_block_rsrvd_fix_in = $unsigned(lev1_a0_uid845_eRndXlog2_uid142_block_rsrvd_fix_q[41:0]);
    assign sOuputFormat_uid846_eRndXlog2_uid142_block_rsrvd_fix_b = $unsigned(sOuputFormat_uid846_eRndXlog2_uid142_block_rsrvd_fix_in[41:2]);

    // redist62_sOuputFormat_uid846_eRndXlog2_uid142_block_rsrvd_fix_b_1(DELAY,1228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_sOuputFormat_uid846_eRndXlog2_uid142_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist62_sOuputFormat_uid846_eRndXlog2_uid142_block_rsrvd_fix_b_1_q <= $unsigned(sOuputFormat_uid846_eRndXlog2_uid142_block_rsrvd_fix_b);
        end
    end

    // redist100_signProd_uid121_block_rsrvd_fix_q_5(DELAY,1266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_signProd_uid121_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist100_signProd_uid121_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist100_signProd_uid121_block_rsrvd_fix_q_5_delay_2 <= '0;
            redist100_signProd_uid121_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist100_signProd_uid121_block_rsrvd_fix_q_5_delay_0 <= $unsigned(redist99_signProd_uid121_block_rsrvd_fix_q_1_q);
            redist100_signProd_uid121_block_rsrvd_fix_q_5_delay_1 <= redist100_signProd_uid121_block_rsrvd_fix_q_5_delay_0;
            redist100_signProd_uid121_block_rsrvd_fix_q_5_delay_2 <= redist100_signProd_uid121_block_rsrvd_fix_q_5_delay_1;
            redist100_signProd_uid121_block_rsrvd_fix_q_5_q <= redist100_signProd_uid121_block_rsrvd_fix_q_5_delay_2;
        end
    end

    // redist101_signProd_uid121_block_rsrvd_fix_q_6(DELAY,1267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist101_signProd_uid121_block_rsrvd_fix_q_6_q <= '0;
        end
        else
        begin
            redist101_signProd_uid121_block_rsrvd_fix_q_6_q <= $unsigned(redist100_signProd_uid121_block_rsrvd_fix_q_5_q);
        end
    end

    // redist104_oFracProd_uid117_block_rsrvd_fix_q_5_inputreg0(DELAY,1401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist104_oFracProd_uid117_block_rsrvd_fix_q_5_inputreg0_q <= '0;
        end
        else
        begin
            redist104_oFracProd_uid117_block_rsrvd_fix_q_5_inputreg0_q <= $unsigned(oFracProd_uid117_block_rsrvd_fix_q);
        end
    end

    // redist104_oFracProd_uid117_block_rsrvd_fix_q_5(DELAY,1270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist104_oFracProd_uid117_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist104_oFracProd_uid117_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist104_oFracProd_uid117_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist104_oFracProd_uid117_block_rsrvd_fix_q_5_delay_0 <= $unsigned(redist104_oFracProd_uid117_block_rsrvd_fix_q_5_inputreg0_q);
            redist104_oFracProd_uid117_block_rsrvd_fix_q_5_delay_1 <= redist104_oFracProd_uid117_block_rsrvd_fix_q_5_delay_0;
            redist104_oFracProd_uid117_block_rsrvd_fix_q_5_q <= redist104_oFracProd_uid117_block_rsrvd_fix_q_5_delay_1;
        end
    end

    // redist104_oFracProd_uid117_block_rsrvd_fix_q_5_outputreg0(DELAY,1402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist104_oFracProd_uid117_block_rsrvd_fix_q_5_outputreg0_q <= '0;
        end
        else
        begin
            redist104_oFracProd_uid117_block_rsrvd_fix_q_5_outputreg0_q <= $unsigned(redist104_oFracProd_uid117_block_rsrvd_fix_q_5_q);
        end
    end

    // cstZeroWEP1_uid123_block_rsrvd_fix(CONSTANT,122)
    assign cstZeroWEP1_uid123_block_rsrvd_fix_q = $unsigned(9'b000000000);

    // oFracQZwE_uid144_block_rsrvd_fix(BITJOIN,143)@40
    assign oFracQZwE_uid144_block_rsrvd_fix_q = {GND_q, redist104_oFracProd_uid117_block_rsrvd_fix_q_5_outputreg0_q, cstZeroWEP1_uid123_block_rsrvd_fix_q};

    // onesCmpFxpInQ2_uid145_block_rsrvd_fix(LOGICAL,144)@40 + 1
    assign onesCmpFxpInQ2_uid145_block_rsrvd_fix_b = $unsigned({{37{redist100_signProd_uid121_block_rsrvd_fix_q_5_q[0]}}, redist100_signProd_uid121_block_rsrvd_fix_q_5_q});
    assign onesCmpFxpInQ2_uid145_block_rsrvd_fix_qi = oFracQZwE_uid144_block_rsrvd_fix_q ^ onesCmpFxpInQ2_uid145_block_rsrvd_fix_b;
    dspba_delay_ver #( .width(38), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    onesCmpFxpInQ2_uid145_block_rsrvd_fix_delay ( .xin(onesCmpFxpInQ2_uid145_block_rsrvd_fix_qi), .xout(onesCmpFxpInQ2_uid145_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fxpInExtQ2_uid146_block_rsrvd_fix(ADD,145)@41
    assign fxpInExtQ2_uid146_block_rsrvd_fix_a = {1'b0, onesCmpFxpInQ2_uid145_block_rsrvd_fix_q};
    assign fxpInExtQ2_uid146_block_rsrvd_fix_b = {38'b00000000000000000000000000000000000000, redist101_signProd_uid121_block_rsrvd_fix_q_6_q};
    assign fxpInExtQ2_uid146_block_rsrvd_fix_o = $unsigned(fxpInExtQ2_uid146_block_rsrvd_fix_a) + $unsigned(fxpInExtQ2_uid146_block_rsrvd_fix_b);
    assign fxpInExtQ2_uid146_block_rsrvd_fix_q = fxpInExtQ2_uid146_block_rsrvd_fix_o[38:0];

    // fxpInPreAlignQ2_uid147_block_rsrvd_fix(BITSELECT,146)@41
    assign fxpInPreAlignQ2_uid147_block_rsrvd_fix_in = $unsigned(fxpInExtQ2_uid146_block_rsrvd_fix_q[37:0]);
    assign fxpInPreAlignQ2_uid147_block_rsrvd_fix_b = $unsigned(fxpInPreAlignQ2_uid147_block_rsrvd_fix_in[37:0]);

    // redist94_fxpInPreAlignQ2_uid147_block_rsrvd_fix_b_1(DELAY,1260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist94_fxpInPreAlignQ2_uid147_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist94_fxpInPreAlignQ2_uid147_block_rsrvd_fix_b_1_q <= $unsigned(fxpInPreAlignQ2_uid147_block_rsrvd_fix_b);
        end
    end

    // xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITSELECT,1025)@42
    assign xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b = $unsigned(redist94_fxpInPreAlignQ2_uid147_block_rsrvd_fix_b_1_q[37:37]);

    // redist51_xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b_1(DELAY,1217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist51_xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b_1_q <= $unsigned(xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b);
        end
    end

    // stageIndexName_to38_uid1055(BITSELECT,1054)@43
    assign stageIndexName_to38_uid1055_in = $unsigned({{37{redist51_xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b_1_q[0]}}, redist51_xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b_1_q});
    assign stageIndexName_to38_uid1055_b = $unsigned(stageIndexName_to38_uid1055_in[37:0]);

    // seMsb_to32_uid1052(BITSELECT,1051)@43
    assign seMsb_to32_uid1052_in = $unsigned({{31{redist51_xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b_1_q[0]}}, redist51_xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b_1_q});
    assign seMsb_to32_uid1052_b = $unsigned(seMsb_to32_uid1052_in[31:0]);

    // rightShiftStage2Idx2Rng32_uid1053_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITSELECT,1052)@43
    assign rightShiftStage2Idx2Rng32_uid1053_fxpInPostAlign_X_uid152_block_rsrvd_fix_b = $unsigned(rightShiftStage1_uid1048_fxpInPostAlign_X_uid152_block_rsrvd_fix_q[37:32]);

    // rightShiftStage2Idx2_uid1054_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITJOIN,1053)@43
    assign rightShiftStage2Idx2_uid1054_fxpInPostAlign_X_uid152_block_rsrvd_fix_q = {seMsb_to32_uid1052_b, rightShiftStage2Idx2Rng32_uid1053_fxpInPostAlign_X_uid152_block_rsrvd_fix_b};

    // seMsb_to16_uid1049(BITSELECT,1048)@43
    assign seMsb_to16_uid1049_in = $unsigned({{15{redist51_xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b_1_q[0]}}, redist51_xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b_1_q});
    assign seMsb_to16_uid1049_b = $unsigned(seMsb_to16_uid1049_in[15:0]);

    // rightShiftStage2Idx1Rng16_uid1050_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITSELECT,1049)@43
    assign rightShiftStage2Idx1Rng16_uid1050_fxpInPostAlign_X_uid152_block_rsrvd_fix_b = $unsigned(rightShiftStage1_uid1048_fxpInPostAlign_X_uid152_block_rsrvd_fix_q[37:16]);

    // rightShiftStage2Idx1_uid1051_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITJOIN,1050)@43
    assign rightShiftStage2Idx1_uid1051_fxpInPostAlign_X_uid152_block_rsrvd_fix_q = {seMsb_to16_uid1049_b, rightShiftStage2Idx1Rng16_uid1050_fxpInPostAlign_X_uid152_block_rsrvd_fix_b};

    // seMsb_to12_uid1044(BITSELECT,1043)@42
    assign seMsb_to12_uid1044_in = $unsigned({{11{xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b[0]}}, xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b});
    assign seMsb_to12_uid1044_b = $unsigned(seMsb_to12_uid1044_in[11:0]);

    // rightShiftStage1Idx3Rng12_uid1045_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITSELECT,1044)@42
    assign rightShiftStage1Idx3Rng12_uid1045_fxpInPostAlign_X_uid152_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix_q[37:12]);

    // rightShiftStage1Idx3_uid1046_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITJOIN,1045)@42
    assign rightShiftStage1Idx3_uid1046_fxpInPostAlign_X_uid152_block_rsrvd_fix_q = {seMsb_to12_uid1044_b, rightShiftStage1Idx3Rng12_uid1045_fxpInPostAlign_X_uid152_block_rsrvd_fix_b};

    // seMsb_to8_uid1041(BITSELECT,1040)@42
    assign seMsb_to8_uid1041_in = $unsigned({{7{xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b[0]}}, xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b});
    assign seMsb_to8_uid1041_b = $unsigned(seMsb_to8_uid1041_in[7:0]);

    // rightShiftStage1Idx2Rng8_uid1042_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITSELECT,1041)@42
    assign rightShiftStage1Idx2Rng8_uid1042_fxpInPostAlign_X_uid152_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix_q[37:8]);

    // rightShiftStage1Idx2_uid1043_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITJOIN,1042)@42
    assign rightShiftStage1Idx2_uid1043_fxpInPostAlign_X_uid152_block_rsrvd_fix_q = {seMsb_to8_uid1041_b, rightShiftStage1Idx2Rng8_uid1042_fxpInPostAlign_X_uid152_block_rsrvd_fix_b};

    // seMsb_to4_uid1038(BITSELECT,1037)@42
    assign seMsb_to4_uid1038_in = $unsigned({{3{xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b[0]}}, xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b});
    assign seMsb_to4_uid1038_b = $unsigned(seMsb_to4_uid1038_in[3:0]);

    // rightShiftStage1Idx1Rng4_uid1039_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITSELECT,1038)@42
    assign rightShiftStage1Idx1Rng4_uid1039_fxpInPostAlign_X_uid152_block_rsrvd_fix_b = $unsigned(rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix_q[37:4]);

    // rightShiftStage1Idx1_uid1040_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITJOIN,1039)@42
    assign rightShiftStage1Idx1_uid1040_fxpInPostAlign_X_uid152_block_rsrvd_fix_q = {seMsb_to4_uid1038_b, rightShiftStage1Idx1Rng4_uid1039_fxpInPostAlign_X_uid152_block_rsrvd_fix_b};

    // seMsb_to3_uid1033(BITSELECT,1032)@42
    assign seMsb_to3_uid1033_in = $unsigned({{2{xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b[0]}}, xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b});
    assign seMsb_to3_uid1033_b = $unsigned(seMsb_to3_uid1033_in[2:0]);

    // rightShiftStage0Idx3Rng3_uid1034_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITSELECT,1033)@42
    assign rightShiftStage0Idx3Rng3_uid1034_fxpInPostAlign_X_uid152_block_rsrvd_fix_b = $unsigned(redist94_fxpInPreAlignQ2_uid147_block_rsrvd_fix_b_1_q[37:3]);

    // rightShiftStage0Idx3_uid1035_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITJOIN,1034)@42
    assign rightShiftStage0Idx3_uid1035_fxpInPostAlign_X_uid152_block_rsrvd_fix_q = {seMsb_to3_uid1033_b, rightShiftStage0Idx3Rng3_uid1034_fxpInPostAlign_X_uid152_block_rsrvd_fix_b};

    // seMsb_to2_uid1030(BITSELECT,1029)@42
    assign seMsb_to2_uid1030_in = $unsigned({{1{xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b[0]}}, xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b});
    assign seMsb_to2_uid1030_b = $unsigned(seMsb_to2_uid1030_in[1:0]);

    // rightShiftStage0Idx2Rng2_uid1031_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITSELECT,1030)@42
    assign rightShiftStage0Idx2Rng2_uid1031_fxpInPostAlign_X_uid152_block_rsrvd_fix_b = $unsigned(redist94_fxpInPreAlignQ2_uid147_block_rsrvd_fix_b_1_q[37:2]);

    // rightShiftStage0Idx2_uid1032_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITJOIN,1031)@42
    assign rightShiftStage0Idx2_uid1032_fxpInPostAlign_X_uid152_block_rsrvd_fix_q = {seMsb_to2_uid1030_b, rightShiftStage0Idx2Rng2_uid1031_fxpInPostAlign_X_uid152_block_rsrvd_fix_b};

    // rightShiftStage0Idx1Rng1_uid1028_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITSELECT,1027)@42
    assign rightShiftStage0Idx1Rng1_uid1028_fxpInPostAlign_X_uid152_block_rsrvd_fix_b = $unsigned(redist94_fxpInPreAlignQ2_uid147_block_rsrvd_fix_b_1_q[37:1]);

    // rightShiftStage0Idx1_uid1029_fxpInPostAlign_X_uid152_block_rsrvd_fix(BITJOIN,1028)@42
    assign rightShiftStage0Idx1_uid1029_fxpInPostAlign_X_uid152_block_rsrvd_fix_q = {xMSB_uid1026_fxpInPostAlign_X_uid152_block_rsrvd_fix_b, rightShiftStage0Idx1Rng1_uid1028_fxpInPostAlign_X_uid152_block_rsrvd_fix_b};

    // redist16_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_b_1(DELAY,1182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist16_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix(MUX,1036)@42
    assign rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix_s = redist16_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_b_1_q;
    always @(rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix_s or redist94_fxpInPreAlignQ2_uid147_block_rsrvd_fix_b_1_q or rightShiftStage0Idx1_uid1029_fxpInPostAlign_X_uid152_block_rsrvd_fix_q or rightShiftStage0Idx2_uid1032_fxpInPostAlign_X_uid152_block_rsrvd_fix_q or rightShiftStage0Idx3_uid1035_fxpInPostAlign_X_uid152_block_rsrvd_fix_q)
    begin
        unique case (rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix_s)
            2'b00 : rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix_q = redist94_fxpInPreAlignQ2_uid147_block_rsrvd_fix_b_1_q;
            2'b01 : rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix_q = rightShiftStage0Idx1_uid1029_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
            2'b10 : rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix_q = rightShiftStage0Idx2_uid1032_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
            2'b11 : rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix_q = rightShiftStage0Idx3_uid1035_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
            default : rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix_q = 38'b0;
        endcase
    end

    // redist17_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_c_1(DELAY,1183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist17_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // rightShiftStage1_uid1048_fxpInPostAlign_X_uid152_block_rsrvd_fix(MUX,1047)@42 + 1
    assign rightShiftStage1_uid1048_fxpInPostAlign_X_uid152_block_rsrvd_fix_s = redist17_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_c_1_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage1_uid1048_fxpInPostAlign_X_uid152_block_rsrvd_fix_q <= 38'b0;
        end
        else
        begin
            unique case (rightShiftStage1_uid1048_fxpInPostAlign_X_uid152_block_rsrvd_fix_s)
                2'b00 : rightShiftStage1_uid1048_fxpInPostAlign_X_uid152_block_rsrvd_fix_q <= rightShiftStage0_uid1037_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
                2'b01 : rightShiftStage1_uid1048_fxpInPostAlign_X_uid152_block_rsrvd_fix_q <= rightShiftStage1Idx1_uid1040_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
                2'b10 : rightShiftStage1_uid1048_fxpInPostAlign_X_uid152_block_rsrvd_fix_q <= rightShiftStage1Idx2_uid1043_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
                2'b11 : rightShiftStage1_uid1048_fxpInPostAlign_X_uid152_block_rsrvd_fix_q <= rightShiftStage1Idx3_uid1046_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
                default : rightShiftStage1_uid1048_fxpInPostAlign_X_uid152_block_rsrvd_fix_q <= 38'b0;
            endcase
        end
    end

    // redist19_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_d_2(DELAY,1185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_d_2_q <= '0;
        end
        else
        begin
            redist19_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_d_2_q <= $unsigned(redist18_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_d_1_q);
        end
    end

    // rightShiftStage2_uid1058_fxpInPostAlign_X_uid152_block_rsrvd_fix(MUX,1057)@43 + 1
    assign rightShiftStage2_uid1058_fxpInPostAlign_X_uid152_block_rsrvd_fix_s = redist19_rightShiftStageSel0Dto0_uid1002_fxpInPostAlignExp_uid139_block_rsrvd_fix_merged_bit_select_d_2_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage2_uid1058_fxpInPostAlign_X_uid152_block_rsrvd_fix_q <= 38'b0;
        end
        else
        begin
            unique case (rightShiftStage2_uid1058_fxpInPostAlign_X_uid152_block_rsrvd_fix_s)
                2'b00 : rightShiftStage2_uid1058_fxpInPostAlign_X_uid152_block_rsrvd_fix_q <= rightShiftStage1_uid1048_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
                2'b01 : rightShiftStage2_uid1058_fxpInPostAlign_X_uid152_block_rsrvd_fix_q <= rightShiftStage2Idx1_uid1051_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
                2'b10 : rightShiftStage2_uid1058_fxpInPostAlign_X_uid152_block_rsrvd_fix_q <= rightShiftStage2Idx2_uid1054_fxpInPostAlign_X_uid152_block_rsrvd_fix_q;
                2'b11 : rightShiftStage2_uid1058_fxpInPostAlign_X_uid152_block_rsrvd_fix_q <= stageIndexName_to38_uid1055_b;
                default : rightShiftStage2_uid1058_fxpInPostAlign_X_uid152_block_rsrvd_fix_q <= 38'b0;
            endcase
        end
    end

    // aPostPad_uid155_block_rsrvd_fix(BITJOIN,154)@44
    assign aPostPad_uid155_block_rsrvd_fix_q = {rightShiftStage2_uid1058_fxpInPostAlign_X_uid152_block_rsrvd_fix_q, GND_q};

    // yExtExp_uid156_block_rsrvd_fix(SUB,155)@44
    assign yExtExp_uid156_block_rsrvd_fix_a = $unsigned({{2{aPostPad_uid155_block_rsrvd_fix_q[38]}}, aPostPad_uid155_block_rsrvd_fix_q});
    assign yExtExp_uid156_block_rsrvd_fix_b = $unsigned({{1{redist62_sOuputFormat_uid846_eRndXlog2_uid142_block_rsrvd_fix_b_1_q[39]}}, redist62_sOuputFormat_uid846_eRndXlog2_uid142_block_rsrvd_fix_b_1_q});
    assign yExtExp_uid156_block_rsrvd_fix_o = $unsigned($signed(yExtExp_uid156_block_rsrvd_fix_a) - $signed(yExtExp_uid156_block_rsrvd_fix_b));
    assign yExtExp_uid156_block_rsrvd_fix_q = yExtExp_uid156_block_rsrvd_fix_o[40:0];

    // yRed_uid159_block_rsrvd_fix(BITSELECT,158)@44
    assign yRed_uid159_block_rsrvd_fix_in = yExtExp_uid156_block_rsrvd_fix_q[28:0];
    assign yRed_uid159_block_rsrvd_fix_b = yRed_uid159_block_rsrvd_fix_in[28:1];

    // redist92_yRed_uid159_block_rsrvd_fix_b_1(DELAY,1258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist92_yRed_uid159_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist92_yRed_uid159_block_rsrvd_fix_b_1_q <= $unsigned(yRed_uid159_block_rsrvd_fix_b);
        end
    end

    // yExtNeg_uid157_block_rsrvd_fix(BITSELECT,156)@44
    assign yExtNeg_uid157_block_rsrvd_fix_b = $unsigned(yExtExp_uid156_block_rsrvd_fix_q[40:40]);

    // redist93_yExtNeg_uid157_block_rsrvd_fix_b_1(DELAY,1259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_yExtNeg_uid157_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist93_yExtNeg_uid157_block_rsrvd_fix_b_1_q <= $unsigned(yExtNeg_uid157_block_rsrvd_fix_b);
        end
    end

    // yRedPostMux_uid160_block_rsrvd_fix(MUX,159)@45
    assign yRedPostMux_uid160_block_rsrvd_fix_s = redist93_yExtNeg_uid157_block_rsrvd_fix_b_1_q;
    always @(yRedPostMux_uid160_block_rsrvd_fix_s or redist92_yRed_uid159_block_rsrvd_fix_b_1_q or zY_uid158_block_rsrvd_fix_q)
    begin
        unique case (yRedPostMux_uid160_block_rsrvd_fix_s)
            1'b0 : yRedPostMux_uid160_block_rsrvd_fix_q = redist92_yRed_uid159_block_rsrvd_fix_b_1_q;
            1'b1 : yRedPostMux_uid160_block_rsrvd_fix_q = zY_uid158_block_rsrvd_fix_q;
            default : yRedPostMux_uid160_block_rsrvd_fix_q = 28'b0;
        endcase
    end

    // yAddr_uid162_block_rsrvd_fix_merged_bit_select(BITSELECT,1153)@45
    assign yAddr_uid162_block_rsrvd_fix_merged_bit_select_b = yRedPostMux_uid160_block_rsrvd_fix_q[27:20];
    assign yAddr_uid162_block_rsrvd_fix_merged_bit_select_c = yRedPostMux_uid160_block_rsrvd_fix_q[19:0];

    // redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3_inputreg0(DELAY,1328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3_inputreg0_q <= '0;
        end
        else
        begin
            redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3_inputreg0_q <= $unsigned(yAddr_uid162_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3(DELAY,1179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3_delay_0 <= '0;
            redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3_q <= '0;
        end
        else
        begin
            redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3_delay_0 <= $unsigned(redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3_inputreg0_q);
            redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3_q <= redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3_delay_0;
        end
    end

    // redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_inputreg0(DELAY,1329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_inputreg0_q <= '0;
        end
        else
        begin
            redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_inputreg0_q <= $unsigned(redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3_q);
        end
    end

    // redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7(DELAY,1180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_delay_0 <= '0;
            redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_q <= '0;
        end
        else
        begin
            redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_delay_0 <= $unsigned(redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_inputreg0_q);
            redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_q <= redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_delay_0;
        end
    end

    // redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_outputreg0(DELAY,1330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_outputreg0_q <= '0;
        end
        else
        begin
            redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_outputreg0_q <= $unsigned(redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_q);
        end
    end

    // redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_inputreg0(DELAY,1331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_inputreg0_q <= '0;
        end
        else
        begin
            redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_inputreg0_q <= $unsigned(redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_outputreg0_q);
        end
    end

    // redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_wraddr(REG,1335)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_wraddr_q <= $unsigned(redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_rdcnt_q);
        end
    end

    // redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem(DUALMEM,1333)
    assign redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_ia = $unsigned(redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_inputreg0_q);
    assign redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_aa = redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_wraddr_q;
    assign redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_ab = redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_rdcnt_q;
    assign redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(20),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(20),
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
    ) redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_dmem (
        .clocken1(redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_reset0),
        .clock1(clock),
        .address_a(redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_aa),
        .data_a(redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_ab),
        .q_b(redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_iq),
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
    assign redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_q = redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_iq[19:0];

    // redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_outputreg0(DELAY,1332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_outputreg0_q <= '0;
        end
        else
        begin
            redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_outputreg0_q <= $unsigned(redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_mem_q);
        end
    end

    // nx_mergedSignalTM_uid908_pT3_uid878_invPolyEval(BITJOIN,907)@57
    assign nx_mergedSignalTM_uid908_pT3_uid878_invPolyEval_q = {GND_q, redist15_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_12_outputreg0_q};

    // topRangeX_uid910_pT3_uid878_invPolyEval(BITSELECT,909)@57
    assign topRangeX_uid910_pT3_uid878_invPolyEval_b = $unsigned(nx_mergedSignalTM_uid908_pT3_uid878_invPolyEval_q[20:3]);

    // prodXY_uid893_pT2_uid872_invPolyEval_bs4(BITSELECT,1107)@52
    assign prodXY_uid893_pT2_uid872_invPolyEval_bs4_in = redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_outputreg0_q[17:0];
    assign prodXY_uid893_pT2_uid872_invPolyEval_bs4_b = prodXY_uid893_pT2_uid872_invPolyEval_bs4_in[17:0];

    // memoryC3_uid858_expTables_lutmem(DUALMEM,1092)@45 + 2
    // in j@20000000
    assign memoryC3_uid858_expTables_lutmem_aa = yAddr_uid162_block_rsrvd_fix_merged_bit_select_b;
    assign memoryC3_uid858_expTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(15),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001858_expTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC3_uid858_expTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC3_uid858_expTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC3_uid858_expTables_lutmem_aa),
        .q_a(memoryC3_uid858_expTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC3_uid858_expTables_lutmem_r = memoryC3_uid858_expTables_lutmem_ir[14:0];

    // redist36_memoryC3_uid858_expTables_lutmem_r_1(DELAY,1202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_memoryC3_uid858_expTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist36_memoryC3_uid858_expTables_lutmem_r_1_q <= $unsigned(memoryC3_uid858_expTables_lutmem_r);
        end
    end

    // yT1_uid865_invPolyEval(BITSELECT,864)@48
    assign yT1_uid865_invPolyEval_b = redist13_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_3_q[19:5];

    // prodXY_uid890_pT1_uid866_invPolyEval_cma(CHAINMULTADD,1120)@48 + 2
    assign prodXY_uid890_pT1_uid866_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid890_pT1_uid866_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid890_pT1_uid866_invPolyEval_cma_ena1 = prodXY_uid890_pT1_uid866_invPolyEval_cma_ena0;
    assign prodXY_uid890_pT1_uid866_invPolyEval_cma_l[0] = $signed({1'b0, prodXY_uid890_pT1_uid866_invPolyEval_cma_a0[0][14:0]});
    assign prodXY_uid890_pT1_uid866_invPolyEval_cma_p[0] = prodXY_uid890_pT1_uid866_invPolyEval_cma_l[0] * prodXY_uid890_pT1_uid866_invPolyEval_cma_c0[0];
    assign prodXY_uid890_pT1_uid866_invPolyEval_cma_u[0] = prodXY_uid890_pT1_uid866_invPolyEval_cma_p[0][30:0];
    assign prodXY_uid890_pT1_uid866_invPolyEval_cma_w[0] = prodXY_uid890_pT1_uid866_invPolyEval_cma_u[0];
    assign prodXY_uid890_pT1_uid866_invPolyEval_cma_x[0] = prodXY_uid890_pT1_uid866_invPolyEval_cma_w[0];
    assign prodXY_uid890_pT1_uid866_invPolyEval_cma_y[0] = prodXY_uid890_pT1_uid866_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid890_pT1_uid866_invPolyEval_cma_a0 <= '{default: '0};
            prodXY_uid890_pT1_uid866_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid890_pT1_uid866_invPolyEval_cma_ena0 == 1'b1)
            begin
                prodXY_uid890_pT1_uid866_invPolyEval_cma_a0[0] <= yT1_uid865_invPolyEval_b;
                prodXY_uid890_pT1_uid866_invPolyEval_cma_c0[0] <= redist36_memoryC3_uid858_expTables_lutmem_r_1_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid890_pT1_uid866_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid890_pT1_uid866_invPolyEval_cma_ena1 == 1'b1)
            begin
                prodXY_uid890_pT1_uid866_invPolyEval_cma_s[0] <= prodXY_uid890_pT1_uid866_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(31), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid890_pT1_uid866_invPolyEval_cma_delay ( .xin(prodXY_uid890_pT1_uid866_invPolyEval_cma_s[0]), .xout(prodXY_uid890_pT1_uid866_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid890_pT1_uid866_invPolyEval_cma_q = $unsigned(prodXY_uid890_pT1_uid866_invPolyEval_cma_qq[29:0]);

    // osig_uid891_pT1_uid866_invPolyEval(BITSELECT,890)@50
    assign osig_uid891_pT1_uid866_invPolyEval_b = $unsigned(prodXY_uid890_pT1_uid866_invPolyEval_cma_q[29:15]);

    // highBBits_uid868_invPolyEval(BITSELECT,867)@50
    assign highBBits_uid868_invPolyEval_b = $unsigned(osig_uid891_pT1_uid866_invPolyEval_b[14:1]);

    // redist60_highBBits_uid868_invPolyEval_b_1(DELAY,1226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_highBBits_uid868_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist60_highBBits_uid868_invPolyEval_b_1_q <= $unsigned(highBBits_uid868_invPolyEval_b);
        end
    end

    // redist10_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_3(DELAY,1176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_3_delay_0 <= '0;
            redist10_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_3_delay_1 <= '0;
            redist10_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_3_q <= '0;
        end
        else
        begin
            redist10_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_3_delay_0 <= $unsigned(yAddr_uid162_block_rsrvd_fix_merged_bit_select_b);
            redist10_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_3_delay_1 <= redist10_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_3_delay_0;
            redist10_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_3_q <= redist10_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_3_delay_1;
        end
    end

    // memoryC2_uid855_expTables_lutmem(DUALMEM,1091)@48 + 2
    // in j@20000000
    assign memoryC2_uid855_expTables_lutmem_aa = redist10_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_3_q;
    assign memoryC2_uid855_expTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(24),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001855_expTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC2_uid855_expTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC2_uid855_expTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC2_uid855_expTables_lutmem_aa),
        .q_a(memoryC2_uid855_expTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC2_uid855_expTables_lutmem_r = memoryC2_uid855_expTables_lutmem_ir[23:0];

    // redist37_memoryC2_uid855_expTables_lutmem_r_1(DELAY,1203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_memoryC2_uid855_expTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist37_memoryC2_uid855_expTables_lutmem_r_1_q <= $unsigned(memoryC2_uid855_expTables_lutmem_r);
        end
    end

    // s1sumAHighB_uid869_invPolyEval(ADD,868)@51 + 1
    assign s1sumAHighB_uid869_invPolyEval_a = $unsigned({{1{redist37_memoryC2_uid855_expTables_lutmem_r_1_q[23]}}, redist37_memoryC2_uid855_expTables_lutmem_r_1_q});
    assign s1sumAHighB_uid869_invPolyEval_b = $unsigned({{11{redist60_highBBits_uid868_invPolyEval_b_1_q[13]}}, redist60_highBBits_uid868_invPolyEval_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s1sumAHighB_uid869_invPolyEval_o <= 25'b0;
        end
        else
        begin
            s1sumAHighB_uid869_invPolyEval_o <= $unsigned($signed(s1sumAHighB_uid869_invPolyEval_a) + $signed(s1sumAHighB_uid869_invPolyEval_b));
        end
    end
    assign s1sumAHighB_uid869_invPolyEval_q = s1sumAHighB_uid869_invPolyEval_o[24:0];

    // lowRangeB_uid867_invPolyEval(BITSELECT,866)@50
    assign lowRangeB_uid867_invPolyEval_in = osig_uid891_pT1_uid866_invPolyEval_b[0:0];
    assign lowRangeB_uid867_invPolyEval_b = lowRangeB_uid867_invPolyEval_in[0:0];

    // redist61_lowRangeB_uid867_invPolyEval_b_2(DELAY,1227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_lowRangeB_uid867_invPolyEval_b_2_delay_0 <= '0;
            redist61_lowRangeB_uid867_invPolyEval_b_2_q <= '0;
        end
        else
        begin
            redist61_lowRangeB_uid867_invPolyEval_b_2_delay_0 <= $unsigned(lowRangeB_uid867_invPolyEval_b);
            redist61_lowRangeB_uid867_invPolyEval_b_2_q <= redist61_lowRangeB_uid867_invPolyEval_b_2_delay_0;
        end
    end

    // s1_uid870_invPolyEval(BITJOIN,869)@52
    assign s1_uid870_invPolyEval_q = {s1sumAHighB_uid869_invPolyEval_q, redist61_lowRangeB_uid867_invPolyEval_b_2_q};

    // prodXY_uid893_pT2_uid872_invPolyEval_bs2_merged_bit_select(BITSELECT,1164)@52
    assign prodXY_uid893_pT2_uid872_invPolyEval_bs2_merged_bit_select_b = $unsigned(s1_uid870_invPolyEval_q[25:18]);
    assign prodXY_uid893_pT2_uid872_invPolyEval_bs2_merged_bit_select_c = $unsigned(s1_uid870_invPolyEval_q[17:0]);

    // prodXY_uid893_pT2_uid872_invPolyEval_bs1(BITSELECT,1104)@52
    assign prodXY_uid893_pT2_uid872_invPolyEval_bs1_b = redist14_yAddr_uid162_block_rsrvd_fix_merged_bit_select_c_7_outputreg0_q[19:18];

    // prodXY_uid893_pT2_uid872_invPolyEval_bjA7(BITJOIN,1110)@52
    assign prodXY_uid893_pT2_uid872_invPolyEval_bjA7_q = {GND_q, prodXY_uid893_pT2_uid872_invPolyEval_bs1_b};

    // prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma(CHAINMULTADD,1129)@52 + 2
    assign prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_reset = ~ (resetn);
    assign prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_ena0 = 1'b1;
    assign prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_ena1 = prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_ena0;
    assign prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_r[0] = $signed({1'b0, prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_c0[0][17:0]});
    assign prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_r[1] = $signed({1'b0, prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_c0[1][17:0]});
    assign prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_p[0] = prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_a0[0] * prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_r[0];
    assign prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_p[1] = prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_a0[1] * prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_r[1];
    assign prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_u[0] = {{1{prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_p[0][26]}}, prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_p[0][26:0]};
    assign prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_u[1] = {{1{prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_p[1][26]}}, prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_p[1][26:0]};
    assign prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_w[0] = prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_u[0] + prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_u[1];
    assign prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_x[0] = prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_w[0];
    assign prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_y[0] = prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_a0 <= '{default: '0};
            prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_ena0 == 1'b1)
            begin
                prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_a0[0] <= {{5{prodXY_uid893_pT2_uid872_invPolyEval_bjA7_q[2]}}, prodXY_uid893_pT2_uid872_invPolyEval_bjA7_q[2:0]};
                prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_a0[1] <= prodXY_uid893_pT2_uid872_invPolyEval_bs2_merged_bit_select_b;
                prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_c0[0] <= prodXY_uid893_pT2_uid872_invPolyEval_bs2_merged_bit_select_c;
                prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_c0[1] <= prodXY_uid893_pT2_uid872_invPolyEval_bs4_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_ena1 == 1'b1)
            begin
                prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_s[0] <= prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_delay ( .xin(prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_s[0]), .xout(prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_q = $unsigned(prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_qq[26:0]);

    // redist25_prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_q_1(DELAY,1191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_q_1_q <= '0;
        end
        else
        begin
            redist25_prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_q_1_q <= $unsigned(prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_q);
        end
    end

    // prodXY_uid893_pT2_uid872_invPolyEval_sums_align_1(BITSHIFT,1116)@55
    assign prodXY_uid893_pT2_uid872_invPolyEval_sums_align_1_qint = { redist25_prodXY_uid893_pT2_uid872_invPolyEval_ma3_cma_q_1_q, 18'b000000000000000000 };
    assign prodXY_uid893_pT2_uid872_invPolyEval_sums_align_1_q = prodXY_uid893_pT2_uid872_invPolyEval_sums_align_1_qint[44:0];

    // prodXY_uid893_pT2_uid872_invPolyEval_im0(MULT,1103)@52 + 2
    assign prodXY_uid893_pT2_uid872_invPolyEval_im0_pr = signed'({1'b0, prodXY_uid893_pT2_uid872_invPolyEval_im0_a0[1:0]}) * signed'(prodXY_uid893_pT2_uid872_invPolyEval_im0_b0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid893_pT2_uid872_invPolyEval_im0_a0 <= 2'b0;
            prodXY_uid893_pT2_uid872_invPolyEval_im0_b0 <= 8'b0;
            prodXY_uid893_pT2_uid872_invPolyEval_im0_s1 <= 10'b0;
        end
        else
        begin
            prodXY_uid893_pT2_uid872_invPolyEval_im0_a0 <= prodXY_uid893_pT2_uid872_invPolyEval_bs1_b;
            prodXY_uid893_pT2_uid872_invPolyEval_im0_b0 <= $unsigned(prodXY_uid893_pT2_uid872_invPolyEval_bs2_merged_bit_select_b);
            prodXY_uid893_pT2_uid872_invPolyEval_im0_s1 <= $unsigned(prodXY_uid893_pT2_uid872_invPolyEval_im0_pr[9:0]);
        end
    end
    assign prodXY_uid893_pT2_uid872_invPolyEval_im0_q = prodXY_uid893_pT2_uid872_invPolyEval_im0_s1;

    // redist34_prodXY_uid893_pT2_uid872_invPolyEval_im0_q_1(DELAY,1200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_prodXY_uid893_pT2_uid872_invPolyEval_im0_q_1_q <= '0;
        end
        else
        begin
            redist34_prodXY_uid893_pT2_uid872_invPolyEval_im0_q_1_q <= $unsigned(prodXY_uid893_pT2_uid872_invPolyEval_im0_q);
        end
    end

    // prodXY_uid893_pT2_uid872_invPolyEval_im9_cma(CHAINMULTADD,1127)@52 + 2
    assign prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_reset = ~ (resetn);
    assign prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_ena0 = 1'b1;
    assign prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_ena1 = prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_ena0;
    assign prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_p[0] = prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_a0[0] * prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_c0[0];
    assign prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_u[0] = prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_p[0][35:0];
    assign prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_w[0] = prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_u[0];
    assign prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_x[0] = prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_w[0];
    assign prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_y[0] = prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_a0 <= '{default: '0};
            prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_ena0 == 1'b1)
            begin
                prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_a0[0] <= prodXY_uid893_pT2_uid872_invPolyEval_bs4_b;
                prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_c0[0] <= prodXY_uid893_pT2_uid872_invPolyEval_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_ena1 == 1'b1)
            begin
                prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_s[0] <= prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_delay ( .xin(prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_s[0]), .xout(prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_q = $unsigned(prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_qq[35:0]);

    // redist27_prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_q_1(DELAY,1193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_q_1_q <= '0;
        end
        else
        begin
            redist27_prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_q_1_q <= $unsigned(prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_q);
        end
    end

    // prodXY_uid893_pT2_uid872_invPolyEval_sums_join_0(BITJOIN,1115)@55
    assign prodXY_uid893_pT2_uid872_invPolyEval_sums_join_0_q = {redist34_prodXY_uid893_pT2_uid872_invPolyEval_im0_q_1_q, redist27_prodXY_uid893_pT2_uid872_invPolyEval_im9_cma_q_1_q};

    // prodXY_uid893_pT2_uid872_invPolyEval_sums_result_add_0_0(ADD,1118)@55
    assign prodXY_uid893_pT2_uid872_invPolyEval_sums_result_add_0_0_a = $unsigned({{1{prodXY_uid893_pT2_uid872_invPolyEval_sums_join_0_q[45]}}, prodXY_uid893_pT2_uid872_invPolyEval_sums_join_0_q});
    assign prodXY_uid893_pT2_uid872_invPolyEval_sums_result_add_0_0_b = $unsigned({{2{prodXY_uid893_pT2_uid872_invPolyEval_sums_align_1_q[44]}}, prodXY_uid893_pT2_uid872_invPolyEval_sums_align_1_q});
    assign prodXY_uid893_pT2_uid872_invPolyEval_sums_result_add_0_0_o = $unsigned($signed(prodXY_uid893_pT2_uid872_invPolyEval_sums_result_add_0_0_a) + $signed(prodXY_uid893_pT2_uid872_invPolyEval_sums_result_add_0_0_b));
    assign prodXY_uid893_pT2_uid872_invPolyEval_sums_result_add_0_0_q = prodXY_uid893_pT2_uid872_invPolyEval_sums_result_add_0_0_o[46:0];

    // osig_uid894_pT2_uid872_invPolyEval(BITSELECT,893)@55
    assign osig_uid894_pT2_uid872_invPolyEval_in = $unsigned(prodXY_uid893_pT2_uid872_invPolyEval_sums_result_add_0_0_q[45:0]);
    assign osig_uid894_pT2_uid872_invPolyEval_b = $unsigned(osig_uid894_pT2_uid872_invPolyEval_in[45:20]);

    // highBBits_uid874_invPolyEval(BITSELECT,873)@55
    assign highBBits_uid874_invPolyEval_b = $unsigned(osig_uid894_pT2_uid872_invPolyEval_b[25:1]);

    // redist58_highBBits_uid874_invPolyEval_b_1(DELAY,1224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_highBBits_uid874_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist58_highBBits_uid874_invPolyEval_b_1_q <= $unsigned(highBBits_uid874_invPolyEval_b);
        end
    end

    // redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_inputreg0(DELAY,1326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_inputreg0_q <= '0;
        end
        else
        begin
            redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_inputreg0_q <= $unsigned(redist10_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_3_q);
        end
    end

    // redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8(DELAY,1177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_delay_0 <= '0;
            redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_delay_1 <= '0;
            redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_delay_2 <= '0;
            redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_q <= '0;
        end
        else
        begin
            redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_delay_0 <= $unsigned(redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_inputreg0_q);
            redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_delay_1 <= redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_delay_0;
            redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_delay_2 <= redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_delay_1;
            redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_q <= redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_delay_2;
        end
    end

    // memoryC1_uid852_expTables_lutmem(DUALMEM,1090)@53 + 2
    // in j@20000000
    assign memoryC1_uid852_expTables_lutmem_aa = redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_q;
    assign memoryC1_uid852_expTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(33),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001852_expTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC1_uid852_expTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC1_uid852_expTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC1_uid852_expTables_lutmem_aa),
        .q_a(memoryC1_uid852_expTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC1_uid852_expTables_lutmem_r = memoryC1_uid852_expTables_lutmem_ir[32:0];

    // redist38_memoryC1_uid852_expTables_lutmem_r_1(DELAY,1204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_memoryC1_uid852_expTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist38_memoryC1_uid852_expTables_lutmem_r_1_q <= $unsigned(memoryC1_uid852_expTables_lutmem_r);
        end
    end

    // s2sumAHighB_uid875_invPolyEval(ADD,874)@56 + 1
    assign s2sumAHighB_uid875_invPolyEval_a = $unsigned({{1{redist38_memoryC1_uid852_expTables_lutmem_r_1_q[32]}}, redist38_memoryC1_uid852_expTables_lutmem_r_1_q});
    assign s2sumAHighB_uid875_invPolyEval_b = $unsigned({{9{redist58_highBBits_uid874_invPolyEval_b_1_q[24]}}, redist58_highBBits_uid874_invPolyEval_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s2sumAHighB_uid875_invPolyEval_o <= 34'b0;
        end
        else
        begin
            s2sumAHighB_uid875_invPolyEval_o <= $unsigned($signed(s2sumAHighB_uid875_invPolyEval_a) + $signed(s2sumAHighB_uid875_invPolyEval_b));
        end
    end
    assign s2sumAHighB_uid875_invPolyEval_q = s2sumAHighB_uid875_invPolyEval_o[33:0];

    // lowRangeB_uid873_invPolyEval(BITSELECT,872)@55
    assign lowRangeB_uid873_invPolyEval_in = osig_uid894_pT2_uid872_invPolyEval_b[0:0];
    assign lowRangeB_uid873_invPolyEval_b = lowRangeB_uid873_invPolyEval_in[0:0];

    // redist59_lowRangeB_uid873_invPolyEval_b_2(DELAY,1225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_lowRangeB_uid873_invPolyEval_b_2_delay_0 <= '0;
            redist59_lowRangeB_uid873_invPolyEval_b_2_q <= '0;
        end
        else
        begin
            redist59_lowRangeB_uid873_invPolyEval_b_2_delay_0 <= $unsigned(lowRangeB_uid873_invPolyEval_b);
            redist59_lowRangeB_uid873_invPolyEval_b_2_q <= redist59_lowRangeB_uid873_invPolyEval_b_2_delay_0;
        end
    end

    // s2_uid876_invPolyEval(BITJOIN,875)@57
    assign s2_uid876_invPolyEval_q = {s2sumAHighB_uid875_invPolyEval_q, redist59_lowRangeB_uid873_invPolyEval_b_2_q};

    // aboveLeftY_bottomRange_uid914_pT3_uid878_invPolyEval(BITSELECT,913)@57
    assign aboveLeftY_bottomRange_uid914_pT3_uid878_invPolyEval_in = $unsigned(s2_uid876_invPolyEval_q[16:0]);
    assign aboveLeftY_bottomRange_uid914_pT3_uid878_invPolyEval_b = $unsigned(aboveLeftY_bottomRange_uid914_pT3_uid878_invPolyEval_in[16:0]);

    // aboveLeftY_mergedSignalTM_uid915_pT3_uid878_invPolyEval(BITJOIN,914)@57
    assign aboveLeftY_mergedSignalTM_uid915_pT3_uid878_invPolyEval_q = {aboveLeftY_bottomRange_uid914_pT3_uid878_invPolyEval_b, GND_q};

    // topRangeY_uid911_pT3_uid878_invPolyEval(BITSELECT,910)@57
    assign topRangeY_uid911_pT3_uid878_invPolyEval_b = $unsigned(s2_uid876_invPolyEval_q[34:17]);

    // rightBottomX_bottomRange_uid918_pT3_uid878_invPolyEval(BITSELECT,917)@57
    assign rightBottomX_bottomRange_uid918_pT3_uid878_invPolyEval_in = $unsigned(nx_mergedSignalTM_uid908_pT3_uid878_invPolyEval_q[2:0]);
    assign rightBottomX_bottomRange_uid918_pT3_uid878_invPolyEval_b = $unsigned(rightBottomX_bottomRange_uid918_pT3_uid878_invPolyEval_in[2:0]);

    // rightBottomX_bottomExtension_uid917_pT3_uid878_invPolyEval(CONSTANT,916)
    assign rightBottomX_bottomExtension_uid917_pT3_uid878_invPolyEval_q = $unsigned(15'b000000000000000);

    // rightBottomX_mergedSignalTM_uid919_pT3_uid878_invPolyEval(BITJOIN,918)@57
    assign rightBottomX_mergedSignalTM_uid919_pT3_uid878_invPolyEval_q = {rightBottomX_bottomRange_uid918_pT3_uid878_invPolyEval_b, rightBottomX_bottomExtension_uid917_pT3_uid878_invPolyEval_q};

    // multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma(CHAINMULTADD,1128)@57 + 2
    assign multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_reset = ~ (resetn);
    assign multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_ena0 = 1'b1;
    assign multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_ena1 = multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_ena0;
    assign multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_l[0] = $signed({1'b0, multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_a0[0][17:0]});
    assign multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_l[1] = $signed({1'b0, multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_a0[1][17:0]});
    assign multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_p[0] = multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_l[0] * multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_c0[0];
    assign multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_p[1] = multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_l[1] * multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_c0[1];
    assign multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_u[0] = {{1{multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_p[0][36]}}, multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_p[0][36:0]};
    assign multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_u[1] = {{1{multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_p[1][36]}}, multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_p[1][36:0]};
    assign multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_w[0] = multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_u[0] + multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_u[1];
    assign multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_x[0] = multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_w[0];
    assign multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_y[0] = multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_a0 <= '{default: '0};
            multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_ena0 == 1'b1)
            begin
                multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_a0[0] <= rightBottomX_mergedSignalTM_uid919_pT3_uid878_invPolyEval_q;
                multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_a0[1] <= aboveLeftY_mergedSignalTM_uid915_pT3_uid878_invPolyEval_q;
                multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_c0[0] <= topRangeY_uid911_pT3_uid878_invPolyEval_b;
                multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_c0[1] <= topRangeX_uid910_pT3_uid878_invPolyEval_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_ena1 == 1'b1)
            begin
                multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_s[0] <= multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(38), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_delay ( .xin(multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_s[0]), .xout(multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_q = $unsigned(multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_qq[36:0]);

    // redist26_multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_q_1(DELAY,1192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_q_1_q <= '0;
        end
        else
        begin
            redist26_multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_q_1_q <= $unsigned(multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_q);
        end
    end

    // highBBits_uid930_pT3_uid878_invPolyEval(BITSELECT,929)@60
    assign highBBits_uid930_pT3_uid878_invPolyEval_b = $unsigned(redist26_multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_q_1_q[36:12]);

    // sm0_uid924_pT3_uid878_invPolyEval_cma(CHAINMULTADD,1121)@57 + 2
    assign sm0_uid924_pT3_uid878_invPolyEval_cma_reset = ~ (resetn);
    assign sm0_uid924_pT3_uid878_invPolyEval_cma_ena0 = 1'b1;
    assign sm0_uid924_pT3_uid878_invPolyEval_cma_ena1 = sm0_uid924_pT3_uid878_invPolyEval_cma_ena0;
    assign sm0_uid924_pT3_uid878_invPolyEval_cma_p[0] = sm0_uid924_pT3_uid878_invPolyEval_cma_a0[0] * sm0_uid924_pT3_uid878_invPolyEval_cma_c0[0];
    assign sm0_uid924_pT3_uid878_invPolyEval_cma_u[0] = sm0_uid924_pT3_uid878_invPolyEval_cma_p[0][35:0];
    assign sm0_uid924_pT3_uid878_invPolyEval_cma_w[0] = sm0_uid924_pT3_uid878_invPolyEval_cma_u[0];
    assign sm0_uid924_pT3_uid878_invPolyEval_cma_x[0] = sm0_uid924_pT3_uid878_invPolyEval_cma_w[0];
    assign sm0_uid924_pT3_uid878_invPolyEval_cma_y[0] = sm0_uid924_pT3_uid878_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sm0_uid924_pT3_uid878_invPolyEval_cma_a0 <= '{default: '0};
            sm0_uid924_pT3_uid878_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (sm0_uid924_pT3_uid878_invPolyEval_cma_ena0 == 1'b1)
            begin
                sm0_uid924_pT3_uid878_invPolyEval_cma_a0[0] <= topRangeX_uid910_pT3_uid878_invPolyEval_b;
                sm0_uid924_pT3_uid878_invPolyEval_cma_c0[0] <= topRangeY_uid911_pT3_uid878_invPolyEval_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sm0_uid924_pT3_uid878_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (sm0_uid924_pT3_uid878_invPolyEval_cma_ena1 == 1'b1)
            begin
                sm0_uid924_pT3_uid878_invPolyEval_cma_s[0] <= sm0_uid924_pT3_uid878_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sm0_uid924_pT3_uid878_invPolyEval_cma_delay ( .xin(sm0_uid924_pT3_uid878_invPolyEval_cma_s[0]), .xout(sm0_uid924_pT3_uid878_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign sm0_uid924_pT3_uid878_invPolyEval_cma_q = $unsigned(sm0_uid924_pT3_uid878_invPolyEval_cma_qq[35:0]);

    // redist33_sm0_uid924_pT3_uid878_invPolyEval_cma_q_1(DELAY,1199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sm0_uid924_pT3_uid878_invPolyEval_cma_q_1_q <= '0;
        end
        else
        begin
            redist33_sm0_uid924_pT3_uid878_invPolyEval_cma_q_1_q <= $unsigned(sm0_uid924_pT3_uid878_invPolyEval_cma_q);
        end
    end

    // aboveLeftY_uid923_pT3_uid878_invPolyEval(BITSELECT,922)@57
    assign aboveLeftY_uid923_pT3_uid878_invPolyEval_in = s2_uid876_invPolyEval_q[16:0];
    assign aboveLeftY_uid923_pT3_uid878_invPolyEval_b = aboveLeftY_uid923_pT3_uid878_invPolyEval_in[16:14];

    // aboveLeftX_uid922_pT3_uid878_invPolyEval(BITSELECT,921)@57
    assign aboveLeftX_uid922_pT3_uid878_invPolyEval_in = nx_mergedSignalTM_uid908_pT3_uid878_invPolyEval_q[2:0];
    assign aboveLeftX_uid922_pT3_uid878_invPolyEval_b = aboveLeftX_uid922_pT3_uid878_invPolyEval_in[2:0];

    // sm0_uid927_pT3_uid878_invPolyEval(MULT,926)@57 + 2
    assign sm0_uid927_pT3_uid878_invPolyEval_pr = $unsigned(sm0_uid927_pT3_uid878_invPolyEval_a0) * $unsigned(sm0_uid927_pT3_uid878_invPolyEval_b0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            sm0_uid927_pT3_uid878_invPolyEval_a0 <= 3'b0;
            sm0_uid927_pT3_uid878_invPolyEval_b0 <= 3'b0;
            sm0_uid927_pT3_uid878_invPolyEval_s1 <= 6'b0;
        end
        else
        begin
            sm0_uid927_pT3_uid878_invPolyEval_a0 <= aboveLeftX_uid922_pT3_uid878_invPolyEval_b;
            sm0_uid927_pT3_uid878_invPolyEval_b0 <= aboveLeftY_uid923_pT3_uid878_invPolyEval_b;
            sm0_uid927_pT3_uid878_invPolyEval_s1 <= sm0_uid927_pT3_uid878_invPolyEval_pr;
        end
    end
    assign sm0_uid927_pT3_uid878_invPolyEval_q = sm0_uid927_pT3_uid878_invPolyEval_s1;

    // redist53_sm0_uid927_pT3_uid878_invPolyEval_q_1(DELAY,1219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_sm0_uid927_pT3_uid878_invPolyEval_q_1_q <= '0;
        end
        else
        begin
            redist53_sm0_uid927_pT3_uid878_invPolyEval_q_1_q <= $unsigned(sm0_uid927_pT3_uid878_invPolyEval_q);
        end
    end

    // sumAb_uid928_pT3_uid878_invPolyEval(BITJOIN,927)@60
    assign sumAb_uid928_pT3_uid878_invPolyEval_q = {redist33_sm0_uid924_pT3_uid878_invPolyEval_cma_q_1_q, redist53_sm0_uid927_pT3_uid878_invPolyEval_q_1_q};

    // lev1_a0sumAHighB_uid931_pT3_uid878_invPolyEval(ADD,930)@60
    assign lev1_a0sumAHighB_uid931_pT3_uid878_invPolyEval_a = $unsigned({{1{sumAb_uid928_pT3_uid878_invPolyEval_q[41]}}, sumAb_uid928_pT3_uid878_invPolyEval_q});
    assign lev1_a0sumAHighB_uid931_pT3_uid878_invPolyEval_b = $unsigned({{18{highBBits_uid930_pT3_uid878_invPolyEval_b[24]}}, highBBits_uid930_pT3_uid878_invPolyEval_b});
    assign lev1_a0sumAHighB_uid931_pT3_uid878_invPolyEval_o = $unsigned($signed(lev1_a0sumAHighB_uid931_pT3_uid878_invPolyEval_a) + $signed(lev1_a0sumAHighB_uid931_pT3_uid878_invPolyEval_b));
    assign lev1_a0sumAHighB_uid931_pT3_uid878_invPolyEval_q = lev1_a0sumAHighB_uid931_pT3_uid878_invPolyEval_o[42:0];

    // lowRangeB_uid929_pT3_uid878_invPolyEval(BITSELECT,928)@60
    assign lowRangeB_uid929_pT3_uid878_invPolyEval_in = redist26_multSumOfTwoTS_uid925_pT3_uid878_invPolyEval_cma_q_1_q[11:0];
    assign lowRangeB_uid929_pT3_uid878_invPolyEval_b = lowRangeB_uid929_pT3_uid878_invPolyEval_in[11:0];

    // lev1_a0_uid932_pT3_uid878_invPolyEval(BITJOIN,931)@60
    assign lev1_a0_uid932_pT3_uid878_invPolyEval_q = {lev1_a0sumAHighB_uid931_pT3_uid878_invPolyEval_q, lowRangeB_uid929_pT3_uid878_invPolyEval_b};

    // os_uid933_pT3_uid878_invPolyEval(BITSELECT,932)@60
    assign os_uid933_pT3_uid878_invPolyEval_in = $unsigned(lev1_a0_uid932_pT3_uid878_invPolyEval_q[52:0]);
    assign os_uid933_pT3_uid878_invPolyEval_b = $unsigned(os_uid933_pT3_uid878_invPolyEval_in[52:17]);

    // highBBits_uid880_invPolyEval(BITSELECT,879)@60
    assign highBBits_uid880_invPolyEval_b = $unsigned(os_uid933_pT3_uid878_invPolyEval_b[35:2]);

    // redist56_highBBits_uid880_invPolyEval_b_1(DELAY,1222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_highBBits_uid880_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist56_highBBits_uid880_invPolyEval_b_1_q <= $unsigned(highBBits_uid880_invPolyEval_b);
        end
    end

    // redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_inputreg0(DELAY,1327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_inputreg0_q <= '0;
        end
        else
        begin
            redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_inputreg0_q <= $unsigned(redist11_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_8_q);
        end
    end

    // redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13(DELAY,1178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_delay_0 <= '0;
            redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_delay_1 <= '0;
            redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_delay_2 <= '0;
            redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_q <= '0;
        end
        else
        begin
            redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_delay_0 <= $unsigned(redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_inputreg0_q);
            redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_delay_1 <= redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_delay_0;
            redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_delay_2 <= redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_delay_1;
            redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_q <= redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_delay_2;
        end
    end

    // memoryC0_uid848_expTables_lutmem(DUALMEM,1089)@58 + 2
    // in j@20000000
    assign memoryC0_uid848_expTables_lutmem_aa = redist12_yAddr_uid162_block_rsrvd_fix_merged_bit_select_b_13_q;
    assign memoryC0_uid848_expTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(40),
        .widthad_a(8),
        .numwords_a(256),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("dfr_flt_i_llvm_fpga_vpfp_pow_i26_i26_i260001848_expTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC0_uid848_expTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid848_expTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid848_expTables_lutmem_aa),
        .q_a(memoryC0_uid848_expTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC0_uid848_expTables_lutmem_r = memoryC0_uid848_expTables_lutmem_ir[39:0];

    // redist39_memoryC0_uid848_expTables_lutmem_r_1(DELAY,1205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_memoryC0_uid848_expTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist39_memoryC0_uid848_expTables_lutmem_r_1_q <= $unsigned(memoryC0_uid848_expTables_lutmem_r);
        end
    end

    // os_uid850_expTables(BITJOIN,849)@61
    assign os_uid850_expTables_q = {GND_q, redist39_memoryC0_uid848_expTables_lutmem_r_1_q};

    // s3sumAHighB_uid881_invPolyEval(ADD,880)@61
    assign s3sumAHighB_uid881_invPolyEval_a = $unsigned({{1{os_uid850_expTables_q[40]}}, os_uid850_expTables_q});
    assign s3sumAHighB_uid881_invPolyEval_b = $unsigned({{8{redist56_highBBits_uid880_invPolyEval_b_1_q[33]}}, redist56_highBBits_uid880_invPolyEval_b_1_q});
    assign s3sumAHighB_uid881_invPolyEval_o = $unsigned($signed(s3sumAHighB_uid881_invPolyEval_a) + $signed(s3sumAHighB_uid881_invPolyEval_b));
    assign s3sumAHighB_uid881_invPolyEval_q = s3sumAHighB_uid881_invPolyEval_o[41:0];

    // lowRangeB_uid879_invPolyEval(BITSELECT,878)@60
    assign lowRangeB_uid879_invPolyEval_in = os_uid933_pT3_uid878_invPolyEval_b[1:0];
    assign lowRangeB_uid879_invPolyEval_b = lowRangeB_uid879_invPolyEval_in[1:0];

    // redist57_lowRangeB_uid879_invPolyEval_b_1(DELAY,1223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_lowRangeB_uid879_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist57_lowRangeB_uid879_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid879_invPolyEval_b);
        end
    end

    // s3_uid882_invPolyEval(BITJOIN,881)@61
    assign s3_uid882_invPolyEval_q = {s3sumAHighB_uid881_invPolyEval_q, redist57_lowRangeB_uid879_invPolyEval_b_1_q};

    // peORExpInc_uid166_block_rsrvd_fix(BITSELECT,165)@61
    assign peORExpInc_uid166_block_rsrvd_fix_in = $unsigned(s3_uid882_invPolyEval_q[41:0]);
    assign peORExpInc_uid166_block_rsrvd_fix_b = $unsigned(peORExpInc_uid166_block_rsrvd_fix_in[41:41]);

    // redist91_peORExpInc_uid166_block_rsrvd_fix_b_1(DELAY,1257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist91_peORExpInc_uid166_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist91_peORExpInc_uid166_block_rsrvd_fix_b_1_q <= $unsigned(peORExpInc_uid166_block_rsrvd_fix_b);
        end
    end

    // redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_notEnable(LOGICAL,1397)
    assign redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_notEnable_q = $unsigned(~ (VCC_q));

    // redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_nor(LOGICAL,1398)
    assign redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_nor_q = ~ (redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_notEnable_q | redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_sticky_ena_q);

    // redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_last(CONSTANT,1394)
    assign redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_last_q = $unsigned(5'b01110);

    // redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_cmp(LOGICAL,1395)
    assign redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_cmp_b = {1'b0, redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_rdcnt_q};
    assign redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_cmp_q = $unsigned(redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_last_q == redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_cmp_b ? 1'b1 : 1'b0);

    // redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_cmpReg(REG,1396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_cmpReg_q <= $unsigned(redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_cmp_q);
        end
    end

    // redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_sticky_ena(REG,1399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_nor_q == 1'b1)
        begin
            redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_sticky_ena_q <= $unsigned(redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_cmpReg_q);
        end
    end

    // redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_enaAnd(LOGICAL,1400)
    assign redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_enaAnd_q = redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_sticky_ena_q & VCC_q;

    // redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_rdcnt(COUNTER,1392)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_rdcnt_i <= 4'd0;
        end
        else
        begin
            redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_rdcnt_i <= $unsigned(redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_rdcnt_i) + $unsigned(4'd1);
        end
    end
    assign redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_rdcnt_q = redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_rdcnt_i[3:0];

    // redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_inputreg0(DELAY,1389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_inputreg0_q <= '0;
        end
        else
        begin
            redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_inputreg0_q <= $unsigned(ePreRndExp_uid141_block_rsrvd_fix_b);
        end
    end

    // redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_wraddr(REG,1393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_wraddr_q <= $unsigned(4'b1111);
        end
        else
        begin
            redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_wraddr_q <= $unsigned(redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_rdcnt_q);
        end
    end

    // redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem(DUALMEM,1391)
    assign redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_ia = $unsigned(redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_inputreg0_q);
    assign redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_aa = redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_wraddr_q;
    assign redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_ab = redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_rdcnt_q;
    assign redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(11),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(11),
        .widthad_b(4),
        .numwords_b(16),
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
    ) redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_dmem (
        .clocken1(redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_reset0),
        .clock1(clock),
        .address_a(redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_aa),
        .data_a(redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_ab),
        .q_b(redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_iq),
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
    assign redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_q = redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_iq[10:0];

    // redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_outputreg0(DELAY,1390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_outputreg0_q <= '0;
        end
        else
        begin
            redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_outputreg0_q <= $unsigned(redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_mem_q);
        end
    end

    // expRPostBiasPreExc0_uid167_block_rsrvd_fix(ADD,166)@61 + 1
    assign expRPostBiasPreExc0_uid167_block_rsrvd_fix_a = $unsigned({{2{redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_outputreg0_q[10]}}, redist95_ePreRndExp_uid141_block_rsrvd_fix_b_19_outputreg0_q});
    assign expRPostBiasPreExc0_uid167_block_rsrvd_fix_b = $unsigned({5'b00000, cstBias_uid8_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expRPostBiasPreExc0_uid167_block_rsrvd_fix_o <= 13'b0;
        end
        else
        begin
            expRPostBiasPreExc0_uid167_block_rsrvd_fix_o <= $unsigned($signed(expRPostBiasPreExc0_uid167_block_rsrvd_fix_a) + $signed(expRPostBiasPreExc0_uid167_block_rsrvd_fix_b));
        end
    end
    assign expRPostBiasPreExc0_uid167_block_rsrvd_fix_q = expRPostBiasPreExc0_uid167_block_rsrvd_fix_o[11:0];

    // expRPostBiasPreExc_uid168_block_rsrvd_fix(ADD,167)@62 + 1
    assign expRPostBiasPreExc_uid168_block_rsrvd_fix_a = $unsigned({{2{expRPostBiasPreExc0_uid167_block_rsrvd_fix_q[11]}}, expRPostBiasPreExc0_uid167_block_rsrvd_fix_q});
    assign expRPostBiasPreExc_uid168_block_rsrvd_fix_b = $unsigned({13'b0000000000000, redist91_peORExpInc_uid166_block_rsrvd_fix_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expRPostBiasPreExc_uid168_block_rsrvd_fix_o <= 14'b0;
        end
        else
        begin
            expRPostBiasPreExc_uid168_block_rsrvd_fix_o <= $unsigned($signed(expRPostBiasPreExc_uid168_block_rsrvd_fix_a) + $signed(expRPostBiasPreExc_uid168_block_rsrvd_fix_b));
        end
    end
    assign expRPostBiasPreExc_uid168_block_rsrvd_fix_q = expRPostBiasPreExc_uid168_block_rsrvd_fix_o[12:0];

    // expR_uid170_block_rsrvd_fix(BITSELECT,169)@63
    assign expR_uid170_block_rsrvd_fix_in = expRPostBiasPreExc_uid168_block_rsrvd_fix_q[7:0];
    assign expR_uid170_block_rsrvd_fix_b = expR_uid170_block_rsrvd_fix_in[7:0];

    // redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_notEnable(LOGICAL,1361)
    assign redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_notEnable_q = $unsigned(~ (VCC_q));

    // redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_nor(LOGICAL,1362)
    assign redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_nor_q = ~ (redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_notEnable_q | redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_sticky_ena_q);

    // redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_last(CONSTANT,1358)
    assign redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_last_q = $unsigned(6'b011100);

    // redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_cmp(LOGICAL,1359)
    assign redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_cmp_b = {1'b0, redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_q};
    assign redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_cmp_q = $unsigned(redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_last_q == redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_cmp_b ? 1'b1 : 1'b0);

    // redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_cmpReg(REG,1360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_cmpReg_q <= $unsigned(redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_cmp_q);
        end
    end

    // redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_sticky_ena(REG,1363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_nor_q == 1'b1)
        begin
            redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_sticky_ena_q <= $unsigned(redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_cmpReg_q);
        end
    end

    // redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_enaAnd(LOGICAL,1364)
    assign redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_enaAnd_q = redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_sticky_ena_q & VCC_q;

    // redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt(COUNTER,1356)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_i <= 5'd0;
            redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_i == 5'd28)
            begin
                redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_eq <= 1'b0;
            end
            if (redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_eq == 1'b1)
            begin
                redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_i <= $unsigned(redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_i <= $unsigned(redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_q = redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_i[4:0];

    // cstOneFPExpFrac_uid174_block_rsrvd_fix(BITJOIN,173)@0
    assign cstOneFPExpFrac_uid174_block_rsrvd_fix_q = {cstBias_uid8_block_rsrvd_fix_q, cstAllZWF_uid7_block_rsrvd_fix_q};

    // Cst1_uid184_block_rsrvd_fix(BITJOIN,183)@0
    assign Cst1_uid184_block_rsrvd_fix_q = {GND_q, cstOneFPExpFrac_uid174_block_rsrvd_fix_q};

    // y0_uid1075_excX1_uid185_block_rsrvd_fix_merged_bit_select(BITSELECT,1157)@0
    assign y0_uid1075_excX1_uid185_block_rsrvd_fix_merged_bit_select_b = Cst1_uid184_block_rsrvd_fix_q[12:0];
    assign y0_uid1075_excX1_uid185_block_rsrvd_fix_merged_bit_select_c = Cst1_uid184_block_rsrvd_fix_q[25:13];

    // x1_uid1070_excXM1_uid183_block_rsrvd_fix(BITSELECT,1069)@0
    assign x1_uid1070_excXM1_uid183_block_rsrvd_fix_b = in_0[25:13];

    // eq1_uid1079_excX1_uid185_block_rsrvd_fix(LOGICAL,1078)@0 + 1
    assign eq1_uid1079_excX1_uid185_block_rsrvd_fix_qi = $unsigned(x1_uid1070_excXM1_uid183_block_rsrvd_fix_b == y0_uid1075_excX1_uid185_block_rsrvd_fix_merged_bit_select_c ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq1_uid1079_excX1_uid185_block_rsrvd_fix_delay ( .xin(eq1_uid1079_excX1_uid185_block_rsrvd_fix_qi), .xout(eq1_uid1079_excX1_uid185_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // x0_uid1067_excXM1_uid183_block_rsrvd_fix(BITSELECT,1066)@0
    assign x0_uid1067_excXM1_uid183_block_rsrvd_fix_b = in_0[12:0];

    // eq0_uid1076_excX1_uid185_block_rsrvd_fix(LOGICAL,1075)@0 + 1
    assign eq0_uid1076_excX1_uid185_block_rsrvd_fix_qi = $unsigned(x0_uid1067_excXM1_uid183_block_rsrvd_fix_b == y0_uid1075_excX1_uid185_block_rsrvd_fix_merged_bit_select_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq0_uid1076_excX1_uid185_block_rsrvd_fix_delay ( .xin(eq0_uid1076_excX1_uid185_block_rsrvd_fix_qi), .xout(eq0_uid1076_excX1_uid185_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // andEq_uid1080_excX1_uid185_block_rsrvd_fix(LOGICAL,1079)@1 + 1
    assign andEq_uid1080_excX1_uid185_block_rsrvd_fix_qi = eq0_uid1076_excX1_uid185_block_rsrvd_fix_q & eq1_uid1079_excX1_uid185_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    andEq_uid1080_excX1_uid185_block_rsrvd_fix_delay ( .xin(andEq_uid1080_excX1_uid185_block_rsrvd_fix_qi), .xout(andEq_uid1080_excX1_uid185_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_inputreg0(DELAY,1353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_inputreg0_q <= '0;
        end
        else
        begin
            redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_inputreg0_q <= $unsigned(andEq_uid1080_excX1_uid185_block_rsrvd_fix_q);
        end
    end

    // redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_wraddr(REG,1357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_wraddr_q <= $unsigned(redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_q);
        end
    end

    // redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem(DUALMEM,1355)
    assign redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_ia = $unsigned(redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_inputreg0_q);
    assign redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_aa = redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_wraddr_q;
    assign redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_ab = redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_rdcnt_q;
    assign redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_reset0 = ~ (resetn);
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
    ) redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_dmem (
        .clocken1(redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_reset0),
        .clock1(clock),
        .address_a(redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_aa),
        .data_a(redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_ab),
        .q_b(redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_iq),
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
    assign redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_q = redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_iq[0:0];

    // redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_outputreg0(DELAY,1354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_outputreg0_q <= '0;
        end
        else
        begin
            redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_outputreg0_q <= $unsigned(redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_mem_q);
        end
    end

    // oneCase2_uid221_block_rsrvd_fix(LOGICAL,220)@35
    assign oneCase2_uid221_block_rsrvd_fix_q = redist142_excR_x_uid26_block_rsrvd_fix_q_1_q & redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_outputreg0_q;

    // redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_notEnable(LOGICAL,1373)
    assign redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_notEnable_q = $unsigned(~ (VCC_q));

    // redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_nor(LOGICAL,1374)
    assign redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_nor_q = ~ (redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_notEnable_q | redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_sticky_ena_q);

    // redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_last(CONSTANT,1370)
    assign redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_last_q = $unsigned(6'b011100);

    // redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_cmp(LOGICAL,1371)
    assign redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_cmp_b = {1'b0, redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_q};
    assign redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_cmp_q = $unsigned(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_last_q == redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_cmp_b ? 1'b1 : 1'b0);

    // redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_cmpReg(REG,1372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_cmpReg_q <= $unsigned(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_cmp_q);
        end
    end

    // redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_sticky_ena(REG,1375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_nor_q == 1'b1)
        begin
            redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_sticky_ena_q <= $unsigned(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_cmpReg_q);
        end
    end

    // redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_enaAnd(LOGICAL,1376)
    assign redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_enaAnd_q = redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_sticky_ena_q & VCC_q;

    // redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt(COUNTER,1368)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_i <= 5'd0;
            redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_i == 5'd28)
            begin
                redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_eq <= 1'b0;
            end
            if (redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_eq == 1'b1)
            begin
                redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_i <= $unsigned(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_i <= $unsigned(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_q = redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_i[4:0];

    // CstM1_uid182_block_rsrvd_fix(BITJOIN,181)@0
    assign CstM1_uid182_block_rsrvd_fix_q = {VCC_q, cstOneFPExpFrac_uid174_block_rsrvd_fix_q};

    // y0_uid1068_excXM1_uid183_block_rsrvd_fix_merged_bit_select(BITSELECT,1156)@0
    assign y0_uid1068_excXM1_uid183_block_rsrvd_fix_merged_bit_select_b = CstM1_uid182_block_rsrvd_fix_q[12:0];
    assign y0_uid1068_excXM1_uid183_block_rsrvd_fix_merged_bit_select_c = CstM1_uid182_block_rsrvd_fix_q[25:13];

    // eq1_uid1072_excXM1_uid183_block_rsrvd_fix(LOGICAL,1071)@0 + 1
    assign eq1_uid1072_excXM1_uid183_block_rsrvd_fix_qi = $unsigned(x1_uid1070_excXM1_uid183_block_rsrvd_fix_b == y0_uid1068_excXM1_uid183_block_rsrvd_fix_merged_bit_select_c ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq1_uid1072_excXM1_uid183_block_rsrvd_fix_delay ( .xin(eq1_uid1072_excXM1_uid183_block_rsrvd_fix_qi), .xout(eq1_uid1072_excXM1_uid183_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // eq0_uid1069_excXM1_uid183_block_rsrvd_fix(LOGICAL,1068)@0 + 1
    assign eq0_uid1069_excXM1_uid183_block_rsrvd_fix_qi = $unsigned(x0_uid1067_excXM1_uid183_block_rsrvd_fix_b == y0_uid1068_excXM1_uid183_block_rsrvd_fix_merged_bit_select_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq0_uid1069_excXM1_uid183_block_rsrvd_fix_delay ( .xin(eq0_uid1069_excXM1_uid183_block_rsrvd_fix_qi), .xout(eq0_uid1069_excXM1_uid183_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // andEq_uid1073_excXM1_uid183_block_rsrvd_fix(LOGICAL,1072)@1 + 1
    assign andEq_uid1073_excXM1_uid183_block_rsrvd_fix_qi = eq0_uid1069_excXM1_uid183_block_rsrvd_fix_q & eq1_uid1072_excXM1_uid183_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    andEq_uid1073_excXM1_uid183_block_rsrvd_fix_delay ( .xin(andEq_uid1073_excXM1_uid183_block_rsrvd_fix_qi), .xout(andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_inputreg0(DELAY,1365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_inputreg0_q <= '0;
        end
        else
        begin
            redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_inputreg0_q <= $unsigned(andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q);
        end
    end

    // redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_wraddr(REG,1369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_wraddr_q <= $unsigned(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_q);
        end
    end

    // redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem(DUALMEM,1367)
    assign redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_ia = $unsigned(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_inputreg0_q);
    assign redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_aa = redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_wraddr_q;
    assign redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_ab = redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_rdcnt_q;
    assign redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_reset0 = ~ (resetn);
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
    ) redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_dmem (
        .clocken1(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_reset0),
        .clock1(clock),
        .address_a(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_aa),
        .data_a(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_ab),
        .q_b(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_iq),
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
    assign redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_q = redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_iq[0:0];

    // redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_outputreg0(DELAY,1366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_outputreg0_q <= '0;
        end
        else
        begin
            redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_outputreg0_q <= $unsigned(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_mem_q);
        end
    end

    // oneCase1_uid222_block_rsrvd_fix(LOGICAL,221)@35
    assign oneCase1_uid222_block_rsrvd_fix_q = redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_outputreg0_q & redist142_excR_x_uid26_block_rsrvd_fix_q_1_q;

    // excROne_uid223_block_rsrvd_fix(LOGICAL,222)@35 + 1
    assign excROne_uid223_block_rsrvd_fix_qi = redist139_excZ_y_uid32_block_rsrvd_fix_q_4_q | oneCase1_uid222_block_rsrvd_fix_q | oneCase2_uid221_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excROne_uid223_block_rsrvd_fix_delay ( .xin(excROne_uid223_block_rsrvd_fix_qi), .xout(excROne_uid223_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist85_excROne_uid223_block_rsrvd_fix_q_28(DELAY,1251)
    dspba_delay_ver #( .width(1), .depth(27), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist85_excROne_uid223_block_rsrvd_fix_q_28 ( .xin(excROne_uid223_block_rsrvd_fix_q), .xout(redist85_excROne_uid223_block_rsrvd_fix_q_28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expRPostOne_uid225_block_rsrvd_fix(MUX,224)@63 + 1
    assign expRPostOne_uid225_block_rsrvd_fix_s = redist85_excROne_uid223_block_rsrvd_fix_q_28_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expRPostOne_uid225_block_rsrvd_fix_q <= 8'b0;
        end
        else
        begin
            unique case (expRPostOne_uid225_block_rsrvd_fix_s)
                1'b0 : expRPostOne_uid225_block_rsrvd_fix_q <= expR_uid170_block_rsrvd_fix_b;
                1'b1 : expRPostOne_uid225_block_rsrvd_fix_q <= cstBias_uid8_block_rsrvd_fix_q;
                default : expRPostOne_uid225_block_rsrvd_fix_q <= 8'b0;
            endcase
        end
    end

    // redist83_expRPostOne_uid225_block_rsrvd_fix_q_3(DELAY,1249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_expRPostOne_uid225_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist83_expRPostOne_uid225_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist83_expRPostOne_uid225_block_rsrvd_fix_q_3_delay_0 <= $unsigned(expRPostOne_uid225_block_rsrvd_fix_q);
            redist83_expRPostOne_uid225_block_rsrvd_fix_q_3_q <= redist83_expRPostOne_uid225_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // redist120_yIsInt_uid59_block_rsrvd_fix_q_3(DELAY,1286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist120_yIsInt_uid59_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist120_yIsInt_uid59_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist120_yIsInt_uid59_block_rsrvd_fix_q_3_delay_0 <= $unsigned(yIsInt_uid59_block_rsrvd_fix_q);
            redist120_yIsInt_uid59_block_rsrvd_fix_q_3_q <= redist120_yIsInt_uid59_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // invYIsInt_uid214_block_rsrvd_fix(LOGICAL,213)@36
    assign invYIsInt_uid214_block_rsrvd_fix_q = ~ (redist120_yIsInt_uid59_block_rsrvd_fix_q_3_q);

    // nanCase2_uid215_block_rsrvd_fix(LOGICAL,214)@36
    assign nanCase2_uid215_block_rsrvd_fix_q = redist143_excR_x_uid26_block_rsrvd_fix_q_2_q & redist129_signX_uid41_block_rsrvd_fix_b_36_q & invYIsInt_uid214_block_rsrvd_fix_q;

    // fracXIsNotZero_uid21_block_rsrvd_fix(LOGICAL,20)@35
    assign fracXIsNotZero_uid21_block_rsrvd_fix_q = ~ (redist147_fracXIsZero_uid20_block_rsrvd_fix_q_22_q);

    // excN_x_uid23_block_rsrvd_fix(LOGICAL,22)@35
    assign excN_x_uid23_block_rsrvd_fix_q = redist149_expXIsMax_uid19_block_rsrvd_fix_q_22_q & fracXIsNotZero_uid21_block_rsrvd_fix_q;

    // nanCase1_uid217_block_rsrvd_fix(LOGICAL,216)@35 + 1
    assign nanCase1_uid217_block_rsrvd_fix_qi = excN_x_uid23_block_rsrvd_fix_q & InvExpXIsZero_uid39_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    nanCase1_uid217_block_rsrvd_fix_delay ( .xin(nanCase1_uid217_block_rsrvd_fix_qi), .xout(nanCase1_uid217_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcX1_uid218_block_rsrvd_fix(LOGICAL,217)@35
    assign invExcX1_uid218_block_rsrvd_fix_q = ~ (redist47_andEq_uid1080_excX1_uid185_block_rsrvd_fix_q_34_outputreg0_q);

    // fracXIsZero_uid34_block_rsrvd_fix(LOGICAL,33)@31 + 1
    assign fracXIsZero_uid34_block_rsrvd_fix_qi = $unsigned(cstAllZWF_uid7_block_rsrvd_fix_q == redist140_frac_y_uid31_block_rsrvd_fix_b_1_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid34_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid34_block_rsrvd_fix_qi), .xout(fracXIsZero_uid34_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist135_fracXIsZero_uid34_block_rsrvd_fix_q_4(DELAY,1301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist135_fracXIsZero_uid34_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist135_fracXIsZero_uid34_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist135_fracXIsZero_uid34_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist135_fracXIsZero_uid34_block_rsrvd_fix_q_4_delay_0 <= $unsigned(fracXIsZero_uid34_block_rsrvd_fix_q);
            redist135_fracXIsZero_uid34_block_rsrvd_fix_q_4_delay_1 <= redist135_fracXIsZero_uid34_block_rsrvd_fix_q_4_delay_0;
            redist135_fracXIsZero_uid34_block_rsrvd_fix_q_4_q <= redist135_fracXIsZero_uid34_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // fracXIsNotZero_uid35_block_rsrvd_fix(LOGICAL,34)@35
    assign fracXIsNotZero_uid35_block_rsrvd_fix_q = ~ (redist135_fracXIsZero_uid34_block_rsrvd_fix_q_4_q);

    // excN_y_uid37_block_rsrvd_fix(LOGICAL,36)@35
    assign excN_y_uid37_block_rsrvd_fix_q = redist136_expXIsMax_uid33_block_rsrvd_fix_q_4_q & fracXIsNotZero_uid35_block_rsrvd_fix_q;

    // nanCase0_uid219_block_rsrvd_fix(LOGICAL,218)@35 + 1
    assign nanCase0_uid219_block_rsrvd_fix_qi = excN_y_uid37_block_rsrvd_fix_q & invExcX1_uid218_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    nanCase0_uid219_block_rsrvd_fix_delay ( .xin(nanCase0_uid219_block_rsrvd_fix_qi), .xout(nanCase0_uid219_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excRNaN_uid220_block_rsrvd_fix(LOGICAL,219)@36 + 1
    assign excRNaN_uid220_block_rsrvd_fix_qi = nanCase0_uid219_block_rsrvd_fix_q | nanCase1_uid217_block_rsrvd_fix_q | nanCase2_uid215_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRNaN_uid220_block_rsrvd_fix_delay ( .xin(excRNaN_uid220_block_rsrvd_fix_qi), .xout(excRNaN_uid220_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist86_excRNaN_uid220_block_rsrvd_fix_q_30(DELAY,1252)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist86_excRNaN_uid220_block_rsrvd_fix_q_30 ( .xin(excRNaN_uid220_block_rsrvd_fix_q), .xout(redist86_excRNaN_uid220_block_rsrvd_fix_q_30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_notEnable(LOGICAL,1438)
    assign redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_nor(LOGICAL,1439)
    assign redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_nor_q = ~ (redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_notEnable_q | redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_sticky_ena_q);

    // redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_last(CONSTANT,1435)
    assign redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_last_q = $unsigned(6'b011100);

    // redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_cmp(LOGICAL,1436)
    assign redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_cmp_b = {1'b0, redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_q};
    assign redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_cmp_q = $unsigned(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_last_q == redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_cmpReg(REG,1437)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_cmpReg_q <= $unsigned(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_cmp_q);
        end
    end

    // redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_sticky_ena(REG,1440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_nor_q == 1'b1)
        begin
            redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_sticky_ena_q <= $unsigned(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_cmpReg_q);
        end
    end

    // redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_enaAnd(LOGICAL,1441)
    assign redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_enaAnd_q = redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_sticky_ena_q & VCC_q;

    // redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt(COUNTER,1433)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_i <= 5'd0;
            redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_i == 5'd28)
            begin
                redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_eq == 1'b1)
            begin
                redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_i <= $unsigned(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_i <= $unsigned(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_q = redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_i[4:0];

    // y0_uid1061_xEQOneAbs_uid180_block_rsrvd_fix_merged_bit_select(BITSELECT,1154)@0
    assign y0_uid1061_xEQOneAbs_uid180_block_rsrvd_fix_merged_bit_select_b = cstOneFPExpFrac_uid174_block_rsrvd_fix_q[11:0];
    assign y0_uid1061_xEQOneAbs_uid180_block_rsrvd_fix_merged_bit_select_c = cstOneFPExpFrac_uid174_block_rsrvd_fix_q[24:12];

    // expFracX_uid177_block_rsrvd_fix(BITJOIN,176)@0
    assign expFracX_uid177_block_rsrvd_fix_q = {exp_x_uid16_block_rsrvd_fix_b, frac_x_uid17_block_rsrvd_fix_b};

    // x0_uid1060_xEQOneAbs_uid180_block_rsrvd_fix_merged_bit_select(BITSELECT,1155)@0
    assign x0_uid1060_xEQOneAbs_uid180_block_rsrvd_fix_merged_bit_select_b = expFracX_uid177_block_rsrvd_fix_q[11:0];
    assign x0_uid1060_xEQOneAbs_uid180_block_rsrvd_fix_merged_bit_select_c = expFracX_uid177_block_rsrvd_fix_q[24:12];

    // eq1_uid1065_xEQOneAbs_uid180_block_rsrvd_fix(LOGICAL,1064)@0 + 1
    assign eq1_uid1065_xEQOneAbs_uid180_block_rsrvd_fix_qi = $unsigned(x0_uid1060_xEQOneAbs_uid180_block_rsrvd_fix_merged_bit_select_c == y0_uid1061_xEQOneAbs_uid180_block_rsrvd_fix_merged_bit_select_c ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq1_uid1065_xEQOneAbs_uid180_block_rsrvd_fix_delay ( .xin(eq1_uid1065_xEQOneAbs_uid180_block_rsrvd_fix_qi), .xout(eq1_uid1065_xEQOneAbs_uid180_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // eq0_uid1062_xEQOneAbs_uid180_block_rsrvd_fix(LOGICAL,1061)@0 + 1
    assign eq0_uid1062_xEQOneAbs_uid180_block_rsrvd_fix_qi = $unsigned(x0_uid1060_xEQOneAbs_uid180_block_rsrvd_fix_merged_bit_select_b == y0_uid1061_xEQOneAbs_uid180_block_rsrvd_fix_merged_bit_select_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq0_uid1062_xEQOneAbs_uid180_block_rsrvd_fix_delay ( .xin(eq0_uid1062_xEQOneAbs_uid180_block_rsrvd_fix_qi), .xout(eq0_uid1062_xEQOneAbs_uid180_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix(LOGICAL,1065)@1 + 1
    assign andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_qi = eq0_uid1062_xEQOneAbs_uid180_block_rsrvd_fix_q & eq1_uid1065_xEQOneAbs_uid180_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_delay ( .xin(andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_qi), .xout(andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_inputreg0(DELAY,1430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_inputreg0_q <= $unsigned(andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q);
        end
    end

    // redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_wraddr(REG,1434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_wraddr_q <= $unsigned(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_q);
        end
    end

    // redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem(DUALMEM,1432)
    assign redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_ia = $unsigned(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_inputreg0_q);
    assign redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_aa = redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_wraddr_q;
    assign redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_ab = redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_rdcnt_q;
    assign redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_reset0 = ~ (resetn);
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
    ) redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_dmem (
        .clocken1(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_aa),
        .data_a(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_ab),
        .q_b(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_iq),
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
    assign redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_q = redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_iq[0:0];

    // redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_outputreg0(DELAY,1431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_outputreg0_q <= $unsigned(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_mem_q);
        end
    end

    // redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63(DELAY,1216)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63 ( .xin(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_split_0_outputreg0_q), .xout(redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invXIsOne_uid190_block_rsrvd_fix(LOGICAL,189)@64
    assign invXIsOne_uid190_block_rsrvd_fix_q = ~ (redist50_andEq_uid1066_xEQOneAbs_uid180_block_rsrvd_fix_q_63_q);

    // redist102_signProd_uid121_block_rsrvd_fix_q_29(DELAY,1268)
    dspba_delay_ver #( .width(1), .depth(23), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist102_signProd_uid121_block_rsrvd_fix_q_29 ( .xin(redist101_signProd_uid121_block_rsrvd_fix_q_6_q), .xout(redist102_signProd_uid121_block_rsrvd_fix_q_29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invSignProd_uid191_block_rsrvd_fix(LOGICAL,190)@64
    assign invSignProd_uid191_block_rsrvd_fix_q = ~ (redist102_signProd_uid121_block_rsrvd_fix_q_29_q);

    // expOvfInitialExp_uid135_block_rsrvd_fix(BITSELECT,134)@38
    assign expOvfInitialExp_uid135_block_rsrvd_fix_b = $unsigned(shiftValuePreSatExp_uid134_block_rsrvd_fix_q[12:12]);

    // redist98_expOvfInitialExp_uid135_block_rsrvd_fix_b_26(DELAY,1264)
    dspba_delay_ver #( .width(1), .depth(26), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist98_expOvfInitialExp_uid135_block_rsrvd_fix_b_26 ( .xin(expOvfInitialExp_uid135_block_rsrvd_fix_b), .xout(redist98_expOvfInitialExp_uid135_block_rsrvd_fix_b_26_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist121_yIsInt_uid59_block_rsrvd_fix_q_30(DELAY,1287)
    dspba_delay_ver #( .width(1), .depth(27), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist121_yIsInt_uid59_block_rsrvd_fix_q_30 ( .xin(redist120_yIsInt_uid59_block_rsrvd_fix_q_3_q), .xout(redist121_yIsInt_uid59_block_rsrvd_fix_q_30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist122_yIsInt_uid59_block_rsrvd_fix_q_31(DELAY,1288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist122_yIsInt_uid59_block_rsrvd_fix_q_31_q <= '0;
        end
        else
        begin
            redist122_yIsInt_uid59_block_rsrvd_fix_q_31_q <= $unsigned(redist121_yIsInt_uid59_block_rsrvd_fix_q_30_q);
        end
    end

    // infCase7_uid204_block_rsrvd_fix(LOGICAL,203)@64 + 1
    assign infCase7_uid204_block_rsrvd_fix_qi = redist145_excR_x_uid26_block_rsrvd_fix_q_30_q & redist131_signX_uid41_block_rsrvd_fix_b_64_q & redist133_excR_y_uid40_block_rsrvd_fix_q_29_q & redist122_yIsInt_uid59_block_rsrvd_fix_q_31_q & redist98_expOvfInitialExp_uid135_block_rsrvd_fix_b_26_q & invSignProd_uid191_block_rsrvd_fix_q & invXIsOne_uid190_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    infCase7_uid204_block_rsrvd_fix_delay ( .xin(infCase7_uid204_block_rsrvd_fix_qi), .xout(infCase7_uid204_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invSignX_uid188_block_rsrvd_fix(LOGICAL,187)@63
    assign invSignX_uid188_block_rsrvd_fix_q = ~ (redist130_signX_uid41_block_rsrvd_fix_b_63_q);

    // redist87_invSignX_uid188_block_rsrvd_fix_q_1(DELAY,1253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist87_invSignX_uid188_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist87_invSignX_uid188_block_rsrvd_fix_q_1_q <= $unsigned(invSignX_uid188_block_rsrvd_fix_q);
        end
    end

    // infCase7_uid205_block_rsrvd_fix(LOGICAL,204)@64 + 1
    assign infCase7_uid205_block_rsrvd_fix_qi = redist145_excR_x_uid26_block_rsrvd_fix_q_30_q & redist87_invSignX_uid188_block_rsrvd_fix_q_1_q & redist133_excR_y_uid40_block_rsrvd_fix_q_29_q & redist98_expOvfInitialExp_uid135_block_rsrvd_fix_b_26_q & invSignProd_uid191_block_rsrvd_fix_q & invXIsOne_uid190_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    infCase7_uid205_block_rsrvd_fix_delay ( .xin(infCase7_uid205_block_rsrvd_fix_qi), .xout(infCase7_uid205_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expOvf_uid173_block_rsrvd_fix(COMPARE,172)@63 + 1
    assign expOvf_uid173_block_rsrvd_fix_a = $unsigned({{2{expRPostBiasPreExc_uid168_block_rsrvd_fix_q[12]}}, expRPostBiasPreExc_uid168_block_rsrvd_fix_q});
    assign expOvf_uid173_block_rsrvd_fix_b = $unsigned({7'b0000000, cstAllOWE_uid13_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expOvf_uid173_block_rsrvd_fix_o <= 15'b0;
        end
        else
        begin
            expOvf_uid173_block_rsrvd_fix_o <= $unsigned($signed(expOvf_uid173_block_rsrvd_fix_a) - $signed(expOvf_uid173_block_rsrvd_fix_b));
        end
    end
    assign expOvf_uid173_block_rsrvd_fix_n[0] = ~ (expOvf_uid173_block_rsrvd_fix_o[14]);

    // expOvfInitialExp_uid206_block_rsrvd_fix(LOGICAL,205)@64
    assign expOvfInitialExp_uid206_block_rsrvd_fix_q = ~ (redist98_expOvfInitialExp_uid135_block_rsrvd_fix_b_26_q);

    // redist49_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_62(DELAY,1215)
    dspba_delay_ver #( .width(1), .depth(28), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist49_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_62 ( .xin(redist48_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_34_outputreg0_q), .xout(redist49_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_62_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcXM1_uid192_block_rsrvd_fix(LOGICAL,191)@63
    assign invExcXM1_uid192_block_rsrvd_fix_q = ~ (redist49_andEq_uid1073_excXM1_uid183_block_rsrvd_fix_q_62_q);

    // excRZeroSubCon11_uid193_block_rsrvd_fix(LOGICAL,192)@63
    assign excRZeroSubCon11_uid193_block_rsrvd_fix_q = invExcXM1_uid192_block_rsrvd_fix_q & redist144_excR_x_uid26_block_rsrvd_fix_q_29_q & redist130_signX_uid41_block_rsrvd_fix_b_63_q & redist132_excR_y_uid40_block_rsrvd_fix_q_28_q & redist121_yIsInt_uid59_block_rsrvd_fix_q_30_q;

    // excRZeroSubCon10_uid194_block_rsrvd_fix(LOGICAL,193)@63
    assign excRZeroSubCon10_uid194_block_rsrvd_fix_q = redist144_excR_x_uid26_block_rsrvd_fix_q_29_q & invSignX_uid188_block_rsrvd_fix_q & redist132_excR_y_uid40_block_rsrvd_fix_q_28_q;

    // excRZeroSubCon1_uid195_block_rsrvd_fix(LOGICAL,194)@63 + 1
    assign excRZeroSubCon1_uid195_block_rsrvd_fix_qi = excRZeroSubCon10_uid194_block_rsrvd_fix_q | excRZeroSubCon11_uid193_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRZeroSubCon1_uid195_block_rsrvd_fix_delay ( .xin(excRZeroSubCon1_uid195_block_rsrvd_fix_qi), .xout(excRZeroSubCon1_uid195_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // infCase6_uid207_block_rsrvd_fix(LOGICAL,206)@64 + 1
    assign infCase6_uid207_block_rsrvd_fix_qi = excRZeroSubCon1_uid195_block_rsrvd_fix_q & invXIsOne_uid190_block_rsrvd_fix_q & expOvfInitialExp_uid206_block_rsrvd_fix_q & expOvf_uid173_block_rsrvd_fix_n;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    infCase6_uid207_block_rsrvd_fix_delay ( .xin(infCase6_uid207_block_rsrvd_fix_qi), .xout(infCase6_uid207_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist128_signY_uid44_block_rsrvd_fix_b_34(DELAY,1294)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist128_signY_uid44_block_rsrvd_fix_b_34 ( .xin(redist127_signY_uid44_block_rsrvd_fix_b_5_q), .xout(redist128_signY_uid44_block_rsrvd_fix_b_34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invSignY_uid189_block_rsrvd_fix(LOGICAL,188)@64
    assign invSignY_uid189_block_rsrvd_fix_q = ~ (redist128_signY_uid44_block_rsrvd_fix_b_34_q);

    // infCase5_uid208_block_rsrvd_fix(LOGICAL,207)@64 + 1
    assign infCase5_uid208_block_rsrvd_fix_qi = redist146_excI_x_uid22_block_rsrvd_fix_q_29_q & redist131_signX_uid41_block_rsrvd_fix_b_64_q & redist133_excR_y_uid40_block_rsrvd_fix_q_29_q & invSignY_uid189_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    infCase5_uid208_block_rsrvd_fix_delay ( .xin(infCase5_uid208_block_rsrvd_fix_qi), .xout(infCase5_uid208_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // infCase4_uid209_block_rsrvd_fix(LOGICAL,208)@64 + 1
    assign infCase4_uid209_block_rsrvd_fix_qi = redist146_excI_x_uid22_block_rsrvd_fix_q_29_q & redist87_invSignX_uid188_block_rsrvd_fix_q_1_q & redist133_excR_y_uid40_block_rsrvd_fix_q_29_q & invSignY_uid189_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    infCase4_uid209_block_rsrvd_fix_delay ( .xin(infCase4_uid209_block_rsrvd_fix_qi), .xout(infCase4_uid209_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excI_y_uid36_block_rsrvd_fix(LOGICAL,35)@35 + 1
    assign excI_y_uid36_block_rsrvd_fix_qi = redist136_expXIsMax_uid33_block_rsrvd_fix_q_4_q & redist135_fracXIsZero_uid34_block_rsrvd_fix_q_4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_y_uid36_block_rsrvd_fix_delay ( .xin(excI_y_uid36_block_rsrvd_fix_qi), .xout(excI_y_uid36_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist134_excI_y_uid36_block_rsrvd_fix_q_29(DELAY,1300)
    dspba_delay_ver #( .width(1), .depth(28), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist134_excI_y_uid36_block_rsrvd_fix_q_29 ( .xin(excI_y_uid36_block_rsrvd_fix_q), .xout(redist134_excI_y_uid36_block_rsrvd_fix_q_29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_notEnable(LOGICAL,1462)
    assign redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_nor(LOGICAL,1463)
    assign redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_nor_q = ~ (redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_notEnable_q | redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_sticky_ena_q);

    // redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_last(CONSTANT,1459)
    assign redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_last_q = $unsigned(6'b011100);

    // redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_cmp(LOGICAL,1460)
    assign redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_cmp_b = {1'b0, redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_q};
    assign redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_cmp_q = $unsigned(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_last_q == redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_cmpReg(REG,1461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_cmpReg_q <= $unsigned(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_cmp_q);
        end
    end

    // redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_sticky_ena(REG,1464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_nor_q == 1'b1)
        begin
            redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_sticky_ena_q <= $unsigned(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_cmpReg_q);
        end
    end

    // redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_enaAnd(LOGICAL,1465)
    assign redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_enaAnd_q = redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_sticky_ena_q & VCC_q;

    // redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt(COUNTER,1457)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_i <= 5'd0;
            redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_i == 5'd28)
            begin
                redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_eq == 1'b1)
            begin
                redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_i <= $unsigned(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_i <= $unsigned(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_q = redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_i[4:0];

    // xLTOneAbs_uid178_block_rsrvd_fix(COMPARE,177)@0 + 1
    assign xLTOneAbs_uid178_block_rsrvd_fix_a = {2'b00, expFracX_uid177_block_rsrvd_fix_q};
    assign xLTOneAbs_uid178_block_rsrvd_fix_b = {2'b00, cstOneFPExpFrac_uid174_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            xLTOneAbs_uid178_block_rsrvd_fix_o <= 27'b0;
        end
        else
        begin
            xLTOneAbs_uid178_block_rsrvd_fix_o <= $unsigned(xLTOneAbs_uid178_block_rsrvd_fix_a) - $unsigned(xLTOneAbs_uid178_block_rsrvd_fix_b);
        end
    end
    assign xLTOneAbs_uid178_block_rsrvd_fix_c[0] = xLTOneAbs_uid178_block_rsrvd_fix_o[26];

    // redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_inputreg0(DELAY,1454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_inputreg0_q <= $unsigned(xLTOneAbs_uid178_block_rsrvd_fix_c);
        end
    end

    // redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_wraddr(REG,1458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_wraddr_q <= $unsigned(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_q);
        end
    end

    // redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem(DUALMEM,1456)
    assign redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_ia = $unsigned(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_inputreg0_q);
    assign redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_aa = redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_wraddr_q;
    assign redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_ab = redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_rdcnt_q;
    assign redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_reset0 = ~ (resetn);
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
    ) redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_dmem (
        .clocken1(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_aa),
        .data_a(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_ab),
        .q_b(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_iq),
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
    assign redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_q = redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_iq[0:0];

    // redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_outputreg0(DELAY,1455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_outputreg0_q <= $unsigned(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_mem_q);
        end
    end

    // redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64(DELAY,1255)
    dspba_delay_ver #( .width(1), .depth(30), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64 ( .xin(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_split_0_outputreg0_q), .xout(redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // infCase3_uid210_block_rsrvd_fix(LOGICAL,209)@64 + 1
    assign infCase3_uid210_block_rsrvd_fix_qi = redist145_excR_x_uid26_block_rsrvd_fix_q_30_q & redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_q & redist134_excI_y_uid36_block_rsrvd_fix_q_29_q & redist128_signY_uid44_block_rsrvd_fix_b_34_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    infCase3_uid210_block_rsrvd_fix_delay ( .xin(infCase3_uid210_block_rsrvd_fix_qi), .xout(infCase3_uid210_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_notEnable(LOGICAL,1450)
    assign redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_nor(LOGICAL,1451)
    assign redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_nor_q = ~ (redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_notEnable_q | redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_sticky_ena_q);

    // redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_last(CONSTANT,1447)
    assign redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_last_q = $unsigned(6'b011100);

    // redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_cmp(LOGICAL,1448)
    assign redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_cmp_b = {1'b0, redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_q};
    assign redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_cmp_q = $unsigned(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_last_q == redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_cmpReg(REG,1449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_cmpReg_q <= $unsigned(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_cmp_q);
        end
    end

    // redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_sticky_ena(REG,1452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_nor_q == 1'b1)
        begin
            redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_sticky_ena_q <= $unsigned(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_cmpReg_q);
        end
    end

    // redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_enaAnd(LOGICAL,1453)
    assign redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_enaAnd_q = redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_sticky_ena_q & VCC_q;

    // redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt(COUNTER,1445)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_i <= 5'd0;
            redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_i == 5'd28)
            begin
                redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_eq == 1'b1)
            begin
                redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_i <= $unsigned(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_i <= $unsigned(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_q = redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_i[4:0];

    // xGTOneAbs_uid179_block_rsrvd_fix(COMPARE,178)@0 + 1
    assign xGTOneAbs_uid179_block_rsrvd_fix_a = {2'b00, cstOneFPExpFrac_uid174_block_rsrvd_fix_q};
    assign xGTOneAbs_uid179_block_rsrvd_fix_b = {2'b00, expFracX_uid177_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            xGTOneAbs_uid179_block_rsrvd_fix_o <= 27'b0;
        end
        else
        begin
            xGTOneAbs_uid179_block_rsrvd_fix_o <= $unsigned(xGTOneAbs_uid179_block_rsrvd_fix_a) - $unsigned(xGTOneAbs_uid179_block_rsrvd_fix_b);
        end
    end
    assign xGTOneAbs_uid179_block_rsrvd_fix_c[0] = xGTOneAbs_uid179_block_rsrvd_fix_o[26];

    // redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_inputreg0(DELAY,1442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_inputreg0_q <= $unsigned(xGTOneAbs_uid179_block_rsrvd_fix_c);
        end
    end

    // redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_wraddr(REG,1446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_wraddr_q <= $unsigned(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_q);
        end
    end

    // redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem(DUALMEM,1444)
    assign redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_ia = $unsigned(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_inputreg0_q);
    assign redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_aa = redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_wraddr_q;
    assign redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_ab = redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_rdcnt_q;
    assign redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_reset0 = ~ (resetn);
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
    ) redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_dmem (
        .clocken1(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_aa),
        .data_a(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_ab),
        .q_b(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_iq),
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
    assign redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_q = redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_iq[0:0];

    // redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_outputreg0(DELAY,1443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_outputreg0_q <= $unsigned(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_mem_q);
        end
    end

    // redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64(DELAY,1254)
    dspba_delay_ver #( .width(1), .depth(30), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64 ( .xin(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_split_0_outputreg0_q), .xout(redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excXRI_uid186_block_rsrvd_fix(LOGICAL,185)@64
    assign excXRI_uid186_block_rsrvd_fix_q = redist145_excR_x_uid26_block_rsrvd_fix_q_30_q | redist146_excI_x_uid22_block_rsrvd_fix_q_29_q;

    // infCase2_uid211_block_rsrvd_fix(LOGICAL,210)@64 + 1
    assign infCase2_uid211_block_rsrvd_fix_qi = excXRI_uid186_block_rsrvd_fix_q & redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_q & redist134_excI_y_uid36_block_rsrvd_fix_q_29_q & invSignY_uid189_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    infCase2_uid211_block_rsrvd_fix_delay ( .xin(infCase2_uid211_block_rsrvd_fix_qi), .xout(infCase2_uid211_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excYRI_uid187_block_rsrvd_fix(LOGICAL,186)@64
    assign excYRI_uid187_block_rsrvd_fix_q = redist133_excR_y_uid40_block_rsrvd_fix_q_29_q | redist134_excI_y_uid36_block_rsrvd_fix_q_29_q;

    // infCase0_uid212_block_rsrvd_fix(LOGICAL,211)@64 + 1
    assign infCase0_uid212_block_rsrvd_fix_qi = redist151_excZ_x_uid18_block_rsrvd_fix_q_51_q & excYRI_uid187_block_rsrvd_fix_q & redist128_signY_uid44_block_rsrvd_fix_b_34_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    infCase0_uid212_block_rsrvd_fix_delay ( .xin(infCase0_uid212_block_rsrvd_fix_qi), .xout(infCase0_uid212_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excRInf_uid213_block_rsrvd_fix(LOGICAL,212)@65 + 1
    assign excRInf_uid213_block_rsrvd_fix_qi = infCase0_uid212_block_rsrvd_fix_q | infCase2_uid211_block_rsrvd_fix_q | infCase3_uid210_block_rsrvd_fix_q | infCase4_uid209_block_rsrvd_fix_q | infCase5_uid208_block_rsrvd_fix_q | infCase6_uid207_block_rsrvd_fix_q | infCase7_uid205_block_rsrvd_fix_q | infCase7_uid204_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRInf_uid213_block_rsrvd_fix_delay ( .xin(excRInf_uid213_block_rsrvd_fix_qi), .xout(excRInf_uid213_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // zeroCase7_uid196_block_rsrvd_fix(LOGICAL,195)@64 + 1
    assign zeroCase7_uid196_block_rsrvd_fix_qi = redist146_excI_x_uid22_block_rsrvd_fix_q_29_q & redist131_signX_uid41_block_rsrvd_fix_b_64_q & redist133_excR_y_uid40_block_rsrvd_fix_q_29_q & redist128_signY_uid44_block_rsrvd_fix_b_34_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    zeroCase7_uid196_block_rsrvd_fix_delay ( .xin(zeroCase7_uid196_block_rsrvd_fix_qi), .xout(zeroCase7_uid196_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // zeroCase6_uid197_block_rsrvd_fix(LOGICAL,196)@64 + 1
    assign zeroCase6_uid197_block_rsrvd_fix_qi = excRZeroSubCon1_uid195_block_rsrvd_fix_q & invXIsOne_uid190_block_rsrvd_fix_q & redist98_expOvfInitialExp_uid135_block_rsrvd_fix_b_26_q & redist102_signProd_uid121_block_rsrvd_fix_q_29_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    zeroCase6_uid197_block_rsrvd_fix_delay ( .xin(zeroCase6_uid197_block_rsrvd_fix_qi), .xout(zeroCase6_uid197_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expUdf_uid171_block_rsrvd_fix(COMPARE,170)@63 + 1
    assign expUdf_uid171_block_rsrvd_fix_a = $unsigned({14'b00000000000000, GND_q});
    assign expUdf_uid171_block_rsrvd_fix_b = $unsigned({{2{expRPostBiasPreExc_uid168_block_rsrvd_fix_q[12]}}, expRPostBiasPreExc_uid168_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expUdf_uid171_block_rsrvd_fix_o <= 15'b0;
        end
        else
        begin
            expUdf_uid171_block_rsrvd_fix_o <= $unsigned($signed(expUdf_uid171_block_rsrvd_fix_a) - $signed(expUdf_uid171_block_rsrvd_fix_b));
        end
    end
    assign expUdf_uid171_block_rsrvd_fix_n[0] = ~ (expUdf_uid171_block_rsrvd_fix_o[14]);

    // zeroCase5_uid198_block_rsrvd_fix(LOGICAL,197)@64 + 1
    assign zeroCase5_uid198_block_rsrvd_fix_qi = excRZeroSubCon1_uid195_block_rsrvd_fix_q & invXIsOne_uid190_block_rsrvd_fix_q & expUdf_uid171_block_rsrvd_fix_n;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    zeroCase5_uid198_block_rsrvd_fix_delay ( .xin(zeroCase5_uid198_block_rsrvd_fix_qi), .xout(zeroCase5_uid198_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // zeroCase4_uid199_block_rsrvd_fix(LOGICAL,198)@64 + 1
    assign zeroCase4_uid199_block_rsrvd_fix_qi = redist146_excI_x_uid22_block_rsrvd_fix_q_29_q & redist87_invSignX_uid188_block_rsrvd_fix_q_1_q & redist133_excR_y_uid40_block_rsrvd_fix_q_29_q & redist128_signY_uid44_block_rsrvd_fix_b_34_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    zeroCase4_uid199_block_rsrvd_fix_delay ( .xin(zeroCase4_uid199_block_rsrvd_fix_qi), .xout(zeroCase4_uid199_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // zeroCase3_uid200_block_rsrvd_fix(LOGICAL,199)@64 + 1
    assign zeroCase3_uid200_block_rsrvd_fix_qi = excXRI_uid186_block_rsrvd_fix_q & redist88_xGTOneAbs_uid179_block_rsrvd_fix_c_64_q & redist134_excI_y_uid36_block_rsrvd_fix_q_29_q & redist128_signY_uid44_block_rsrvd_fix_b_34_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    zeroCase3_uid200_block_rsrvd_fix_delay ( .xin(zeroCase3_uid200_block_rsrvd_fix_qi), .xout(zeroCase3_uid200_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // zeroCase2_uid201_block_rsrvd_fix(LOGICAL,200)@64 + 1
    assign zeroCase2_uid201_block_rsrvd_fix_qi = redist145_excR_x_uid26_block_rsrvd_fix_q_30_q & redist89_xLTOneAbs_uid178_block_rsrvd_fix_c_64_q & redist134_excI_y_uid36_block_rsrvd_fix_q_29_q & invSignY_uid189_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    zeroCase2_uid201_block_rsrvd_fix_delay ( .xin(zeroCase2_uid201_block_rsrvd_fix_qi), .xout(zeroCase2_uid201_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // zeroCase0_uid202_block_rsrvd_fix(LOGICAL,201)@64 + 1
    assign zeroCase0_uid202_block_rsrvd_fix_qi = redist151_excZ_x_uid18_block_rsrvd_fix_q_51_q & excYRI_uid187_block_rsrvd_fix_q & invSignY_uid189_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    zeroCase0_uid202_block_rsrvd_fix_delay ( .xin(zeroCase0_uid202_block_rsrvd_fix_qi), .xout(zeroCase0_uid202_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excRZero_uid203_block_rsrvd_fix(LOGICAL,202)@65 + 1
    assign excRZero_uid203_block_rsrvd_fix_qi = zeroCase0_uid202_block_rsrvd_fix_q | zeroCase2_uid201_block_rsrvd_fix_q | zeroCase3_uid200_block_rsrvd_fix_q | zeroCase4_uid199_block_rsrvd_fix_q | zeroCase5_uid198_block_rsrvd_fix_q | zeroCase6_uid197_block_rsrvd_fix_q | zeroCase7_uid196_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRZero_uid203_block_rsrvd_fix_delay ( .xin(excRZero_uid203_block_rsrvd_fix_qi), .xout(excRZero_uid203_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // concExc_uid226_block_rsrvd_fix(BITJOIN,225)@66
    assign concExc_uid226_block_rsrvd_fix_q = {redist86_excRNaN_uid220_block_rsrvd_fix_q_30_q, excRInf_uid213_block_rsrvd_fix_q, excRZero_uid203_block_rsrvd_fix_q};

    // excREnc_uid227_block_rsrvd_fix(LOOKUP,226)@66
    always @(concExc_uid226_block_rsrvd_fix_q)
    begin
        // Begin reserved scope level
        unique case (concExc_uid226_block_rsrvd_fix_q)
            3'b000 : excREnc_uid227_block_rsrvd_fix_q = 2'b01;
            3'b001 : excREnc_uid227_block_rsrvd_fix_q = 2'b00;
            3'b010 : excREnc_uid227_block_rsrvd_fix_q = 2'b10;
            3'b011 : excREnc_uid227_block_rsrvd_fix_q = 2'b00;
            3'b100 : excREnc_uid227_block_rsrvd_fix_q = 2'b11;
            3'b101 : excREnc_uid227_block_rsrvd_fix_q = 2'b00;
            3'b110 : excREnc_uid227_block_rsrvd_fix_q = 2'b00;
            3'b111 : excREnc_uid227_block_rsrvd_fix_q = 2'b00;
            default : begin
                          // unreachable
                          excREnc_uid227_block_rsrvd_fix_q = 2'bxx;
                      end
        endcase
        // End reserved scope level
    end

    // expRPostExc_uid235_block_rsrvd_fix(MUX,234)@66
    assign expRPostExc_uid235_block_rsrvd_fix_s = excREnc_uid227_block_rsrvd_fix_q;
    always @(expRPostExc_uid235_block_rsrvd_fix_s or cstAllZWE_uid15_block_rsrvd_fix_q or redist83_expRPostOne_uid225_block_rsrvd_fix_q_3_q or cstAllOWE_uid13_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid235_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid235_block_rsrvd_fix_q = cstAllZWE_uid15_block_rsrvd_fix_q;
            2'b01 : expRPostExc_uid235_block_rsrvd_fix_q = redist83_expRPostOne_uid225_block_rsrvd_fix_q_3_q;
            2'b10 : expRPostExc_uid235_block_rsrvd_fix_q = cstAllOWE_uid13_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid235_block_rsrvd_fix_q = cstAllOWE_uid13_block_rsrvd_fix_q;
            default : expRPostExc_uid235_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // oneFracRPostExc2_uid228_block_rsrvd_fix(CONSTANT,227)
    assign oneFracRPostExc2_uid228_block_rsrvd_fix_q = $unsigned(17'b00000000000000001);

    // peORExp_uid165_block_rsrvd_fix(BITSELECT,164)@61
    assign peORExp_uid165_block_rsrvd_fix_in = s3_uid882_invPolyEval_q[40:0];
    assign peORExp_uid165_block_rsrvd_fix_b = peORExp_uid165_block_rsrvd_fix_in[40:23];

    // fracR_uid169_block_rsrvd_fix(BITSELECT,168)@61
    assign fracR_uid169_block_rsrvd_fix_in = peORExp_uid165_block_rsrvd_fix_b[16:0];
    assign fracR_uid169_block_rsrvd_fix_b = fracR_uid169_block_rsrvd_fix_in[16:0];

    // redist90_fracR_uid169_block_rsrvd_fix_b_2(DELAY,1256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist90_fracR_uid169_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist90_fracR_uid169_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist90_fracR_uid169_block_rsrvd_fix_b_2_delay_0 <= $unsigned(fracR_uid169_block_rsrvd_fix_b);
            redist90_fracR_uid169_block_rsrvd_fix_b_2_q <= redist90_fracR_uid169_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // fracRPostOne_uid224_block_rsrvd_fix(MUX,223)@63 + 1
    assign fracRPostOne_uid224_block_rsrvd_fix_s = redist85_excROne_uid223_block_rsrvd_fix_q_28_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            fracRPostOne_uid224_block_rsrvd_fix_q <= 17'b0;
        end
        else
        begin
            unique case (fracRPostOne_uid224_block_rsrvd_fix_s)
                1'b0 : fracRPostOne_uid224_block_rsrvd_fix_q <= redist90_fracR_uid169_block_rsrvd_fix_b_2_q;
                1'b1 : fracRPostOne_uid224_block_rsrvd_fix_q <= cstAllZWF_uid7_block_rsrvd_fix_q;
                default : fracRPostOne_uid224_block_rsrvd_fix_q <= 17'b0;
            endcase
        end
    end

    // redist84_fracRPostOne_uid224_block_rsrvd_fix_q_3(DELAY,1250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_fracRPostOne_uid224_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist84_fracRPostOne_uid224_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist84_fracRPostOne_uid224_block_rsrvd_fix_q_3_delay_0 <= $unsigned(fracRPostOne_uid224_block_rsrvd_fix_q);
            redist84_fracRPostOne_uid224_block_rsrvd_fix_q_3_q <= redist84_fracRPostOne_uid224_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // fracRPostExc_uid231_block_rsrvd_fix(MUX,230)@66
    assign fracRPostExc_uid231_block_rsrvd_fix_s = excREnc_uid227_block_rsrvd_fix_q;
    always @(fracRPostExc_uid231_block_rsrvd_fix_s or cstAllZWF_uid7_block_rsrvd_fix_q or redist84_fracRPostOne_uid224_block_rsrvd_fix_q_3_q or oneFracRPostExc2_uid228_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid231_block_rsrvd_fix_s)
            2'b00 : fracRPostExc_uid231_block_rsrvd_fix_q = cstAllZWF_uid7_block_rsrvd_fix_q;
            2'b01 : fracRPostExc_uid231_block_rsrvd_fix_q = redist84_fracRPostOne_uid224_block_rsrvd_fix_q_3_q;
            2'b10 : fracRPostExc_uid231_block_rsrvd_fix_q = cstAllZWF_uid7_block_rsrvd_fix_q;
            2'b11 : fracRPostExc_uid231_block_rsrvd_fix_q = oneFracRPostExc2_uid228_block_rsrvd_fix_q;
            default : fracRPostExc_uid231_block_rsrvd_fix_q = 17'b0;
        endcase
    end

    // RPow_uid240_block_rsrvd_fix(BITJOIN,239)@66
    assign RPow_uid240_block_rsrvd_fix_q = {redist82_signR_uid239_block_rsrvd_fix_q_2_q, expRPostExc_uid235_block_rsrvd_fix_q, fracRPostExc_uid231_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,5)@66
    assign out_primWireOut = RPow_uid240_block_rsrvd_fix_q;

endmodule
