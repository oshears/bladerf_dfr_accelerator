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

// SystemVerilog created from flt_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i178_dfr0_addBlock_typeSFloatIEEE_17_8_typeSFloatIEEE_17_8_typeSFloatIEEE_17_8_0_0_addFpArchSoleDatapath_correctRounding_344ox9vt92oh21he3hk4dqgd3cj9dl9pirgixtkg010i10u10p10k10f10410s10h10070770j70e70970s807d0pd02f0md05d0hf0vj0ej0qk03j0fj01p0rp054cz5iwt7hrliwt7ztlcx26154c2463b0c2463a0054c2a6344c246w65
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:29:59 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i2600023a0054c2a6344c246w65 (
    input wire [25:0] in_0,
    input wire [25:0] in_1,
    output wire [25:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [24:0] expFracX_uid7_block_rsrvd_fix_b;
    wire [24:0] expFracY_uid8_block_rsrvd_fix_b;
    wire [26:0] xGTEy_uid9_block_rsrvd_fix_a;
    wire [26:0] xGTEy_uid9_block_rsrvd_fix_b;
    logic [26:0] xGTEy_uid9_block_rsrvd_fix_o;
    wire [0:0] xGTEy_uid9_block_rsrvd_fix_n;
    wire [16:0] fracY_uid10_block_rsrvd_fix_b;
    wire [7:0] expY_uid11_block_rsrvd_fix_b;
    wire [0:0] sigY_uid12_block_rsrvd_fix_b;
    wire [25:0] ypn_uid13_block_rsrvd_fix_q;
    wire [0:0] aSig_uid17_block_rsrvd_fix_s;
    reg [25:0] aSig_uid17_block_rsrvd_fix_q;
    wire [0:0] bSig_uid18_block_rsrvd_fix_s;
    reg [25:0] bSig_uid18_block_rsrvd_fix_q;
    wire [7:0] cstAllOWE_uid19_block_rsrvd_fix_q;
    wire [16:0] cstZeroWF_uid20_block_rsrvd_fix_q;
    wire [7:0] cstAllZWE_uid21_block_rsrvd_fix_q;
    wire [24:0] exp_aSig_uid22_block_rsrvd_fix_in;
    wire [7:0] exp_aSig_uid22_block_rsrvd_fix_b;
    wire [16:0] frac_aSig_uid23_block_rsrvd_fix_in;
    wire [16:0] frac_aSig_uid23_block_rsrvd_fix_b;
    wire [0:0] excZ_aSig_uid17_uid24_block_rsrvd_fix_qi;
    reg [0:0] excZ_aSig_uid17_uid24_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid25_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid25_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid26_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid26_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid27_block_rsrvd_fix_q;
    wire [0:0] excI_aSig_uid28_block_rsrvd_fix_qi;
    reg [0:0] excI_aSig_uid28_block_rsrvd_fix_q;
    wire [0:0] excN_aSig_uid29_block_rsrvd_fix_qi;
    reg [0:0] excN_aSig_uid29_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid30_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid31_block_rsrvd_fix_q;
    wire [0:0] excR_aSig_uid32_block_rsrvd_fix_qi;
    reg [0:0] excR_aSig_uid32_block_rsrvd_fix_q;
    wire [24:0] exp_bSig_uid36_block_rsrvd_fix_in;
    wire [7:0] exp_bSig_uid36_block_rsrvd_fix_b;
    wire [16:0] frac_bSig_uid37_block_rsrvd_fix_in;
    wire [16:0] frac_bSig_uid37_block_rsrvd_fix_b;
    wire [0:0] excZ_bSig_uid18_uid38_block_rsrvd_fix_qi;
    reg [0:0] excZ_bSig_uid18_uid38_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid39_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid39_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid40_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid40_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid41_block_rsrvd_fix_q;
    wire [0:0] excI_bSig_uid42_block_rsrvd_fix_qi;
    reg [0:0] excI_bSig_uid42_block_rsrvd_fix_q;
    wire [0:0] excN_bSig_uid43_block_rsrvd_fix_qi;
    reg [0:0] excN_bSig_uid43_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid44_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid45_block_rsrvd_fix_q;
    wire [0:0] excR_bSig_uid46_block_rsrvd_fix_qi;
    reg [0:0] excR_bSig_uid46_block_rsrvd_fix_q;
    wire [0:0] sigA_uid51_block_rsrvd_fix_b;
    wire [0:0] sigB_uid52_block_rsrvd_fix_b;
    wire [0:0] effSub_uid53_block_rsrvd_fix_q;
    wire [0:0] fracBz_uid57_block_rsrvd_fix_s;
    reg [16:0] fracBz_uid57_block_rsrvd_fix_q;
    wire [17:0] oFracB_uid60_block_rsrvd_fix_q;
    wire [8:0] expAmExpB_uid61_block_rsrvd_fix_a;
    wire [8:0] expAmExpB_uid61_block_rsrvd_fix_b;
    logic [8:0] expAmExpB_uid61_block_rsrvd_fix_o;
    wire [8:0] expAmExpB_uid61_block_rsrvd_fix_q;
    wire [4:0] cWFP2_uid62_block_rsrvd_fix_q;
    wire [10:0] shiftedOut_uid64_block_rsrvd_fix_a;
    wire [10:0] shiftedOut_uid64_block_rsrvd_fix_b;
    logic [10:0] shiftedOut_uid64_block_rsrvd_fix_o;
    wire [0:0] shiftedOut_uid64_block_rsrvd_fix_c;
    wire [18:0] padConst_uid65_block_rsrvd_fix_q;
    wire [36:0] rightPaddedIn_uid66_block_rsrvd_fix_q;
    wire [0:0] iShiftedOut_uid68_block_rsrvd_fix_q;
    wire [36:0] alignFracBPostShiftOut_uid69_block_rsrvd_fix_b;
    wire [36:0] alignFracBPostShiftOut_uid69_block_rsrvd_fix_qi;
    reg [36:0] alignFracBPostShiftOut_uid69_block_rsrvd_fix_q;
    wire [0:0] cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_qi;
    reg [0:0] cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q;
    wire [0:0] invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_qi;
    reg [0:0] invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_q;
    wire [0:0] effSubInvSticky_uid75_block_rsrvd_fix_qi;
    reg [0:0] effSubInvSticky_uid75_block_rsrvd_fix_q;
    wire [1:0] zocst_uid77_block_rsrvd_fix_q;
    wire [20:0] fracAAddOp_uid78_block_rsrvd_fix_q;
    wire [20:0] fracBAddOp_uid81_block_rsrvd_fix_q;
    wire [20:0] fracBAddOpPostXor_uid82_block_rsrvd_fix_b;
    wire [20:0] fracBAddOpPostXor_uid82_block_rsrvd_fix_qi;
    reg [20:0] fracBAddOpPostXor_uid82_block_rsrvd_fix_q;
    wire [21:0] fracAddResult_uid83_block_rsrvd_fix_a;
    wire [21:0] fracAddResult_uid83_block_rsrvd_fix_b;
    logic [21:0] fracAddResult_uid83_block_rsrvd_fix_o;
    wire [21:0] fracAddResult_uid83_block_rsrvd_fix_q;
    wire [20:0] rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_in;
    wire [20:0] rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b;
    wire [21:0] fracGRS_uid85_block_rsrvd_fix_q;
    wire [4:0] cAmA_uid87_block_rsrvd_fix_q;
    wire [0:0] aMinusA_uid88_block_rsrvd_fix_qi;
    reg [0:0] aMinusA_uid88_block_rsrvd_fix_q;
    wire [20:0] fracPostNorm_uid90_block_rsrvd_fix_b;
    wire [7:0] oneCST_uid91_block_rsrvd_fix_q;
    wire [8:0] expInc_uid92_block_rsrvd_fix_a;
    wire [8:0] expInc_uid92_block_rsrvd_fix_b;
    logic [8:0] expInc_uid92_block_rsrvd_fix_o;
    wire [8:0] expInc_uid92_block_rsrvd_fix_q;
    wire [9:0] expPostNorm_uid93_block_rsrvd_fix_a;
    wire [9:0] expPostNorm_uid93_block_rsrvd_fix_b;
    logic [9:0] expPostNorm_uid93_block_rsrvd_fix_o;
    wire [9:0] expPostNorm_uid93_block_rsrvd_fix_q;
    wire [0:0] Sticky0_uid94_block_rsrvd_fix_in;
    wire [0:0] Sticky0_uid94_block_rsrvd_fix_b;
    wire [1:0] Sticky1_uid95_block_rsrvd_fix_in;
    wire [0:0] Sticky1_uid95_block_rsrvd_fix_b;
    wire [2:0] Round_uid96_block_rsrvd_fix_in;
    wire [0:0] Round_uid96_block_rsrvd_fix_b;
    wire [3:0] Guard_uid97_block_rsrvd_fix_in;
    wire [0:0] Guard_uid97_block_rsrvd_fix_b;
    wire [4:0] LSB_uid98_block_rsrvd_fix_in;
    wire [0:0] LSB_uid98_block_rsrvd_fix_b;
    wire [4:0] rndBitCond_uid99_block_rsrvd_fix_q;
    wire [4:0] cRBit_uid100_block_rsrvd_fix_q;
    wire [0:0] rBi_uid101_block_rsrvd_fix_qi;
    reg [0:0] rBi_uid101_block_rsrvd_fix_q;
    wire [0:0] roundBit_uid102_block_rsrvd_fix_q;
    wire [19:0] fracPostNormRndRange_uid103_block_rsrvd_fix_in;
    wire [17:0] fracPostNormRndRange_uid103_block_rsrvd_fix_b;
    wire [27:0] expFracR_uid104_block_rsrvd_fix_q;
    wire [28:0] rndExpFrac_uid105_block_rsrvd_fix_a;
    wire [28:0] rndExpFrac_uid105_block_rsrvd_fix_b;
    logic [28:0] rndExpFrac_uid105_block_rsrvd_fix_o;
    wire [28:0] rndExpFrac_uid105_block_rsrvd_fix_q;
    wire [9:0] wEP2AllOwE_uid106_block_rsrvd_fix_q;
    wire [27:0] rndExp_uid107_block_rsrvd_fix_in;
    wire [9:0] rndExp_uid107_block_rsrvd_fix_b;
    wire [0:0] rOvfEQMax_uid108_block_rsrvd_fix_qi;
    reg [0:0] rOvfEQMax_uid108_block_rsrvd_fix_q;
    wire [27:0] rndExpFracOvfBits_uid110_block_rsrvd_fix_in;
    wire [1:0] rndExpFracOvfBits_uid110_block_rsrvd_fix_b;
    wire [0:0] rOvfExtraBits_uid111_block_rsrvd_fix_qi;
    reg [0:0] rOvfExtraBits_uid111_block_rsrvd_fix_q;
    wire [0:0] rOvf_uid112_block_rsrvd_fix_q;
    wire [9:0] wEP2AllZ_uid113_block_rsrvd_fix_q;
    wire [0:0] rUdfEQMin_uid114_block_rsrvd_fix_qi;
    reg [0:0] rUdfEQMin_uid114_block_rsrvd_fix_q;
    wire [27:0] rUdfExtraBit_uid115_block_rsrvd_fix_in;
    wire [0:0] rUdfExtraBit_uid115_block_rsrvd_fix_b;
    wire [0:0] rUdf_uid116_block_rsrvd_fix_q;
    wire [17:0] fracRPreExc_uid117_block_rsrvd_fix_in;
    wire [16:0] fracRPreExc_uid117_block_rsrvd_fix_b;
    wire [25:0] expRPreExc_uid118_block_rsrvd_fix_in;
    wire [7:0] expRPreExc_uid118_block_rsrvd_fix_b;
    wire [0:0] regInputs_uid119_block_rsrvd_fix_qi;
    reg [0:0] regInputs_uid119_block_rsrvd_fix_q;
    wire [4:0] excRZeroVInC_uid120_block_rsrvd_fix_q;
    reg [0:0] excRZero_uid121_block_rsrvd_fix_q;
    wire [0:0] rInfOvf_uid122_block_rsrvd_fix_qi;
    reg [0:0] rInfOvf_uid122_block_rsrvd_fix_q;
    wire [5:0] excRInfVInC_uid123_block_rsrvd_fix_q;
    reg [0:0] excRInf_uid124_block_rsrvd_fix_q;
    wire [0:0] excRNaN2_uid125_block_rsrvd_fix_q;
    wire [0:0] excAIBISub_uid126_block_rsrvd_fix_q;
    wire [0:0] excRNaN_uid127_block_rsrvd_fix_qi;
    reg [0:0] excRNaN_uid127_block_rsrvd_fix_q;
    wire [2:0] concExc_uid128_block_rsrvd_fix_q;
    reg [1:0] excREnc_uid129_block_rsrvd_fix_q;
    wire [0:0] invAMinusA_uid130_block_rsrvd_fix_q;
    wire [0:0] signRReg_uid131_block_rsrvd_fix_qi;
    reg [0:0] signRReg_uid131_block_rsrvd_fix_q;
    wire [0:0] sigBBInf_uid132_block_rsrvd_fix_q;
    wire [0:0] sigAAInf_uid133_block_rsrvd_fix_q;
    wire [0:0] signRInf_uid134_block_rsrvd_fix_qi;
    reg [0:0] signRInf_uid134_block_rsrvd_fix_q;
    wire [0:0] excAZBZSigASigB_uid135_block_rsrvd_fix_q;
    wire [0:0] excBZARSigA_uid136_block_rsrvd_fix_q;
    wire [0:0] signRZero_uid137_block_rsrvd_fix_qi;
    reg [0:0] signRZero_uid137_block_rsrvd_fix_q;
    wire [0:0] signRInfRZRReg_uid138_block_rsrvd_fix_qi;
    reg [0:0] signRInfRZRReg_uid138_block_rsrvd_fix_q;
    wire [0:0] invExcRNaN_uid139_block_rsrvd_fix_q;
    wire [0:0] signRPostExc_uid140_block_rsrvd_fix_q;
    wire [16:0] oneFracRPostExc2_uid141_block_rsrvd_fix_q;
    wire [1:0] fracRPostExc_uid144_block_rsrvd_fix_s;
    reg [16:0] fracRPostExc_uid144_block_rsrvd_fix_q;
    wire [1:0] expRPostExc_uid148_block_rsrvd_fix_s;
    reg [7:0] expRPostExc_uid148_block_rsrvd_fix_q;
    wire [25:0] R_uid149_block_rsrvd_fix_q;
    wire [15:0] zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [15:0] rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b;
    wire [0:0] vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [9:0] mO_uid154_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [5:0] vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_in;
    wire [5:0] vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b;
    wire [15:0] cStage_uid156_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_s;
    reg [15:0] vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [0:0] vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_s;
    reg [7:0] vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [3:0] zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [0:0] vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_s;
    reg [3:0] vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [1:0] zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [0:0] vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_s;
    reg [1:0] vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [0:0] rVStage_uid178_lzCountVal_uid86_block_rsrvd_fix_b;
    wire [0:0] vCount_uid179_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [4:0] r_uid180_lzCountVal_uid86_block_rsrvd_fix_q;
    wire [5:0] wIntCst_uid184_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [10:0] shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_a;
    wire [10:0] shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_b;
    logic [10:0] shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_o;
    wire [0:0] shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_n;
    wire [35:0] rightShiftStage0Idx1Rng1_uid186_alignmentShifter_uid65_block_rsrvd_fix_b;
    wire [36:0] rightShiftStage0Idx1_uid188_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [34:0] rightShiftStage0Idx2Rng2_uid189_alignmentShifter_uid65_block_rsrvd_fix_b;
    wire [36:0] rightShiftStage0Idx2_uid191_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [33:0] rightShiftStage0Idx3Rng3_uid192_alignmentShifter_uid65_block_rsrvd_fix_b;
    wire [2:0] rightShiftStage0Idx3Pad3_uid193_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [36:0] rightShiftStage0Idx3_uid194_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [1:0] rightShiftStageSel0Dto0_uid195_alignmentShifter_uid65_block_rsrvd_fix_in;
    wire [1:0] rightShiftStageSel0Dto0_uid195_alignmentShifter_uid65_block_rsrvd_fix_b;
    wire [1:0] rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_s;
    reg [36:0] rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [32:0] rightShiftStage1Idx1Rng4_uid197_alignmentShifter_uid65_block_rsrvd_fix_b;
    wire [36:0] rightShiftStage1Idx1_uid199_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [28:0] rightShiftStage1Idx2Rng8_uid200_alignmentShifter_uid65_block_rsrvd_fix_b;
    wire [36:0] rightShiftStage1Idx2_uid202_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [24:0] rightShiftStage1Idx3Rng12_uid203_alignmentShifter_uid65_block_rsrvd_fix_b;
    wire [11:0] rightShiftStage1Idx3Pad12_uid204_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [36:0] rightShiftStage1Idx3_uid205_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [3:0] rightShiftStageSel2Dto2_uid206_alignmentShifter_uid65_block_rsrvd_fix_in;
    wire [1:0] rightShiftStageSel2Dto2_uid206_alignmentShifter_uid65_block_rsrvd_fix_b;
    wire [1:0] rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_s;
    reg [36:0] rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [20:0] rightShiftStage2Idx1Rng16_uid208_alignmentShifter_uid65_block_rsrvd_fix_b;
    wire [36:0] rightShiftStage2Idx1_uid210_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [4:0] rightShiftStage2Idx2Rng32_uid211_alignmentShifter_uid65_block_rsrvd_fix_b;
    wire [31:0] rightShiftStage2Idx2Pad32_uid212_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [36:0] rightShiftStage2Idx2_uid213_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [36:0] rightShiftStage2Idx3_uid214_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [5:0] rightShiftStageSel4Dto4_uid215_alignmentShifter_uid65_block_rsrvd_fix_in;
    wire [1:0] rightShiftStageSel4Dto4_uid215_alignmentShifter_uid65_block_rsrvd_fix_b;
    wire [1:0] rightShiftStage2_uid216_alignmentShifter_uid65_block_rsrvd_fix_s;
    reg [36:0] rightShiftStage2_uid216_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [0:0] r_uid218_alignmentShifter_uid65_block_rsrvd_fix_s;
    reg [36:0] r_uid218_alignmentShifter_uid65_block_rsrvd_fix_q;
    wire [13:0] leftShiftStage0Idx1Rng8_uid223_fracPostNormExt_uid89_block_rsrvd_fix_in;
    wire [13:0] leftShiftStage0Idx1Rng8_uid223_fracPostNormExt_uid89_block_rsrvd_fix_b;
    wire [21:0] leftShiftStage0Idx1_uid224_fracPostNormExt_uid89_block_rsrvd_fix_q;
    wire [21:0] leftShiftStage0Idx2_uid227_fracPostNormExt_uid89_block_rsrvd_fix_q;
    wire [21:0] leftShiftStage0Idx3_uid228_fracPostNormExt_uid89_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_s;
    reg [21:0] leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q;
    wire [19:0] leftShiftStage1Idx1Rng2_uid232_fracPostNormExt_uid89_block_rsrvd_fix_in;
    wire [19:0] leftShiftStage1Idx1Rng2_uid232_fracPostNormExt_uid89_block_rsrvd_fix_b;
    wire [21:0] leftShiftStage1Idx1_uid233_fracPostNormExt_uid89_block_rsrvd_fix_q;
    wire [17:0] leftShiftStage1Idx2Rng4_uid235_fracPostNormExt_uid89_block_rsrvd_fix_in;
    wire [17:0] leftShiftStage1Idx2Rng4_uid235_fracPostNormExt_uid89_block_rsrvd_fix_b;
    wire [21:0] leftShiftStage1Idx2_uid236_fracPostNormExt_uid89_block_rsrvd_fix_q;
    wire [5:0] leftShiftStage1Idx3Pad6_uid237_fracPostNormExt_uid89_block_rsrvd_fix_q;
    wire [15:0] leftShiftStage1Idx3Rng6_uid238_fracPostNormExt_uid89_block_rsrvd_fix_in;
    wire [15:0] leftShiftStage1Idx3Rng6_uid238_fracPostNormExt_uid89_block_rsrvd_fix_b;
    wire [21:0] leftShiftStage1Idx3_uid239_fracPostNormExt_uid89_block_rsrvd_fix_q;
    wire [1:0] leftShiftStage1_uid241_fracPostNormExt_uid89_block_rsrvd_fix_s;
    reg [21:0] leftShiftStage1_uid241_fracPostNormExt_uid89_block_rsrvd_fix_q;
    wire [20:0] leftShiftStage2Idx1Rng1_uid243_fracPostNormExt_uid89_block_rsrvd_fix_in;
    wire [20:0] leftShiftStage2Idx1Rng1_uid243_fracPostNormExt_uid89_block_rsrvd_fix_b;
    wire [21:0] leftShiftStage2Idx1_uid244_fracPostNormExt_uid89_block_rsrvd_fix_q;
    wire [0:0] leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix_s;
    reg [21:0] leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix_q;
    wire [16:0] stickyBits_uid70_block_rsrvd_fix_merged_bit_select_b;
    wire [19:0] stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c;
    wire [7:0] rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b;
    wire [7:0] rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c;
    wire [3:0] rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b;
    wire [3:0] rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c;
    wire [0:0] leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_d;
    reg [1:0] redist0_leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [0:0] redist1_leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_d_1_q;
    reg [1:0] redist2_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [1:0] redist3_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [3:0] redist4_rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [3:0] redist5_rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [7:0] redist6_rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [7:0] redist7_rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [19:0] redist8_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [1:0] redist9_rightShiftStageSel4Dto4_uid215_alignmentShifter_uid65_block_rsrvd_fix_b_1_q;
    reg [1:0] redist10_rightShiftStageSel2Dto2_uid206_alignmentShifter_uid65_block_rsrvd_fix_b_1_q;
    reg [0:0] redist11_shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_n_2_q;
    reg [4:0] redist12_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1_q;
    reg [0:0] redist13_vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q_2_q;
    reg [0:0] redist14_vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q_3_q;
    reg [0:0] redist14_vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q_3_delay_0;
    reg [5:0] redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_q;
    reg [5:0] redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_delay_0;
    reg [5:0] redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_delay_1;
    reg [5:0] redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_delay_2;
    reg [0:0] redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_q;
    reg [0:0] redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_delay_0;
    reg [0:0] redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_delay_1;
    reg [0:0] redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_delay_2;
    reg [15:0] redist17_rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b_1_q;
    reg [0:0] redist18_signRInfRZRReg_uid138_block_rsrvd_fix_q_4_q;
    reg [0:0] redist18_signRInfRZRReg_uid138_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist18_signRInfRZRReg_uid138_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist19_excRZero_uid121_block_rsrvd_fix_q_2_q;
    reg [0:0] redist20_regInputs_uid119_block_rsrvd_fix_q_3_q;
    reg [0:0] redist20_regInputs_uid119_block_rsrvd_fix_q_3_delay_0;
    reg [7:0] redist21_expRPreExc_uid118_block_rsrvd_fix_b_3_q;
    reg [7:0] redist21_expRPreExc_uid118_block_rsrvd_fix_b_3_delay_0;
    reg [7:0] redist21_expRPreExc_uid118_block_rsrvd_fix_b_3_delay_1;
    reg [16:0] redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3_q;
    reg [16:0] redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3_delay_0;
    reg [0:0] redist23_rUdfExtraBit_uid115_block_rsrvd_fix_b_1_q;
    reg [17:0] redist24_fracPostNormRndRange_uid103_block_rsrvd_fix_b_1_q;
    reg [9:0] redist25_expPostNorm_uid93_block_rsrvd_fix_q_2_q;
    reg [0:0] redist26_aMinusA_uid88_block_rsrvd_fix_q_4_q;
    reg [0:0] redist26_aMinusA_uid88_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist26_aMinusA_uid88_block_rsrvd_fix_q_4_delay_1;
    reg [21:0] redist27_fracGRS_uid85_block_rsrvd_fix_q_1_q;
    reg [21:0] redist28_fracGRS_uid85_block_rsrvd_fix_q_5_q;
    reg [21:0] redist28_fracGRS_uid85_block_rsrvd_fix_q_5_delay_0;
    reg [21:0] redist28_fracGRS_uid85_block_rsrvd_fix_q_5_delay_1;
    reg [20:0] redist29_rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b_1_q;
    reg [0:0] redist30_invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_q_2_q;
    reg [0:0] redist31_shiftedOut_uid64_block_rsrvd_fix_c_2_q;
    reg [0:0] redist32_effSub_uid53_block_rsrvd_fix_q_13_q;
    reg [0:0] redist33_sigB_uid52_block_rsrvd_fix_b_6_q;
    reg [0:0] redist34_sigB_uid52_block_rsrvd_fix_b_15_q;
    reg [0:0] redist35_sigA_uid51_block_rsrvd_fix_b_6_q;
    reg [0:0] redist36_sigA_uid51_block_rsrvd_fix_b_15_q;
    reg [0:0] redist37_InvExpXIsZero_uid45_block_rsrvd_fix_q_12_q;
    reg [0:0] redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_q;
    reg [0:0] redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_delay_0;
    reg [0:0] redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_delay_1;
    reg [0:0] redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_delay_2;
    reg [0:0] redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_q;
    reg [0:0] redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_delay_0;
    reg [0:0] redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_delay_1;
    reg [0:0] redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_delay_2;
    reg [0:0] redist40_fracXIsZero_uid40_block_rsrvd_fix_q_12_q;
    reg [0:0] redist41_expXIsMax_uid39_block_rsrvd_fix_q_13_q;
    reg [0:0] redist42_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_14_q;
    reg [0:0] redist43_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_17_q;
    reg [0:0] redist43_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_17_delay_0;
    reg [0:0] redist43_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_17_delay_1;
    reg [16:0] redist44_frac_bSig_uid37_block_rsrvd_fix_b_2_q;
    reg [16:0] redist44_frac_bSig_uid37_block_rsrvd_fix_b_2_delay_0;
    reg [7:0] redist45_exp_bSig_uid36_block_rsrvd_fix_b_1_q;
    reg [0:0] redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_q;
    reg [0:0] redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_delay_0;
    reg [0:0] redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_delay_1;
    reg [0:0] redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_delay_2;
    reg [0:0] redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_q;
    reg [0:0] redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_delay_0;
    reg [0:0] redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_delay_1;
    reg [0:0] redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_delay_2;
    reg [0:0] redist48_fracXIsZero_uid26_block_rsrvd_fix_q_7_q;
    reg [0:0] redist49_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_2_q;
    reg [0:0] redist50_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_5_q;
    reg [0:0] redist50_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_5_delay_0;
    reg [0:0] redist50_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_5_delay_1;
    reg [7:0] redist52_exp_aSig_uid22_block_rsrvd_fix_b_1_q;
    reg [0:0] redist54_sigY_uid12_block_rsrvd_fix_b_1_q;
    reg [7:0] redist55_expY_uid11_block_rsrvd_fix_b_1_q;
    reg [16:0] redist56_fracY_uid10_block_rsrvd_fix_b_1_q;
    reg [25:0] redist57_in_0_in_0_1_q;
    reg [16:0] redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3_inputreg0_q;
    reg [21:0] redist28_fracGRS_uid85_block_rsrvd_fix_q_5_inputreg0_q;
    reg [16:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_inputreg0_q;
    reg [16:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_outputreg0_q;
    wire redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_reset0;
    wire [16:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_ia;
    wire [1:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_aa;
    wire [1:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_ab;
    wire [16:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_iq;
    wire [16:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_q;
    wire [1:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_rdcnt_q;
    (* preserve *) reg [1:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_rdcnt_i;
    reg [1:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_wraddr_q;
    wire [2:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_last_q;
    wire [2:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_cmp_b;
    wire [0:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_cmp_q;
    (* dont_merge *) reg [0:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_cmpReg_q;
    wire [0:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_notEnable_q;
    wire [0:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_nor_q;
    (* dont_merge *) reg [0:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_sticky_ena_q;
    wire [0:0] redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_enaAnd_q;
    reg [7:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_inputreg0_q;
    reg [7:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_outputreg0_q;
    wire redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_reset0;
    wire [7:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_ia;
    wire [3:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_aa;
    wire [3:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_ab;
    wire [7:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_iq;
    wire [7:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_q;
    wire [3:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_q;
    (* preserve *) reg [3:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_i;
    (* preserve *) reg redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_eq;
    reg [3:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_wraddr_q;
    wire [3:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_last_q;
    wire [0:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_cmp_q;
    (* dont_merge *) reg [0:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_cmpReg_q;
    wire [0:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_notEnable_q;
    wire [0:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_nor_q;
    (* dont_merge *) reg [0:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_sticky_ena_q;
    wire [0:0] redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_enaAnd_q;


    // cAmA_uid87_block_rsrvd_fix(CONSTANT,86)
    assign cAmA_uid87_block_rsrvd_fix_q = $unsigned(5'b10110);

    // zs_uid151_lzCountVal_uid86_block_rsrvd_fix(CONSTANT,150)
    assign zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q = $unsigned(16'b0000000000000000);

    // sigY_uid12_block_rsrvd_fix(BITSELECT,11)@0
    assign sigY_uid12_block_rsrvd_fix_b = $unsigned(in_1[25:25]);

    // redist54_sigY_uid12_block_rsrvd_fix_b_1(DELAY,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_sigY_uid12_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist54_sigY_uid12_block_rsrvd_fix_b_1_q <= $unsigned(sigY_uid12_block_rsrvd_fix_b);
        end
    end

    // expY_uid11_block_rsrvd_fix(BITSELECT,10)@0
    assign expY_uid11_block_rsrvd_fix_b = in_1[24:17];

    // redist55_expY_uid11_block_rsrvd_fix_b_1(DELAY,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_expY_uid11_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist55_expY_uid11_block_rsrvd_fix_b_1_q <= $unsigned(expY_uid11_block_rsrvd_fix_b);
        end
    end

    // fracY_uid10_block_rsrvd_fix(BITSELECT,9)@0
    assign fracY_uid10_block_rsrvd_fix_b = in_1[16:0];

    // redist56_fracY_uid10_block_rsrvd_fix_b_1(DELAY,308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_fracY_uid10_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist56_fracY_uid10_block_rsrvd_fix_b_1_q <= $unsigned(fracY_uid10_block_rsrvd_fix_b);
        end
    end

    // ypn_uid13_block_rsrvd_fix(BITJOIN,12)@1
    assign ypn_uid13_block_rsrvd_fix_q = {redist54_sigY_uid12_block_rsrvd_fix_b_1_q, redist55_expY_uid11_block_rsrvd_fix_b_1_q, redist56_fracY_uid10_block_rsrvd_fix_b_1_q};

    // redist57_in_0_in_0_1(DELAY,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_in_0_in_0_1_q <= '0;
        end
        else
        begin
            redist57_in_0_in_0_1_q <= $unsigned(in_0);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // expFracY_uid8_block_rsrvd_fix(BITSELECT,7)@0
    assign expFracY_uid8_block_rsrvd_fix_b = in_1[24:0];

    // expFracX_uid7_block_rsrvd_fix(BITSELECT,6)@0
    assign expFracX_uid7_block_rsrvd_fix_b = in_0[24:0];

    // xGTEy_uid9_block_rsrvd_fix(COMPARE,8)@0 + 1
    assign xGTEy_uid9_block_rsrvd_fix_a = {2'b00, expFracX_uid7_block_rsrvd_fix_b};
    assign xGTEy_uid9_block_rsrvd_fix_b = {2'b00, expFracY_uid8_block_rsrvd_fix_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            xGTEy_uid9_block_rsrvd_fix_o <= 27'b0;
        end
        else
        begin
            xGTEy_uid9_block_rsrvd_fix_o <= $unsigned(xGTEy_uid9_block_rsrvd_fix_a) - $unsigned(xGTEy_uid9_block_rsrvd_fix_b);
        end
    end
    assign xGTEy_uid9_block_rsrvd_fix_n[0] = ~ (xGTEy_uid9_block_rsrvd_fix_o[26]);

    // bSig_uid18_block_rsrvd_fix(MUX,17)@1
    assign bSig_uid18_block_rsrvd_fix_s = xGTEy_uid9_block_rsrvd_fix_n;
    always @(bSig_uid18_block_rsrvd_fix_s or redist57_in_0_in_0_1_q or ypn_uid13_block_rsrvd_fix_q)
    begin
        unique case (bSig_uid18_block_rsrvd_fix_s)
            1'b0 : bSig_uid18_block_rsrvd_fix_q = redist57_in_0_in_0_1_q;
            1'b1 : bSig_uid18_block_rsrvd_fix_q = ypn_uid13_block_rsrvd_fix_q;
            default : bSig_uid18_block_rsrvd_fix_q = 26'b0;
        endcase
    end

    // sigB_uid52_block_rsrvd_fix(BITSELECT,51)@1
    assign sigB_uid52_block_rsrvd_fix_b = $unsigned(bSig_uid18_block_rsrvd_fix_q[25:25]);

    // redist33_sigB_uid52_block_rsrvd_fix_b_6(DELAY,285)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist33_sigB_uid52_block_rsrvd_fix_b_6 ( .xin(sigB_uid52_block_rsrvd_fix_b), .xout(redist33_sigB_uid52_block_rsrvd_fix_b_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // aSig_uid17_block_rsrvd_fix(MUX,16)@1
    assign aSig_uid17_block_rsrvd_fix_s = xGTEy_uid9_block_rsrvd_fix_n;
    always @(aSig_uid17_block_rsrvd_fix_s or ypn_uid13_block_rsrvd_fix_q or redist57_in_0_in_0_1_q)
    begin
        unique case (aSig_uid17_block_rsrvd_fix_s)
            1'b0 : aSig_uid17_block_rsrvd_fix_q = ypn_uid13_block_rsrvd_fix_q;
            1'b1 : aSig_uid17_block_rsrvd_fix_q = redist57_in_0_in_0_1_q;
            default : aSig_uid17_block_rsrvd_fix_q = 26'b0;
        endcase
    end

    // sigA_uid51_block_rsrvd_fix(BITSELECT,50)@1
    assign sigA_uid51_block_rsrvd_fix_b = $unsigned(aSig_uid17_block_rsrvd_fix_q[25:25]);

    // redist35_sigA_uid51_block_rsrvd_fix_b_6(DELAY,287)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist35_sigA_uid51_block_rsrvd_fix_b_6 ( .xin(sigA_uid51_block_rsrvd_fix_b), .xout(redist35_sigA_uid51_block_rsrvd_fix_b_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // effSub_uid53_block_rsrvd_fix(LOGICAL,52)@7
    assign effSub_uid53_block_rsrvd_fix_q = redist35_sigA_uid51_block_rsrvd_fix_b_6_q ^ redist33_sigB_uid52_block_rsrvd_fix_b_6_q;

    // exp_bSig_uid36_block_rsrvd_fix(BITSELECT,35)@1
    assign exp_bSig_uid36_block_rsrvd_fix_in = bSig_uid18_block_rsrvd_fix_q[24:0];
    assign exp_bSig_uid36_block_rsrvd_fix_b = exp_bSig_uid36_block_rsrvd_fix_in[24:17];

    // redist45_exp_bSig_uid36_block_rsrvd_fix_b_1(DELAY,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_exp_bSig_uid36_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist45_exp_bSig_uid36_block_rsrvd_fix_b_1_q <= $unsigned(exp_bSig_uid36_block_rsrvd_fix_b);
        end
    end

    // exp_aSig_uid22_block_rsrvd_fix(BITSELECT,21)@1
    assign exp_aSig_uid22_block_rsrvd_fix_in = aSig_uid17_block_rsrvd_fix_q[24:0];
    assign exp_aSig_uid22_block_rsrvd_fix_b = exp_aSig_uid22_block_rsrvd_fix_in[24:17];

    // redist52_exp_aSig_uid22_block_rsrvd_fix_b_1(DELAY,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_exp_aSig_uid22_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist52_exp_aSig_uid22_block_rsrvd_fix_b_1_q <= $unsigned(exp_aSig_uid22_block_rsrvd_fix_b);
        end
    end

    // expAmExpB_uid61_block_rsrvd_fix(SUB,60)@2 + 1
    assign expAmExpB_uid61_block_rsrvd_fix_a = {1'b0, redist52_exp_aSig_uid22_block_rsrvd_fix_b_1_q};
    assign expAmExpB_uid61_block_rsrvd_fix_b = {1'b0, redist45_exp_bSig_uid36_block_rsrvd_fix_b_1_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expAmExpB_uid61_block_rsrvd_fix_o <= 9'b0;
        end
        else
        begin
            expAmExpB_uid61_block_rsrvd_fix_o <= $unsigned(expAmExpB_uid61_block_rsrvd_fix_a) - $unsigned(expAmExpB_uid61_block_rsrvd_fix_b);
        end
    end
    assign expAmExpB_uid61_block_rsrvd_fix_q = expAmExpB_uid61_block_rsrvd_fix_o[8:0];

    // cWFP2_uid62_block_rsrvd_fix(CONSTANT,61)
    assign cWFP2_uid62_block_rsrvd_fix_q = $unsigned(5'b10011);

    // shiftedOut_uid64_block_rsrvd_fix(COMPARE,63)@3 + 1
    assign shiftedOut_uid64_block_rsrvd_fix_a = {6'b000000, cWFP2_uid62_block_rsrvd_fix_q};
    assign shiftedOut_uid64_block_rsrvd_fix_b = {2'b00, expAmExpB_uid61_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            shiftedOut_uid64_block_rsrvd_fix_o <= 11'b0;
        end
        else
        begin
            shiftedOut_uid64_block_rsrvd_fix_o <= $unsigned(shiftedOut_uid64_block_rsrvd_fix_a) - $unsigned(shiftedOut_uid64_block_rsrvd_fix_b);
        end
    end
    assign shiftedOut_uid64_block_rsrvd_fix_c[0] = shiftedOut_uid64_block_rsrvd_fix_o[10];

    // redist31_shiftedOut_uid64_block_rsrvd_fix_c_2(DELAY,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_shiftedOut_uid64_block_rsrvd_fix_c_2_q <= '0;
        end
        else
        begin
            redist31_shiftedOut_uid64_block_rsrvd_fix_c_2_q <= $unsigned(shiftedOut_uid64_block_rsrvd_fix_c);
        end
    end

    // iShiftedOut_uid68_block_rsrvd_fix(LOGICAL,67)@5
    assign iShiftedOut_uid68_block_rsrvd_fix_q = ~ (redist31_shiftedOut_uid64_block_rsrvd_fix_c_2_q);

    // rightShiftStage2Idx3_uid214_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,213)
    assign rightShiftStage2Idx3_uid214_alignmentShifter_uid65_block_rsrvd_fix_q = $unsigned(37'b0000000000000000000000000000000000000);

    // rightShiftStage2Idx2Pad32_uid212_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,211)
    assign rightShiftStage2Idx2Pad32_uid212_alignmentShifter_uid65_block_rsrvd_fix_q = $unsigned(32'b00000000000000000000000000000000);

    // rightShiftStage2Idx2Rng32_uid211_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,210)@4
    assign rightShiftStage2Idx2Rng32_uid211_alignmentShifter_uid65_block_rsrvd_fix_b = rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q[36:32];

    // rightShiftStage2Idx2_uid213_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,212)@4
    assign rightShiftStage2Idx2_uid213_alignmentShifter_uid65_block_rsrvd_fix_q = {rightShiftStage2Idx2Pad32_uid212_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage2Idx2Rng32_uid211_alignmentShifter_uid65_block_rsrvd_fix_b};

    // rightShiftStage2Idx1Rng16_uid208_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,207)@4
    assign rightShiftStage2Idx1Rng16_uid208_alignmentShifter_uid65_block_rsrvd_fix_b = rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q[36:16];

    // rightShiftStage2Idx1_uid210_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,209)@4
    assign rightShiftStage2Idx1_uid210_alignmentShifter_uid65_block_rsrvd_fix_q = {zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q, rightShiftStage2Idx1Rng16_uid208_alignmentShifter_uid65_block_rsrvd_fix_b};

    // rightShiftStage1Idx3Pad12_uid204_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,203)
    assign rightShiftStage1Idx3Pad12_uid204_alignmentShifter_uid65_block_rsrvd_fix_q = $unsigned(12'b000000000000);

    // rightShiftStage1Idx3Rng12_uid203_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,202)@4
    assign rightShiftStage1Idx3Rng12_uid203_alignmentShifter_uid65_block_rsrvd_fix_b = rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q[36:12];

    // rightShiftStage1Idx3_uid205_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,204)@4
    assign rightShiftStage1Idx3_uid205_alignmentShifter_uid65_block_rsrvd_fix_q = {rightShiftStage1Idx3Pad12_uid204_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage1Idx3Rng12_uid203_alignmentShifter_uid65_block_rsrvd_fix_b};

    // cstAllZWE_uid21_block_rsrvd_fix(CONSTANT,20)
    assign cstAllZWE_uid21_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // rightShiftStage1Idx2Rng8_uid200_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,199)@4
    assign rightShiftStage1Idx2Rng8_uid200_alignmentShifter_uid65_block_rsrvd_fix_b = rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q[36:8];

    // rightShiftStage1Idx2_uid202_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,201)@4
    assign rightShiftStage1Idx2_uid202_alignmentShifter_uid65_block_rsrvd_fix_q = {cstAllZWE_uid21_block_rsrvd_fix_q, rightShiftStage1Idx2Rng8_uid200_alignmentShifter_uid65_block_rsrvd_fix_b};

    // zs_uid165_lzCountVal_uid86_block_rsrvd_fix(CONSTANT,164)
    assign zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q = $unsigned(4'b0000);

    // rightShiftStage1Idx1Rng4_uid197_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,196)@4
    assign rightShiftStage1Idx1Rng4_uid197_alignmentShifter_uid65_block_rsrvd_fix_b = rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q[36:4];

    // rightShiftStage1Idx1_uid199_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,198)@4
    assign rightShiftStage1Idx1_uid199_alignmentShifter_uid65_block_rsrvd_fix_q = {zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q, rightShiftStage1Idx1Rng4_uid197_alignmentShifter_uid65_block_rsrvd_fix_b};

    // rightShiftStage0Idx3Pad3_uid193_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,192)
    assign rightShiftStage0Idx3Pad3_uid193_alignmentShifter_uid65_block_rsrvd_fix_q = $unsigned(3'b000);

    // rightShiftStage0Idx3Rng3_uid192_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,191)@3
    assign rightShiftStage0Idx3Rng3_uid192_alignmentShifter_uid65_block_rsrvd_fix_b = rightPaddedIn_uid66_block_rsrvd_fix_q[36:3];

    // rightShiftStage0Idx3_uid194_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,193)@3
    assign rightShiftStage0Idx3_uid194_alignmentShifter_uid65_block_rsrvd_fix_q = {rightShiftStage0Idx3Pad3_uid193_alignmentShifter_uid65_block_rsrvd_fix_q, rightShiftStage0Idx3Rng3_uid192_alignmentShifter_uid65_block_rsrvd_fix_b};

    // zs_uid171_lzCountVal_uid86_block_rsrvd_fix(CONSTANT,170)
    assign zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q = $unsigned(2'b00);

    // rightShiftStage0Idx2Rng2_uid189_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,188)@3
    assign rightShiftStage0Idx2Rng2_uid189_alignmentShifter_uid65_block_rsrvd_fix_b = rightPaddedIn_uid66_block_rsrvd_fix_q[36:2];

    // rightShiftStage0Idx2_uid191_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,190)@3
    assign rightShiftStage0Idx2_uid191_alignmentShifter_uid65_block_rsrvd_fix_q = {zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q, rightShiftStage0Idx2Rng2_uid189_alignmentShifter_uid65_block_rsrvd_fix_b};

    // rightShiftStage0Idx1Rng1_uid186_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,185)@3
    assign rightShiftStage0Idx1Rng1_uid186_alignmentShifter_uid65_block_rsrvd_fix_b = rightPaddedIn_uid66_block_rsrvd_fix_q[36:1];

    // rightShiftStage0Idx1_uid188_alignmentShifter_uid65_block_rsrvd_fix(BITJOIN,187)@3
    assign rightShiftStage0Idx1_uid188_alignmentShifter_uid65_block_rsrvd_fix_q = {GND_q, rightShiftStage0Idx1Rng1_uid186_alignmentShifter_uid65_block_rsrvd_fix_b};

    // excZ_bSig_uid18_uid38_block_rsrvd_fix(LOGICAL,37)@2 + 1
    assign excZ_bSig_uid18_uid38_block_rsrvd_fix_qi = $unsigned(redist45_exp_bSig_uid36_block_rsrvd_fix_b_1_q == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_bSig_uid18_uid38_block_rsrvd_fix_delay ( .xin(excZ_bSig_uid18_uid38_block_rsrvd_fix_qi), .xout(excZ_bSig_uid18_uid38_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // InvExpXIsZero_uid45_block_rsrvd_fix(LOGICAL,44)@3
    assign InvExpXIsZero_uid45_block_rsrvd_fix_q = ~ (excZ_bSig_uid18_uid38_block_rsrvd_fix_q);

    // cstZeroWF_uid20_block_rsrvd_fix(CONSTANT,19)
    assign cstZeroWF_uid20_block_rsrvd_fix_q = $unsigned(17'b00000000000000000);

    // frac_bSig_uid37_block_rsrvd_fix(BITSELECT,36)@1
    assign frac_bSig_uid37_block_rsrvd_fix_in = bSig_uid18_block_rsrvd_fix_q[16:0];
    assign frac_bSig_uid37_block_rsrvd_fix_b = frac_bSig_uid37_block_rsrvd_fix_in[16:0];

    // redist44_frac_bSig_uid37_block_rsrvd_fix_b_2(DELAY,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_frac_bSig_uid37_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist44_frac_bSig_uid37_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist44_frac_bSig_uid37_block_rsrvd_fix_b_2_delay_0 <= $unsigned(frac_bSig_uid37_block_rsrvd_fix_b);
            redist44_frac_bSig_uid37_block_rsrvd_fix_b_2_q <= redist44_frac_bSig_uid37_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // fracBz_uid57_block_rsrvd_fix(MUX,56)@3
    assign fracBz_uid57_block_rsrvd_fix_s = excZ_bSig_uid18_uid38_block_rsrvd_fix_q;
    always @(fracBz_uid57_block_rsrvd_fix_s or redist44_frac_bSig_uid37_block_rsrvd_fix_b_2_q or cstZeroWF_uid20_block_rsrvd_fix_q)
    begin
        unique case (fracBz_uid57_block_rsrvd_fix_s)
            1'b0 : fracBz_uid57_block_rsrvd_fix_q = redist44_frac_bSig_uid37_block_rsrvd_fix_b_2_q;
            1'b1 : fracBz_uid57_block_rsrvd_fix_q = cstZeroWF_uid20_block_rsrvd_fix_q;
            default : fracBz_uid57_block_rsrvd_fix_q = 17'b0;
        endcase
    end

    // oFracB_uid60_block_rsrvd_fix(BITJOIN,59)@3
    assign oFracB_uid60_block_rsrvd_fix_q = {InvExpXIsZero_uid45_block_rsrvd_fix_q, fracBz_uid57_block_rsrvd_fix_q};

    // padConst_uid65_block_rsrvd_fix(CONSTANT,64)
    assign padConst_uid65_block_rsrvd_fix_q = $unsigned(19'b0000000000000000000);

    // rightPaddedIn_uid66_block_rsrvd_fix(BITJOIN,65)@3
    assign rightPaddedIn_uid66_block_rsrvd_fix_q = {oFracB_uid60_block_rsrvd_fix_q, padConst_uid65_block_rsrvd_fix_q};

    // rightShiftStageSel0Dto0_uid195_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,194)@3
    assign rightShiftStageSel0Dto0_uid195_alignmentShifter_uid65_block_rsrvd_fix_in = expAmExpB_uid61_block_rsrvd_fix_q[1:0];
    assign rightShiftStageSel0Dto0_uid195_alignmentShifter_uid65_block_rsrvd_fix_b = rightShiftStageSel0Dto0_uid195_alignmentShifter_uid65_block_rsrvd_fix_in[1:0];

    // rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix(MUX,195)@3 + 1
    assign rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_s = rightShiftStageSel0Dto0_uid195_alignmentShifter_uid65_block_rsrvd_fix_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q <= 37'b0;
        end
        else
        begin
            unique case (rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_s)
                2'b00 : rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q <= rightPaddedIn_uid66_block_rsrvd_fix_q;
                2'b01 : rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx1_uid188_alignmentShifter_uid65_block_rsrvd_fix_q;
                2'b10 : rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx2_uid191_alignmentShifter_uid65_block_rsrvd_fix_q;
                2'b11 : rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage0Idx3_uid194_alignmentShifter_uid65_block_rsrvd_fix_q;
                default : rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q <= 37'b0;
            endcase
        end
    end

    // rightShiftStageSel2Dto2_uid206_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,205)@3
    assign rightShiftStageSel2Dto2_uid206_alignmentShifter_uid65_block_rsrvd_fix_in = expAmExpB_uid61_block_rsrvd_fix_q[3:0];
    assign rightShiftStageSel2Dto2_uid206_alignmentShifter_uid65_block_rsrvd_fix_b = rightShiftStageSel2Dto2_uid206_alignmentShifter_uid65_block_rsrvd_fix_in[3:2];

    // redist10_rightShiftStageSel2Dto2_uid206_alignmentShifter_uid65_block_rsrvd_fix_b_1(DELAY,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_rightShiftStageSel2Dto2_uid206_alignmentShifter_uid65_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist10_rightShiftStageSel2Dto2_uid206_alignmentShifter_uid65_block_rsrvd_fix_b_1_q <= $unsigned(rightShiftStageSel2Dto2_uid206_alignmentShifter_uid65_block_rsrvd_fix_b);
        end
    end

    // rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix(MUX,206)@4
    assign rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_s = redist10_rightShiftStageSel2Dto2_uid206_alignmentShifter_uid65_block_rsrvd_fix_b_1_q;
    always @(rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_s or rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q or rightShiftStage1Idx1_uid199_alignmentShifter_uid65_block_rsrvd_fix_q or rightShiftStage1Idx2_uid202_alignmentShifter_uid65_block_rsrvd_fix_q or rightShiftStage1Idx3_uid205_alignmentShifter_uid65_block_rsrvd_fix_q)
    begin
        unique case (rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_s)
            2'b00 : rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q = rightShiftStage0_uid196_alignmentShifter_uid65_block_rsrvd_fix_q;
            2'b01 : rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q = rightShiftStage1Idx1_uid199_alignmentShifter_uid65_block_rsrvd_fix_q;
            2'b10 : rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q = rightShiftStage1Idx2_uid202_alignmentShifter_uid65_block_rsrvd_fix_q;
            2'b11 : rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q = rightShiftStage1Idx3_uid205_alignmentShifter_uid65_block_rsrvd_fix_q;
            default : rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q = 37'b0;
        endcase
    end

    // rightShiftStageSel4Dto4_uid215_alignmentShifter_uid65_block_rsrvd_fix(BITSELECT,214)@3
    assign rightShiftStageSel4Dto4_uid215_alignmentShifter_uid65_block_rsrvd_fix_in = expAmExpB_uid61_block_rsrvd_fix_q[5:0];
    assign rightShiftStageSel4Dto4_uid215_alignmentShifter_uid65_block_rsrvd_fix_b = rightShiftStageSel4Dto4_uid215_alignmentShifter_uid65_block_rsrvd_fix_in[5:4];

    // redist9_rightShiftStageSel4Dto4_uid215_alignmentShifter_uid65_block_rsrvd_fix_b_1(DELAY,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_rightShiftStageSel4Dto4_uid215_alignmentShifter_uid65_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist9_rightShiftStageSel4Dto4_uid215_alignmentShifter_uid65_block_rsrvd_fix_b_1_q <= $unsigned(rightShiftStageSel4Dto4_uid215_alignmentShifter_uid65_block_rsrvd_fix_b);
        end
    end

    // rightShiftStage2_uid216_alignmentShifter_uid65_block_rsrvd_fix(MUX,215)@4 + 1
    assign rightShiftStage2_uid216_alignmentShifter_uid65_block_rsrvd_fix_s = redist9_rightShiftStageSel4Dto4_uid215_alignmentShifter_uid65_block_rsrvd_fix_b_1_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage2_uid216_alignmentShifter_uid65_block_rsrvd_fix_q <= 37'b0;
        end
        else
        begin
            unique case (rightShiftStage2_uid216_alignmentShifter_uid65_block_rsrvd_fix_s)
                2'b00 : rightShiftStage2_uid216_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage1_uid207_alignmentShifter_uid65_block_rsrvd_fix_q;
                2'b01 : rightShiftStage2_uid216_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage2Idx1_uid210_alignmentShifter_uid65_block_rsrvd_fix_q;
                2'b10 : rightShiftStage2_uid216_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage2Idx2_uid213_alignmentShifter_uid65_block_rsrvd_fix_q;
                2'b11 : rightShiftStage2_uid216_alignmentShifter_uid65_block_rsrvd_fix_q <= rightShiftStage2Idx3_uid214_alignmentShifter_uid65_block_rsrvd_fix_q;
                default : rightShiftStage2_uid216_alignmentShifter_uid65_block_rsrvd_fix_q <= 37'b0;
            endcase
        end
    end

    // wIntCst_uid184_alignmentShifter_uid65_block_rsrvd_fix(CONSTANT,183)
    assign wIntCst_uid184_alignmentShifter_uid65_block_rsrvd_fix_q = $unsigned(6'b100101);

    // shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix(COMPARE,184)@3 + 1
    assign shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_a = {2'b00, expAmExpB_uid61_block_rsrvd_fix_q};
    assign shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_b = {5'b00000, wIntCst_uid184_alignmentShifter_uid65_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_o <= 11'b0;
        end
        else
        begin
            shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_o <= $unsigned(shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_a) - $unsigned(shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_b);
        end
    end
    assign shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_n[0] = ~ (shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_o[10]);

    // redist11_shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_n_2(DELAY,263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_n_2_q <= '0;
        end
        else
        begin
            redist11_shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_n_2_q <= $unsigned(shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_n);
        end
    end

    // r_uid218_alignmentShifter_uid65_block_rsrvd_fix(MUX,217)@5
    assign r_uid218_alignmentShifter_uid65_block_rsrvd_fix_s = redist11_shiftedOut_uid185_alignmentShifter_uid65_block_rsrvd_fix_n_2_q;
    always @(r_uid218_alignmentShifter_uid65_block_rsrvd_fix_s or rightShiftStage2_uid216_alignmentShifter_uid65_block_rsrvd_fix_q or rightShiftStage2Idx3_uid214_alignmentShifter_uid65_block_rsrvd_fix_q)
    begin
        unique case (r_uid218_alignmentShifter_uid65_block_rsrvd_fix_s)
            1'b0 : r_uid218_alignmentShifter_uid65_block_rsrvd_fix_q = rightShiftStage2_uid216_alignmentShifter_uid65_block_rsrvd_fix_q;
            1'b1 : r_uid218_alignmentShifter_uid65_block_rsrvd_fix_q = rightShiftStage2Idx3_uid214_alignmentShifter_uid65_block_rsrvd_fix_q;
            default : r_uid218_alignmentShifter_uid65_block_rsrvd_fix_q = 37'b0;
        endcase
    end

    // alignFracBPostShiftOut_uid69_block_rsrvd_fix(LOGICAL,68)@5 + 1
    assign alignFracBPostShiftOut_uid69_block_rsrvd_fix_b = $unsigned({{36{iShiftedOut_uid68_block_rsrvd_fix_q[0]}}, iShiftedOut_uid68_block_rsrvd_fix_q});
    assign alignFracBPostShiftOut_uid69_block_rsrvd_fix_qi = r_uid218_alignmentShifter_uid65_block_rsrvd_fix_q & alignFracBPostShiftOut_uid69_block_rsrvd_fix_b;
    dspba_delay_ver #( .width(37), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    alignFracBPostShiftOut_uid69_block_rsrvd_fix_delay ( .xin(alignFracBPostShiftOut_uid69_block_rsrvd_fix_qi), .xout(alignFracBPostShiftOut_uid69_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // stickyBits_uid70_block_rsrvd_fix_merged_bit_select(BITSELECT,247)@6
    assign stickyBits_uid70_block_rsrvd_fix_merged_bit_select_b = alignFracBPostShiftOut_uid69_block_rsrvd_fix_q[16:0];
    assign stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c = alignFracBPostShiftOut_uid69_block_rsrvd_fix_q[36:17];

    // redist8_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1(DELAY,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist8_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // fracBAddOp_uid81_block_rsrvd_fix(BITJOIN,80)@7
    assign fracBAddOp_uid81_block_rsrvd_fix_q = {GND_q, redist8_stickyBits_uid70_block_rsrvd_fix_merged_bit_select_c_1_q};

    // fracBAddOpPostXor_uid82_block_rsrvd_fix(LOGICAL,81)@7 + 1
    assign fracBAddOpPostXor_uid82_block_rsrvd_fix_b = $unsigned({{20{effSub_uid53_block_rsrvd_fix_q[0]}}, effSub_uid53_block_rsrvd_fix_q});
    assign fracBAddOpPostXor_uid82_block_rsrvd_fix_qi = fracBAddOp_uid81_block_rsrvd_fix_q ^ fracBAddOpPostXor_uid82_block_rsrvd_fix_b;
    dspba_delay_ver #( .width(21), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracBAddOpPostXor_uid82_block_rsrvd_fix_delay ( .xin(fracBAddOpPostXor_uid82_block_rsrvd_fix_qi), .xout(fracBAddOpPostXor_uid82_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // zocst_uid77_block_rsrvd_fix(CONSTANT,76)
    assign zocst_uid77_block_rsrvd_fix_q = $unsigned(2'b01);

    // redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_notEnable(LOGICAL,320)
    assign redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_nor(LOGICAL,321)
    assign redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_nor_q = ~ (redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_notEnable_q | redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_sticky_ena_q);

    // redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_last(CONSTANT,317)
    assign redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_last_q = $unsigned(3'b010);

    // redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_cmp(LOGICAL,318)
    assign redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_cmp_b = {1'b0, redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_rdcnt_q};
    assign redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_cmp_q = $unsigned(redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_last_q == redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_cmp_b ? 1'b1 : 1'b0);

    // redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_cmpReg(REG,319)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_cmpReg_q <= $unsigned(redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_cmp_q);
        end
    end

    // redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_sticky_ena(REG,322)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_nor_q == 1'b1)
        begin
            redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_sticky_ena_q <= $unsigned(redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_cmpReg_q);
        end
    end

    // redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_enaAnd(LOGICAL,323)
    assign redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_enaAnd_q = redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_sticky_ena_q & VCC_q;

    // redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_rdcnt(COUNTER,315)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_rdcnt_i <= $unsigned(redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_rdcnt_q = redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_rdcnt_i[1:0];

    // frac_aSig_uid23_block_rsrvd_fix(BITSELECT,22)@1
    assign frac_aSig_uid23_block_rsrvd_fix_in = aSig_uid17_block_rsrvd_fix_q[16:0];
    assign frac_aSig_uid23_block_rsrvd_fix_b = frac_aSig_uid23_block_rsrvd_fix_in[16:0];

    // redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_inputreg0(DELAY,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_inputreg0_q <= '0;
        end
        else
        begin
            redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_inputreg0_q <= $unsigned(frac_aSig_uid23_block_rsrvd_fix_b);
        end
    end

    // redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_wraddr(REG,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_wraddr_q <= $unsigned(redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_rdcnt_q);
        end
    end

    // redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem(DUALMEM,314)
    assign redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_ia = $unsigned(redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_inputreg0_q);
    assign redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_aa = redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_wraddr_q;
    assign redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_ab = redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_rdcnt_q;
    assign redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(17),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(17),
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
    ) redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_dmem (
        .clocken1(redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_reset0),
        .clock1(clock),
        .address_a(redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_aa),
        .data_a(redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_ab),
        .q_b(redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_iq),
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
    assign redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_q = redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_iq[16:0];

    // redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_outputreg0(DELAY,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_outputreg0_q <= '0;
        end
        else
        begin
            redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_outputreg0_q <= $unsigned(redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_mem_q);
        end
    end

    // cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix(LOGICAL,71)@6 + 1
    assign cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_qi = $unsigned(stickyBits_uid70_block_rsrvd_fix_merged_bit_select_b == cstZeroWF_uid20_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_delay ( .xin(cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_qi), .xout(cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // effSubInvSticky_uid75_block_rsrvd_fix(LOGICAL,74)@7 + 1
    assign effSubInvSticky_uid75_block_rsrvd_fix_qi = effSub_uid53_block_rsrvd_fix_q & cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    effSubInvSticky_uid75_block_rsrvd_fix_delay ( .xin(effSubInvSticky_uid75_block_rsrvd_fix_qi), .xout(effSubInvSticky_uid75_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracAAddOp_uid78_block_rsrvd_fix(BITJOIN,77)@8
    assign fracAAddOp_uid78_block_rsrvd_fix_q = {zocst_uid77_block_rsrvd_fix_q, redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_outputreg0_q, GND_q, effSubInvSticky_uid75_block_rsrvd_fix_q};

    // fracAddResult_uid83_block_rsrvd_fix(ADD,82)@8
    assign fracAddResult_uid83_block_rsrvd_fix_a = {1'b0, fracAAddOp_uid78_block_rsrvd_fix_q};
    assign fracAddResult_uid83_block_rsrvd_fix_b = {1'b0, fracBAddOpPostXor_uid82_block_rsrvd_fix_q};
    assign fracAddResult_uid83_block_rsrvd_fix_o = $unsigned(fracAddResult_uid83_block_rsrvd_fix_a) + $unsigned(fracAddResult_uid83_block_rsrvd_fix_b);
    assign fracAddResult_uid83_block_rsrvd_fix_q = fracAddResult_uid83_block_rsrvd_fix_o[21:0];

    // rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix(BITSELECT,83)@8
    assign rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_in = fracAddResult_uid83_block_rsrvd_fix_q[20:0];
    assign rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b = rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_in[20:0];

    // redist29_rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b_1(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist29_rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b_1_q <= $unsigned(rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b);
        end
    end

    // invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix(LOGICAL,72)@7 + 1
    assign invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_qi = ~ (cmpEQ_stickyBits_cZwF_uid72_block_rsrvd_fix_q);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_delay ( .xin(invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_qi), .xout(invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_q_2(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist30_invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_q_2_q <= $unsigned(invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_q);
        end
    end

    // fracGRS_uid85_block_rsrvd_fix(BITJOIN,84)@9
    assign fracGRS_uid85_block_rsrvd_fix_q = {redist29_rangeFracAddResultMwfp3Dto0_uid84_block_rsrvd_fix_b_1_q, redist30_invCmpEQ_stickyBits_cZwF_uid73_block_rsrvd_fix_q_2_q};

    // rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix(BITSELECT,151)@9
    assign rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b = fracGRS_uid85_block_rsrvd_fix_q[21:6];

    // vCount_uid153_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,152)@9 + 1
    assign vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_qi = $unsigned(rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b == zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_delay ( .xin(vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_qi), .xout(vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5(DELAY,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_delay_2 <= '0;
            redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_delay_0 <= $unsigned(vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q);
            redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_delay_1 <= redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_delay_0;
            redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_delay_2 <= redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_delay_1;
            redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_q <= redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_delay_2;
        end
    end

    // redist27_fracGRS_uid85_block_rsrvd_fix_q_1(DELAY,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_fracGRS_uid85_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist27_fracGRS_uid85_block_rsrvd_fix_q_1_q <= $unsigned(fracGRS_uid85_block_rsrvd_fix_q);
        end
    end

    // vStage_uid155_lzCountVal_uid86_block_rsrvd_fix(BITSELECT,154)@10
    assign vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_in = redist27_fracGRS_uid85_block_rsrvd_fix_q_1_q[5:0];
    assign vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b = vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_in[5:0];

    // mO_uid154_lzCountVal_uid86_block_rsrvd_fix(CONSTANT,153)
    assign mO_uid154_lzCountVal_uid86_block_rsrvd_fix_q = $unsigned(10'b1111111111);

    // cStage_uid156_lzCountVal_uid86_block_rsrvd_fix(BITJOIN,155)@10
    assign cStage_uid156_lzCountVal_uid86_block_rsrvd_fix_q = {vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b, mO_uid154_lzCountVal_uid86_block_rsrvd_fix_q};

    // redist17_rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b_1(DELAY,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist17_rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b_1_q <= $unsigned(rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b);
        end
    end

    // vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix(MUX,157)@10 + 1
    assign vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_s = vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q <= 16'b0;
        end
        else
        begin
            unique case (vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_s)
                1'b0 : vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q <= redist17_rVStage_uid152_lzCountVal_uid86_block_rsrvd_fix_b_1_q;
                1'b1 : vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q <= cStage_uid156_lzCountVal_uid86_block_rsrvd_fix_q;
                default : vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q <= 16'b0;
            endcase
        end
    end

    // rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select(BITSELECT,248)@11
    assign rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b = vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q[15:8];
    assign rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c = vStagei_uid158_lzCountVal_uid86_block_rsrvd_fix_q[7:0];

    // vCount_uid161_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,160)@11 + 1
    assign vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_qi = $unsigned(rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_delay ( .xin(vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_qi), .xout(vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist14_vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q_3(DELAY,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist14_vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist14_vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q_3_delay_0 <= $unsigned(vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q);
            redist14_vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q_3_q <= redist14_vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // redist7_rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1(DELAY,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist7_rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // redist6_rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1(DELAY,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist6_rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix(MUX,163)@12
    assign vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_s = vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q;
    always @(vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_s or redist6_rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q or redist7_rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_s)
            1'b0 : vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q = redist6_rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q = redist7_rVStage_uid160_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q;
            default : vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select(BITSELECT,249)@12
    assign rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b = vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q[7:4];
    assign rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c = vStagei_uid164_lzCountVal_uid86_block_rsrvd_fix_q[3:0];

    // vCount_uid167_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,166)@12 + 1
    assign vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_qi = $unsigned(rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b == zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_delay ( .xin(vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_qi), .xout(vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q_2(DELAY,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist13_vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q_2_q <= $unsigned(vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q);
        end
    end

    // redist5_rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist5_rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // redist4_rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist4_rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix(MUX,169)@13
    assign vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_s = vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q;
    always @(vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_s or redist4_rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q or redist5_rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_s)
            1'b0 : vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q = redist4_rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q = redist5_rVStage_uid166_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q;
            default : vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q = 4'b0;
        endcase
    end

    // rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select(BITSELECT,250)@13
    assign rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b = vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q[3:2];
    assign rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c = vStagei_uid170_lzCountVal_uid86_block_rsrvd_fix_q[1:0];

    // vCount_uid173_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,172)@13 + 1
    assign vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_qi = $unsigned(rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b == zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_delay ( .xin(vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_qi), .xout(vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1(DELAY,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist3_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // redist2_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1(DELAY,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist2_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix(MUX,175)@14
    assign vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_s = vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_q;
    always @(vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_s or redist2_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q or redist3_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q)
    begin
        unique case (vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_s)
            1'b0 : vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q = redist2_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_b_1_q;
            1'b1 : vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q = redist3_rVStage_uid172_lzCountVal_uid86_block_rsrvd_fix_merged_bit_select_c_1_q;
            default : vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q = 2'b0;
        endcase
    end

    // rVStage_uid178_lzCountVal_uid86_block_rsrvd_fix(BITSELECT,177)@14
    assign rVStage_uid178_lzCountVal_uid86_block_rsrvd_fix_b = vStagei_uid176_lzCountVal_uid86_block_rsrvd_fix_q[1:1];

    // vCount_uid179_lzCountVal_uid86_block_rsrvd_fix(LOGICAL,178)@14
    assign vCount_uid179_lzCountVal_uid86_block_rsrvd_fix_q = $unsigned(rVStage_uid178_lzCountVal_uid86_block_rsrvd_fix_b == GND_q ? 1'b1 : 1'b0);

    // r_uid180_lzCountVal_uid86_block_rsrvd_fix(BITJOIN,179)@14
    assign r_uid180_lzCountVal_uid86_block_rsrvd_fix_q = {redist16_vCount_uid153_lzCountVal_uid86_block_rsrvd_fix_q_5_q, redist14_vCount_uid161_lzCountVal_uid86_block_rsrvd_fix_q_3_q, redist13_vCount_uid167_lzCountVal_uid86_block_rsrvd_fix_q_2_q, vCount_uid173_lzCountVal_uid86_block_rsrvd_fix_q, vCount_uid179_lzCountVal_uid86_block_rsrvd_fix_q};

    // redist12_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1(DELAY,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist12_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1_q <= $unsigned(r_uid180_lzCountVal_uid86_block_rsrvd_fix_q);
        end
    end

    // aMinusA_uid88_block_rsrvd_fix(LOGICAL,87)@15 + 1
    assign aMinusA_uid88_block_rsrvd_fix_qi = $unsigned(redist12_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1_q == cAmA_uid87_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    aMinusA_uid88_block_rsrvd_fix_delay ( .xin(aMinusA_uid88_block_rsrvd_fix_qi), .xout(aMinusA_uid88_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invAMinusA_uid130_block_rsrvd_fix(LOGICAL,129)@16
    assign invAMinusA_uid130_block_rsrvd_fix_q = ~ (aMinusA_uid88_block_rsrvd_fix_q);

    // redist36_sigA_uid51_block_rsrvd_fix_b_15(DELAY,288)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist36_sigA_uid51_block_rsrvd_fix_b_15 ( .xin(redist35_sigA_uid51_block_rsrvd_fix_b_6_q), .xout(redist36_sigA_uid51_block_rsrvd_fix_b_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllOWE_uid19_block_rsrvd_fix(CONSTANT,18)
    assign cstAllOWE_uid19_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // expXIsMax_uid39_block_rsrvd_fix(LOGICAL,38)@2 + 1
    assign expXIsMax_uid39_block_rsrvd_fix_qi = $unsigned(redist45_exp_bSig_uid36_block_rsrvd_fix_b_1_q == cstAllOWE_uid19_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid39_block_rsrvd_fix_delay ( .xin(expXIsMax_uid39_block_rsrvd_fix_qi), .xout(expXIsMax_uid39_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist41_expXIsMax_uid39_block_rsrvd_fix_q_13(DELAY,293)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist41_expXIsMax_uid39_block_rsrvd_fix_q_13 ( .xin(expXIsMax_uid39_block_rsrvd_fix_q), .xout(redist41_expXIsMax_uid39_block_rsrvd_fix_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExpXIsMax_uid44_block_rsrvd_fix(LOGICAL,43)@15
    assign invExpXIsMax_uid44_block_rsrvd_fix_q = ~ (redist41_expXIsMax_uid39_block_rsrvd_fix_q_13_q);

    // redist37_InvExpXIsZero_uid45_block_rsrvd_fix_q_12(DELAY,289)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist37_InvExpXIsZero_uid45_block_rsrvd_fix_q_12 ( .xin(InvExpXIsZero_uid45_block_rsrvd_fix_q), .xout(redist37_InvExpXIsZero_uid45_block_rsrvd_fix_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excR_bSig_uid46_block_rsrvd_fix(LOGICAL,45)@15 + 1
    assign excR_bSig_uid46_block_rsrvd_fix_qi = redist37_InvExpXIsZero_uid45_block_rsrvd_fix_q_12_q & invExpXIsMax_uid44_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excR_bSig_uid46_block_rsrvd_fix_delay ( .xin(excR_bSig_uid46_block_rsrvd_fix_qi), .xout(excR_bSig_uid46_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_notEnable(LOGICAL,332)
    assign redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_nor(LOGICAL,333)
    assign redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_nor_q = ~ (redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_notEnable_q | redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_sticky_ena_q);

    // redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_last(CONSTANT,329)
    assign redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_last_q = $unsigned(4'b0111);

    // redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_cmp(LOGICAL,330)
    assign redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_cmp_q = $unsigned(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_last_q == redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_q ? 1'b1 : 1'b0);

    // redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_cmpReg(REG,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_cmpReg_q <= $unsigned(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_cmp_q);
        end
    end

    // redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_sticky_ena(REG,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_nor_q == 1'b1)
        begin
            redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_sticky_ena_q <= $unsigned(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_cmpReg_q);
        end
    end

    // redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_enaAnd(LOGICAL,335)
    assign redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_enaAnd_q = redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_sticky_ena_q & VCC_q;

    // redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt(COUNTER,327)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_i <= 4'd0;
            redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_i == 4'd7)
            begin
                redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_eq <= 1'b0;
            end
            if (redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_eq == 1'b1)
            begin
                redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_i <= $unsigned(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_i <= $unsigned(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_q = redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_i[3:0];

    // redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_inputreg0(DELAY,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_inputreg0_q <= '0;
        end
        else
        begin
            redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_inputreg0_q <= $unsigned(redist52_exp_aSig_uid22_block_rsrvd_fix_b_1_q);
        end
    end

    // redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_wraddr(REG,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_wraddr_q <= $unsigned(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_q);
        end
    end

    // redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem(DUALMEM,326)
    assign redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_ia = $unsigned(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_inputreg0_q);
    assign redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_aa = redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_wraddr_q;
    assign redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_ab = redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_rdcnt_q;
    assign redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(4),
        .numwords_a(9),
        .width_b(8),
        .widthad_b(4),
        .numwords_b(9),
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
    ) redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_dmem (
        .clocken1(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_reset0),
        .clock1(clock),
        .address_a(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_aa),
        .data_a(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_ab),
        .q_b(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_iq),
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
    assign redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_q = redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_iq[7:0];

    // redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_outputreg0(DELAY,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_outputreg0_q <= '0;
        end
        else
        begin
            redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_outputreg0_q <= $unsigned(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_mem_q);
        end
    end

    // expXIsMax_uid25_block_rsrvd_fix(LOGICAL,24)@14 + 1
    assign expXIsMax_uid25_block_rsrvd_fix_qi = $unsigned(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_outputreg0_q == cstAllOWE_uid19_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid25_block_rsrvd_fix_delay ( .xin(expXIsMax_uid25_block_rsrvd_fix_qi), .xout(expXIsMax_uid25_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExpXIsMax_uid30_block_rsrvd_fix(LOGICAL,29)@15
    assign invExpXIsMax_uid30_block_rsrvd_fix_q = ~ (expXIsMax_uid25_block_rsrvd_fix_q);

    // excZ_aSig_uid17_uid24_block_rsrvd_fix(LOGICAL,23)@14 + 1
    assign excZ_aSig_uid17_uid24_block_rsrvd_fix_qi = $unsigned(redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_outputreg0_q == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_aSig_uid17_uid24_block_rsrvd_fix_delay ( .xin(excZ_aSig_uid17_uid24_block_rsrvd_fix_qi), .xout(excZ_aSig_uid17_uid24_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // InvExpXIsZero_uid31_block_rsrvd_fix(LOGICAL,30)@15
    assign InvExpXIsZero_uid31_block_rsrvd_fix_q = ~ (excZ_aSig_uid17_uid24_block_rsrvd_fix_q);

    // excR_aSig_uid32_block_rsrvd_fix(LOGICAL,31)@15 + 1
    assign excR_aSig_uid32_block_rsrvd_fix_qi = InvExpXIsZero_uid31_block_rsrvd_fix_q & invExpXIsMax_uid30_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excR_aSig_uid32_block_rsrvd_fix_delay ( .xin(excR_aSig_uid32_block_rsrvd_fix_qi), .xout(excR_aSig_uid32_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // signRReg_uid131_block_rsrvd_fix(LOGICAL,130)@16 + 1
    assign signRReg_uid131_block_rsrvd_fix_qi = excR_aSig_uid32_block_rsrvd_fix_q & excR_bSig_uid46_block_rsrvd_fix_q & redist36_sigA_uid51_block_rsrvd_fix_b_15_q & invAMinusA_uid130_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signRReg_uid131_block_rsrvd_fix_delay ( .xin(signRReg_uid131_block_rsrvd_fix_qi), .xout(signRReg_uid131_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist34_sigB_uid52_block_rsrvd_fix_b_15(DELAY,286)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist34_sigB_uid52_block_rsrvd_fix_b_15 ( .xin(redist33_sigB_uid52_block_rsrvd_fix_b_6_q), .xout(redist34_sigB_uid52_block_rsrvd_fix_b_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist42_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_14(DELAY,294)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist42_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_14 ( .xin(excZ_bSig_uid18_uid38_block_rsrvd_fix_q), .xout(redist42_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist49_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_2(DELAY,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist49_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_2_q <= $unsigned(excZ_aSig_uid17_uid24_block_rsrvd_fix_q);
        end
    end

    // excAZBZSigASigB_uid135_block_rsrvd_fix(LOGICAL,134)@16
    assign excAZBZSigASigB_uid135_block_rsrvd_fix_q = redist49_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_2_q & redist42_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_14_q & redist36_sigA_uid51_block_rsrvd_fix_b_15_q & redist34_sigB_uid52_block_rsrvd_fix_b_15_q;

    // excBZARSigA_uid136_block_rsrvd_fix(LOGICAL,135)@16
    assign excBZARSigA_uid136_block_rsrvd_fix_q = redist42_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_14_q & excR_aSig_uid32_block_rsrvd_fix_q & redist36_sigA_uid51_block_rsrvd_fix_b_15_q;

    // signRZero_uid137_block_rsrvd_fix(LOGICAL,136)@16 + 1
    assign signRZero_uid137_block_rsrvd_fix_qi = excBZARSigA_uid136_block_rsrvd_fix_q | excAZBZSigASigB_uid135_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signRZero_uid137_block_rsrvd_fix_delay ( .xin(signRZero_uid137_block_rsrvd_fix_qi), .xout(signRZero_uid137_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsZero_uid40_block_rsrvd_fix(LOGICAL,39)@3 + 1
    assign fracXIsZero_uid40_block_rsrvd_fix_qi = $unsigned(cstZeroWF_uid20_block_rsrvd_fix_q == redist44_frac_bSig_uid37_block_rsrvd_fix_b_2_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid40_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid40_block_rsrvd_fix_qi), .xout(fracXIsZero_uid40_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist40_fracXIsZero_uid40_block_rsrvd_fix_q_12(DELAY,292)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist40_fracXIsZero_uid40_block_rsrvd_fix_q_12 ( .xin(fracXIsZero_uid40_block_rsrvd_fix_q), .xout(redist40_fracXIsZero_uid40_block_rsrvd_fix_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excI_bSig_uid42_block_rsrvd_fix(LOGICAL,41)@15 + 1
    assign excI_bSig_uid42_block_rsrvd_fix_qi = redist41_expXIsMax_uid39_block_rsrvd_fix_q_13_q & redist40_fracXIsZero_uid40_block_rsrvd_fix_q_12_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_bSig_uid42_block_rsrvd_fix_delay ( .xin(excI_bSig_uid42_block_rsrvd_fix_qi), .xout(excI_bSig_uid42_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sigBBInf_uid132_block_rsrvd_fix(LOGICAL,131)@16
    assign sigBBInf_uid132_block_rsrvd_fix_q = redist34_sigB_uid52_block_rsrvd_fix_b_15_q & excI_bSig_uid42_block_rsrvd_fix_q;

    // fracXIsZero_uid26_block_rsrvd_fix(LOGICAL,25)@8 + 1
    assign fracXIsZero_uid26_block_rsrvd_fix_qi = $unsigned(cstZeroWF_uid20_block_rsrvd_fix_q == redist51_frac_aSig_uid23_block_rsrvd_fix_b_7_outputreg0_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid26_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid26_block_rsrvd_fix_qi), .xout(fracXIsZero_uid26_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist48_fracXIsZero_uid26_block_rsrvd_fix_q_7(DELAY,300)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist48_fracXIsZero_uid26_block_rsrvd_fix_q_7 ( .xin(fracXIsZero_uid26_block_rsrvd_fix_q), .xout(redist48_fracXIsZero_uid26_block_rsrvd_fix_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excI_aSig_uid28_block_rsrvd_fix(LOGICAL,27)@15 + 1
    assign excI_aSig_uid28_block_rsrvd_fix_qi = expXIsMax_uid25_block_rsrvd_fix_q & redist48_fracXIsZero_uid26_block_rsrvd_fix_q_7_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_aSig_uid28_block_rsrvd_fix_delay ( .xin(excI_aSig_uid28_block_rsrvd_fix_qi), .xout(excI_aSig_uid28_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sigAAInf_uid133_block_rsrvd_fix(LOGICAL,132)@16
    assign sigAAInf_uid133_block_rsrvd_fix_q = redist36_sigA_uid51_block_rsrvd_fix_b_15_q & excI_aSig_uid28_block_rsrvd_fix_q;

    // signRInf_uid134_block_rsrvd_fix(LOGICAL,133)@16 + 1
    assign signRInf_uid134_block_rsrvd_fix_qi = sigAAInf_uid133_block_rsrvd_fix_q | sigBBInf_uid132_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signRInf_uid134_block_rsrvd_fix_delay ( .xin(signRInf_uid134_block_rsrvd_fix_qi), .xout(signRInf_uid134_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // signRInfRZRReg_uid138_block_rsrvd_fix(LOGICAL,137)@17 + 1
    assign signRInfRZRReg_uid138_block_rsrvd_fix_qi = signRInf_uid134_block_rsrvd_fix_q | signRZero_uid137_block_rsrvd_fix_q | signRReg_uid131_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signRInfRZRReg_uid138_block_rsrvd_fix_delay ( .xin(signRInfRZRReg_uid138_block_rsrvd_fix_qi), .xout(signRInfRZRReg_uid138_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_signRInfRZRReg_uid138_block_rsrvd_fix_q_4(DELAY,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_signRInfRZRReg_uid138_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist18_signRInfRZRReg_uid138_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist18_signRInfRZRReg_uid138_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist18_signRInfRZRReg_uid138_block_rsrvd_fix_q_4_delay_0 <= $unsigned(signRInfRZRReg_uid138_block_rsrvd_fix_q);
            redist18_signRInfRZRReg_uid138_block_rsrvd_fix_q_4_delay_1 <= redist18_signRInfRZRReg_uid138_block_rsrvd_fix_q_4_delay_0;
            redist18_signRInfRZRReg_uid138_block_rsrvd_fix_q_4_q <= redist18_signRInfRZRReg_uid138_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // fracXIsNotZero_uid41_block_rsrvd_fix(LOGICAL,40)@15
    assign fracXIsNotZero_uid41_block_rsrvd_fix_q = ~ (redist40_fracXIsZero_uid40_block_rsrvd_fix_q_12_q);

    // excN_bSig_uid43_block_rsrvd_fix(LOGICAL,42)@15 + 1
    assign excN_bSig_uid43_block_rsrvd_fix_qi = redist41_expXIsMax_uid39_block_rsrvd_fix_q_13_q & fracXIsNotZero_uid41_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_bSig_uid43_block_rsrvd_fix_delay ( .xin(excN_bSig_uid43_block_rsrvd_fix_qi), .xout(excN_bSig_uid43_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist38_excN_bSig_uid43_block_rsrvd_fix_q_5(DELAY,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_delay_2 <= '0;
            redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_delay_0 <= $unsigned(excN_bSig_uid43_block_rsrvd_fix_q);
            redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_delay_1 <= redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_delay_0;
            redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_delay_2 <= redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_delay_1;
            redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_q <= redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_delay_2;
        end
    end

    // fracXIsNotZero_uid27_block_rsrvd_fix(LOGICAL,26)@15
    assign fracXIsNotZero_uid27_block_rsrvd_fix_q = ~ (redist48_fracXIsZero_uid26_block_rsrvd_fix_q_7_q);

    // excN_aSig_uid29_block_rsrvd_fix(LOGICAL,28)@15 + 1
    assign excN_aSig_uid29_block_rsrvd_fix_qi = expXIsMax_uid25_block_rsrvd_fix_q & fracXIsNotZero_uid27_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_aSig_uid29_block_rsrvd_fix_delay ( .xin(excN_aSig_uid29_block_rsrvd_fix_qi), .xout(excN_aSig_uid29_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist46_excN_aSig_uid29_block_rsrvd_fix_q_5(DELAY,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_delay_2 <= '0;
            redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_delay_0 <= $unsigned(excN_aSig_uid29_block_rsrvd_fix_q);
            redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_delay_1 <= redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_delay_0;
            redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_delay_2 <= redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_delay_1;
            redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_q <= redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_delay_2;
        end
    end

    // excRNaN2_uid125_block_rsrvd_fix(LOGICAL,124)@20
    assign excRNaN2_uid125_block_rsrvd_fix_q = redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_q | redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_q;

    // redist32_effSub_uid53_block_rsrvd_fix_q_13(DELAY,284)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist32_effSub_uid53_block_rsrvd_fix_q_13 ( .xin(effSub_uid53_block_rsrvd_fix_q), .xout(redist32_effSub_uid53_block_rsrvd_fix_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist39_excI_bSig_uid42_block_rsrvd_fix_q_5(DELAY,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_delay_2 <= '0;
            redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_delay_0 <= $unsigned(excI_bSig_uid42_block_rsrvd_fix_q);
            redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_delay_1 <= redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_delay_0;
            redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_delay_2 <= redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_delay_1;
            redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_q <= redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_delay_2;
        end
    end

    // redist47_excI_aSig_uid28_block_rsrvd_fix_q_5(DELAY,299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_delay_2 <= '0;
            redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_delay_0 <= $unsigned(excI_aSig_uid28_block_rsrvd_fix_q);
            redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_delay_1 <= redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_delay_0;
            redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_delay_2 <= redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_delay_1;
            redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_q <= redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_delay_2;
        end
    end

    // excAIBISub_uid126_block_rsrvd_fix(LOGICAL,125)@20
    assign excAIBISub_uid126_block_rsrvd_fix_q = redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_q & redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_q & redist32_effSub_uid53_block_rsrvd_fix_q_13_q;

    // excRNaN_uid127_block_rsrvd_fix(LOGICAL,126)@20 + 1
    assign excRNaN_uid127_block_rsrvd_fix_qi = excAIBISub_uid126_block_rsrvd_fix_q | excRNaN2_uid125_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRNaN_uid127_block_rsrvd_fix_delay ( .xin(excRNaN_uid127_block_rsrvd_fix_qi), .xout(excRNaN_uid127_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcRNaN_uid139_block_rsrvd_fix(LOGICAL,138)@21
    assign invExcRNaN_uid139_block_rsrvd_fix_q = ~ (excRNaN_uid127_block_rsrvd_fix_q);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // signRPostExc_uid140_block_rsrvd_fix(LOGICAL,139)@21
    assign signRPostExc_uid140_block_rsrvd_fix_q = invExcRNaN_uid139_block_rsrvd_fix_q & redist18_signRInfRZRReg_uid138_block_rsrvd_fix_q_4_q;

    // cRBit_uid100_block_rsrvd_fix(CONSTANT,99)
    assign cRBit_uid100_block_rsrvd_fix_q = $unsigned(5'b01000);

    // leftShiftStage2Idx1Rng1_uid243_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,242)@15
    assign leftShiftStage2Idx1Rng1_uid243_fracPostNormExt_uid89_block_rsrvd_fix_in = leftShiftStage1_uid241_fracPostNormExt_uid89_block_rsrvd_fix_q[20:0];
    assign leftShiftStage2Idx1Rng1_uid243_fracPostNormExt_uid89_block_rsrvd_fix_b = leftShiftStage2Idx1Rng1_uid243_fracPostNormExt_uid89_block_rsrvd_fix_in[20:0];

    // leftShiftStage2Idx1_uid244_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,243)@15
    assign leftShiftStage2Idx1_uid244_fracPostNormExt_uid89_block_rsrvd_fix_q = {leftShiftStage2Idx1Rng1_uid243_fracPostNormExt_uid89_block_rsrvd_fix_b, GND_q};

    // leftShiftStage1Idx3Rng6_uid238_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,237)@15
    assign leftShiftStage1Idx3Rng6_uid238_fracPostNormExt_uid89_block_rsrvd_fix_in = leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q[15:0];
    assign leftShiftStage1Idx3Rng6_uid238_fracPostNormExt_uid89_block_rsrvd_fix_b = leftShiftStage1Idx3Rng6_uid238_fracPostNormExt_uid89_block_rsrvd_fix_in[15:0];

    // leftShiftStage1Idx3Pad6_uid237_fracPostNormExt_uid89_block_rsrvd_fix(CONSTANT,236)
    assign leftShiftStage1Idx3Pad6_uid237_fracPostNormExt_uid89_block_rsrvd_fix_q = $unsigned(6'b000000);

    // leftShiftStage1Idx3_uid239_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,238)@15
    assign leftShiftStage1Idx3_uid239_fracPostNormExt_uid89_block_rsrvd_fix_q = {leftShiftStage1Idx3Rng6_uid238_fracPostNormExt_uid89_block_rsrvd_fix_b, leftShiftStage1Idx3Pad6_uid237_fracPostNormExt_uid89_block_rsrvd_fix_q};

    // leftShiftStage1Idx2Rng4_uid235_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,234)@15
    assign leftShiftStage1Idx2Rng4_uid235_fracPostNormExt_uid89_block_rsrvd_fix_in = leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q[17:0];
    assign leftShiftStage1Idx2Rng4_uid235_fracPostNormExt_uid89_block_rsrvd_fix_b = leftShiftStage1Idx2Rng4_uid235_fracPostNormExt_uid89_block_rsrvd_fix_in[17:0];

    // leftShiftStage1Idx2_uid236_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,235)@15
    assign leftShiftStage1Idx2_uid236_fracPostNormExt_uid89_block_rsrvd_fix_q = {leftShiftStage1Idx2Rng4_uid235_fracPostNormExt_uid89_block_rsrvd_fix_b, zs_uid165_lzCountVal_uid86_block_rsrvd_fix_q};

    // leftShiftStage1Idx1Rng2_uid232_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,231)@15
    assign leftShiftStage1Idx1Rng2_uid232_fracPostNormExt_uid89_block_rsrvd_fix_in = leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q[19:0];
    assign leftShiftStage1Idx1Rng2_uid232_fracPostNormExt_uid89_block_rsrvd_fix_b = leftShiftStage1Idx1Rng2_uid232_fracPostNormExt_uid89_block_rsrvd_fix_in[19:0];

    // leftShiftStage1Idx1_uid233_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,232)@15
    assign leftShiftStage1Idx1_uid233_fracPostNormExt_uid89_block_rsrvd_fix_q = {leftShiftStage1Idx1Rng2_uid232_fracPostNormExt_uid89_block_rsrvd_fix_b, zs_uid171_lzCountVal_uid86_block_rsrvd_fix_q};

    // leftShiftStage0Idx3_uid228_fracPostNormExt_uid89_block_rsrvd_fix(CONSTANT,227)
    assign leftShiftStage0Idx3_uid228_fracPostNormExt_uid89_block_rsrvd_fix_q = $unsigned(22'b0000000000000000000000);

    // redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4(DELAY,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_delay_0 <= '0;
            redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_delay_1 <= '0;
            redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_delay_2 <= '0;
            redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_q <= '0;
        end
        else
        begin
            redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_delay_0 <= $unsigned(vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b);
            redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_delay_1 <= redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_delay_0;
            redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_delay_2 <= redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_delay_1;
            redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_q <= redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_delay_2;
        end
    end

    // leftShiftStage0Idx2_uid227_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,226)@14
    assign leftShiftStage0Idx2_uid227_fracPostNormExt_uid89_block_rsrvd_fix_q = {redist15_vStage_uid155_lzCountVal_uid86_block_rsrvd_fix_b_4_q, zs_uid151_lzCountVal_uid86_block_rsrvd_fix_q};

    // leftShiftStage0Idx1Rng8_uid223_fracPostNormExt_uid89_block_rsrvd_fix(BITSELECT,222)@14
    assign leftShiftStage0Idx1Rng8_uid223_fracPostNormExt_uid89_block_rsrvd_fix_in = redist28_fracGRS_uid85_block_rsrvd_fix_q_5_q[13:0];
    assign leftShiftStage0Idx1Rng8_uid223_fracPostNormExt_uid89_block_rsrvd_fix_b = leftShiftStage0Idx1Rng8_uid223_fracPostNormExt_uid89_block_rsrvd_fix_in[13:0];

    // leftShiftStage0Idx1_uid224_fracPostNormExt_uid89_block_rsrvd_fix(BITJOIN,223)@14
    assign leftShiftStage0Idx1_uid224_fracPostNormExt_uid89_block_rsrvd_fix_q = {leftShiftStage0Idx1Rng8_uid223_fracPostNormExt_uid89_block_rsrvd_fix_b, cstAllZWE_uid21_block_rsrvd_fix_q};

    // redist28_fracGRS_uid85_block_rsrvd_fix_q_5_inputreg0(DELAY,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_fracGRS_uid85_block_rsrvd_fix_q_5_inputreg0_q <= '0;
        end
        else
        begin
            redist28_fracGRS_uid85_block_rsrvd_fix_q_5_inputreg0_q <= $unsigned(redist27_fracGRS_uid85_block_rsrvd_fix_q_1_q);
        end
    end

    // redist28_fracGRS_uid85_block_rsrvd_fix_q_5(DELAY,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_fracGRS_uid85_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist28_fracGRS_uid85_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist28_fracGRS_uid85_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist28_fracGRS_uid85_block_rsrvd_fix_q_5_delay_0 <= $unsigned(redist28_fracGRS_uid85_block_rsrvd_fix_q_5_inputreg0_q);
            redist28_fracGRS_uid85_block_rsrvd_fix_q_5_delay_1 <= redist28_fracGRS_uid85_block_rsrvd_fix_q_5_delay_0;
            redist28_fracGRS_uid85_block_rsrvd_fix_q_5_q <= redist28_fracGRS_uid85_block_rsrvd_fix_q_5_delay_1;
        end
    end

    // leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select(BITSELECT,251)@14
    assign leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_b = r_uid180_lzCountVal_uid86_block_rsrvd_fix_q[4:3];
    assign leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c = r_uid180_lzCountVal_uid86_block_rsrvd_fix_q[2:1];
    assign leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_d = r_uid180_lzCountVal_uid86_block_rsrvd_fix_q[0:0];

    // leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix(MUX,229)@14 + 1
    assign leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_s = leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q <= 22'b0;
        end
        else
        begin
            unique case (leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_s)
                2'b00 : leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q <= redist28_fracGRS_uid85_block_rsrvd_fix_q_5_q;
                2'b01 : leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx1_uid224_fracPostNormExt_uid89_block_rsrvd_fix_q;
                2'b10 : leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx2_uid227_fracPostNormExt_uid89_block_rsrvd_fix_q;
                2'b11 : leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage0Idx3_uid228_fracPostNormExt_uid89_block_rsrvd_fix_q;
                default : leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q <= 22'b0;
            endcase
        end
    end

    // redist0_leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c_1(DELAY,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // leftShiftStage1_uid241_fracPostNormExt_uid89_block_rsrvd_fix(MUX,240)@15
    assign leftShiftStage1_uid241_fracPostNormExt_uid89_block_rsrvd_fix_s = redist0_leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_c_1_q;
    always @(leftShiftStage1_uid241_fracPostNormExt_uid89_block_rsrvd_fix_s or leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q or leftShiftStage1Idx1_uid233_fracPostNormExt_uid89_block_rsrvd_fix_q or leftShiftStage1Idx2_uid236_fracPostNormExt_uid89_block_rsrvd_fix_q or leftShiftStage1Idx3_uid239_fracPostNormExt_uid89_block_rsrvd_fix_q)
    begin
        unique case (leftShiftStage1_uid241_fracPostNormExt_uid89_block_rsrvd_fix_s)
            2'b00 : leftShiftStage1_uid241_fracPostNormExt_uid89_block_rsrvd_fix_q = leftShiftStage0_uid230_fracPostNormExt_uid89_block_rsrvd_fix_q;
            2'b01 : leftShiftStage1_uid241_fracPostNormExt_uid89_block_rsrvd_fix_q = leftShiftStage1Idx1_uid233_fracPostNormExt_uid89_block_rsrvd_fix_q;
            2'b10 : leftShiftStage1_uid241_fracPostNormExt_uid89_block_rsrvd_fix_q = leftShiftStage1Idx2_uid236_fracPostNormExt_uid89_block_rsrvd_fix_q;
            2'b11 : leftShiftStage1_uid241_fracPostNormExt_uid89_block_rsrvd_fix_q = leftShiftStage1Idx3_uid239_fracPostNormExt_uid89_block_rsrvd_fix_q;
            default : leftShiftStage1_uid241_fracPostNormExt_uid89_block_rsrvd_fix_q = 22'b0;
        endcase
    end

    // redist1_leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_d_1(DELAY,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist1_leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_d_1_q <= $unsigned(leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_d);
        end
    end

    // leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix(MUX,245)@15 + 1
    assign leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix_s = redist1_leftShiftStageSel0Dto3_uid229_fracPostNormExt_uid89_block_rsrvd_fix_merged_bit_select_d_1_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix_q <= 22'b0;
        end
        else
        begin
            unique case (leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix_s)
                1'b0 : leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage1_uid241_fracPostNormExt_uid89_block_rsrvd_fix_q;
                1'b1 : leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix_q <= leftShiftStage2Idx1_uid244_fracPostNormExt_uid89_block_rsrvd_fix_q;
                default : leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix_q <= 22'b0;
            endcase
        end
    end

    // LSB_uid98_block_rsrvd_fix(BITSELECT,97)@16
    assign LSB_uid98_block_rsrvd_fix_in = $unsigned(leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix_q[4:0]);
    assign LSB_uid98_block_rsrvd_fix_b = $unsigned(LSB_uid98_block_rsrvd_fix_in[4:4]);

    // Guard_uid97_block_rsrvd_fix(BITSELECT,96)@16
    assign Guard_uid97_block_rsrvd_fix_in = $unsigned(leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix_q[3:0]);
    assign Guard_uid97_block_rsrvd_fix_b = $unsigned(Guard_uid97_block_rsrvd_fix_in[3:3]);

    // Round_uid96_block_rsrvd_fix(BITSELECT,95)@16
    assign Round_uid96_block_rsrvd_fix_in = $unsigned(leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix_q[2:0]);
    assign Round_uid96_block_rsrvd_fix_b = $unsigned(Round_uid96_block_rsrvd_fix_in[2:2]);

    // Sticky1_uid95_block_rsrvd_fix(BITSELECT,94)@16
    assign Sticky1_uid95_block_rsrvd_fix_in = $unsigned(leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix_q[1:0]);
    assign Sticky1_uid95_block_rsrvd_fix_b = $unsigned(Sticky1_uid95_block_rsrvd_fix_in[1:1]);

    // Sticky0_uid94_block_rsrvd_fix(BITSELECT,93)@16
    assign Sticky0_uid94_block_rsrvd_fix_in = $unsigned(leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix_q[0:0]);
    assign Sticky0_uid94_block_rsrvd_fix_b = $unsigned(Sticky0_uid94_block_rsrvd_fix_in[0:0]);

    // rndBitCond_uid99_block_rsrvd_fix(BITJOIN,98)@16
    assign rndBitCond_uid99_block_rsrvd_fix_q = {LSB_uid98_block_rsrvd_fix_b, Guard_uid97_block_rsrvd_fix_b, Round_uid96_block_rsrvd_fix_b, Sticky1_uid95_block_rsrvd_fix_b, Sticky0_uid94_block_rsrvd_fix_b};

    // rBi_uid101_block_rsrvd_fix(LOGICAL,100)@16 + 1
    assign rBi_uid101_block_rsrvd_fix_qi = $unsigned(rndBitCond_uid99_block_rsrvd_fix_q == cRBit_uid100_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    rBi_uid101_block_rsrvd_fix_delay ( .xin(rBi_uid101_block_rsrvd_fix_qi), .xout(rBi_uid101_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // roundBit_uid102_block_rsrvd_fix(LOGICAL,101)@17
    assign roundBit_uid102_block_rsrvd_fix_q = ~ (rBi_uid101_block_rsrvd_fix_q);

    // oneCST_uid91_block_rsrvd_fix(CONSTANT,90)
    assign oneCST_uid91_block_rsrvd_fix_q = $unsigned(8'b00000001);

    // expInc_uid92_block_rsrvd_fix(ADD,91)@14 + 1
    assign expInc_uid92_block_rsrvd_fix_a = {1'b0, redist53_exp_aSig_uid22_block_rsrvd_fix_b_13_outputreg0_q};
    assign expInc_uid92_block_rsrvd_fix_b = {1'b0, oneCST_uid91_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expInc_uid92_block_rsrvd_fix_o <= 9'b0;
        end
        else
        begin
            expInc_uid92_block_rsrvd_fix_o <= $unsigned(expInc_uid92_block_rsrvd_fix_a) + $unsigned(expInc_uid92_block_rsrvd_fix_b);
        end
    end
    assign expInc_uid92_block_rsrvd_fix_q = expInc_uid92_block_rsrvd_fix_o[8:0];

    // expPostNorm_uid93_block_rsrvd_fix(SUB,92)@15 + 1
    assign expPostNorm_uid93_block_rsrvd_fix_a = {1'b0, expInc_uid92_block_rsrvd_fix_q};
    assign expPostNorm_uid93_block_rsrvd_fix_b = {5'b00000, redist12_r_uid180_lzCountVal_uid86_block_rsrvd_fix_q_1_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expPostNorm_uid93_block_rsrvd_fix_o <= 10'b0;
        end
        else
        begin
            expPostNorm_uid93_block_rsrvd_fix_o <= $unsigned(expPostNorm_uid93_block_rsrvd_fix_a) - $unsigned(expPostNorm_uid93_block_rsrvd_fix_b);
        end
    end
    assign expPostNorm_uid93_block_rsrvd_fix_q = expPostNorm_uid93_block_rsrvd_fix_o[9:0];

    // redist25_expPostNorm_uid93_block_rsrvd_fix_q_2(DELAY,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_expPostNorm_uid93_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist25_expPostNorm_uid93_block_rsrvd_fix_q_2_q <= $unsigned(expPostNorm_uid93_block_rsrvd_fix_q);
        end
    end

    // fracPostNorm_uid90_block_rsrvd_fix(BITSELECT,89)@16
    assign fracPostNorm_uid90_block_rsrvd_fix_b = leftShiftStage2_uid246_fracPostNormExt_uid89_block_rsrvd_fix_q[21:1];

    // fracPostNormRndRange_uid103_block_rsrvd_fix(BITSELECT,102)@16
    assign fracPostNormRndRange_uid103_block_rsrvd_fix_in = fracPostNorm_uid90_block_rsrvd_fix_b[19:0];
    assign fracPostNormRndRange_uid103_block_rsrvd_fix_b = fracPostNormRndRange_uid103_block_rsrvd_fix_in[19:2];

    // redist24_fracPostNormRndRange_uid103_block_rsrvd_fix_b_1(DELAY,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_fracPostNormRndRange_uid103_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist24_fracPostNormRndRange_uid103_block_rsrvd_fix_b_1_q <= $unsigned(fracPostNormRndRange_uid103_block_rsrvd_fix_b);
        end
    end

    // expFracR_uid104_block_rsrvd_fix(BITJOIN,103)@17
    assign expFracR_uid104_block_rsrvd_fix_q = {redist25_expPostNorm_uid93_block_rsrvd_fix_q_2_q, redist24_fracPostNormRndRange_uid103_block_rsrvd_fix_b_1_q};

    // rndExpFrac_uid105_block_rsrvd_fix(ADD,104)@17 + 1
    assign rndExpFrac_uid105_block_rsrvd_fix_a = {1'b0, expFracR_uid104_block_rsrvd_fix_q};
    assign rndExpFrac_uid105_block_rsrvd_fix_b = {28'b0000000000000000000000000000, roundBit_uid102_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rndExpFrac_uid105_block_rsrvd_fix_o <= 29'b0;
        end
        else
        begin
            rndExpFrac_uid105_block_rsrvd_fix_o <= $unsigned(rndExpFrac_uid105_block_rsrvd_fix_a) + $unsigned(rndExpFrac_uid105_block_rsrvd_fix_b);
        end
    end
    assign rndExpFrac_uid105_block_rsrvd_fix_q = rndExpFrac_uid105_block_rsrvd_fix_o[28:0];

    // expRPreExc_uid118_block_rsrvd_fix(BITSELECT,117)@18
    assign expRPreExc_uid118_block_rsrvd_fix_in = rndExpFrac_uid105_block_rsrvd_fix_q[25:0];
    assign expRPreExc_uid118_block_rsrvd_fix_b = expRPreExc_uid118_block_rsrvd_fix_in[25:18];

    // redist21_expRPreExc_uid118_block_rsrvd_fix_b_3(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_expRPreExc_uid118_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist21_expRPreExc_uid118_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist21_expRPreExc_uid118_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist21_expRPreExc_uid118_block_rsrvd_fix_b_3_delay_0 <= $unsigned(expRPreExc_uid118_block_rsrvd_fix_b);
            redist21_expRPreExc_uid118_block_rsrvd_fix_b_3_delay_1 <= redist21_expRPreExc_uid118_block_rsrvd_fix_b_3_delay_0;
            redist21_expRPreExc_uid118_block_rsrvd_fix_b_3_q <= redist21_expRPreExc_uid118_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // rndExpFracOvfBits_uid110_block_rsrvd_fix(BITSELECT,109)@18
    assign rndExpFracOvfBits_uid110_block_rsrvd_fix_in = rndExpFrac_uid105_block_rsrvd_fix_q[27:0];
    assign rndExpFracOvfBits_uid110_block_rsrvd_fix_b = rndExpFracOvfBits_uid110_block_rsrvd_fix_in[27:26];

    // rOvfExtraBits_uid111_block_rsrvd_fix(LOGICAL,110)@18 + 1
    assign rOvfExtraBits_uid111_block_rsrvd_fix_qi = $unsigned(rndExpFracOvfBits_uid110_block_rsrvd_fix_b == zocst_uid77_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    rOvfExtraBits_uid111_block_rsrvd_fix_delay ( .xin(rOvfExtraBits_uid111_block_rsrvd_fix_qi), .xout(rOvfExtraBits_uid111_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // wEP2AllOwE_uid106_block_rsrvd_fix(CONSTANT,105)
    assign wEP2AllOwE_uid106_block_rsrvd_fix_q = $unsigned(10'b0011111111);

    // rndExp_uid107_block_rsrvd_fix(BITSELECT,106)@18
    assign rndExp_uid107_block_rsrvd_fix_in = rndExpFrac_uid105_block_rsrvd_fix_q[27:0];
    assign rndExp_uid107_block_rsrvd_fix_b = rndExp_uid107_block_rsrvd_fix_in[27:18];

    // rOvfEQMax_uid108_block_rsrvd_fix(LOGICAL,107)@18 + 1
    assign rOvfEQMax_uid108_block_rsrvd_fix_qi = $unsigned(rndExp_uid107_block_rsrvd_fix_b == wEP2AllOwE_uid106_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    rOvfEQMax_uid108_block_rsrvd_fix_delay ( .xin(rOvfEQMax_uid108_block_rsrvd_fix_qi), .xout(rOvfEQMax_uid108_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rOvf_uid112_block_rsrvd_fix(LOGICAL,111)@19
    assign rOvf_uid112_block_rsrvd_fix_q = rOvfEQMax_uid108_block_rsrvd_fix_q | rOvfExtraBits_uid111_block_rsrvd_fix_q;

    // regInputs_uid119_block_rsrvd_fix(LOGICAL,118)@16 + 1
    assign regInputs_uid119_block_rsrvd_fix_qi = excR_aSig_uid32_block_rsrvd_fix_q & excR_bSig_uid46_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    regInputs_uid119_block_rsrvd_fix_delay ( .xin(regInputs_uid119_block_rsrvd_fix_qi), .xout(regInputs_uid119_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist20_regInputs_uid119_block_rsrvd_fix_q_3(DELAY,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_regInputs_uid119_block_rsrvd_fix_q_3_delay_0 <= '0;
            redist20_regInputs_uid119_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist20_regInputs_uid119_block_rsrvd_fix_q_3_delay_0 <= $unsigned(regInputs_uid119_block_rsrvd_fix_q);
            redist20_regInputs_uid119_block_rsrvd_fix_q_3_q <= redist20_regInputs_uid119_block_rsrvd_fix_q_3_delay_0;
        end
    end

    // rInfOvf_uid122_block_rsrvd_fix(LOGICAL,121)@19 + 1
    assign rInfOvf_uid122_block_rsrvd_fix_qi = redist20_regInputs_uid119_block_rsrvd_fix_q_3_q & rOvf_uid112_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    rInfOvf_uid122_block_rsrvd_fix_delay ( .xin(rInfOvf_uid122_block_rsrvd_fix_qi), .xout(rInfOvf_uid122_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excRInfVInC_uid123_block_rsrvd_fix(BITJOIN,122)@20
    assign excRInfVInC_uid123_block_rsrvd_fix_q = {rInfOvf_uid122_block_rsrvd_fix_q, redist38_excN_bSig_uid43_block_rsrvd_fix_q_5_q, redist46_excN_aSig_uid29_block_rsrvd_fix_q_5_q, redist39_excI_bSig_uid42_block_rsrvd_fix_q_5_q, redist47_excI_aSig_uid28_block_rsrvd_fix_q_5_q, redist32_effSub_uid53_block_rsrvd_fix_q_13_q};

    // excRInf_uid124_block_rsrvd_fix(LOOKUP,123)@20 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            excRInf_uid124_block_rsrvd_fix_q <= $unsigned(1'b0);
        end
        else
        begin
            unique case (excRInfVInC_uid123_block_rsrvd_fix_q)
                6'b000000 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b000001 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b000010 : excRInf_uid124_block_rsrvd_fix_q <= 1'b1;
                6'b000011 : excRInf_uid124_block_rsrvd_fix_q <= 1'b1;
                6'b000100 : excRInf_uid124_block_rsrvd_fix_q <= 1'b1;
                6'b000101 : excRInf_uid124_block_rsrvd_fix_q <= 1'b1;
                6'b000110 : excRInf_uid124_block_rsrvd_fix_q <= 1'b1;
                6'b000111 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b001000 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b001001 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b001010 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b001011 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b001100 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b001101 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b001110 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b001111 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b010000 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b010001 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b010010 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b010011 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b010100 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b010101 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b010110 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b010111 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b011000 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b011001 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b011010 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b011011 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b011100 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b011101 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b011110 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b011111 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b100000 : excRInf_uid124_block_rsrvd_fix_q <= 1'b1;
                6'b100001 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b100010 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b100011 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b100100 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b100101 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b100110 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b100111 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b101000 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b101001 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b101010 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b101011 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b101100 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b101101 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b101110 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b101111 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b110000 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b110001 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b110010 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b110011 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b110100 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b110101 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b110110 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b110111 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b111000 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b111001 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b111010 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b111011 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b111100 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b111101 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b111110 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                6'b111111 : excRInf_uid124_block_rsrvd_fix_q <= 1'b0;
                default : begin
                              // unreachable
                              excRInf_uid124_block_rsrvd_fix_q <= 1'bx;
                          end
            endcase
        end
    end

    // redist26_aMinusA_uid88_block_rsrvd_fix_q_4(DELAY,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_aMinusA_uid88_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist26_aMinusA_uid88_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist26_aMinusA_uid88_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist26_aMinusA_uid88_block_rsrvd_fix_q_4_delay_0 <= $unsigned(aMinusA_uid88_block_rsrvd_fix_q);
            redist26_aMinusA_uid88_block_rsrvd_fix_q_4_delay_1 <= redist26_aMinusA_uid88_block_rsrvd_fix_q_4_delay_0;
            redist26_aMinusA_uid88_block_rsrvd_fix_q_4_q <= redist26_aMinusA_uid88_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // rUdfExtraBit_uid115_block_rsrvd_fix(BITSELECT,114)@18
    assign rUdfExtraBit_uid115_block_rsrvd_fix_in = $unsigned(rndExpFrac_uid105_block_rsrvd_fix_q[27:0]);
    assign rUdfExtraBit_uid115_block_rsrvd_fix_b = $unsigned(rUdfExtraBit_uid115_block_rsrvd_fix_in[27:27]);

    // redist23_rUdfExtraBit_uid115_block_rsrvd_fix_b_1(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_rUdfExtraBit_uid115_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist23_rUdfExtraBit_uid115_block_rsrvd_fix_b_1_q <= $unsigned(rUdfExtraBit_uid115_block_rsrvd_fix_b);
        end
    end

    // wEP2AllZ_uid113_block_rsrvd_fix(CONSTANT,112)
    assign wEP2AllZ_uid113_block_rsrvd_fix_q = $unsigned(10'b0000000000);

    // rUdfEQMin_uid114_block_rsrvd_fix(LOGICAL,113)@18 + 1
    assign rUdfEQMin_uid114_block_rsrvd_fix_qi = $unsigned(rndExp_uid107_block_rsrvd_fix_b == wEP2AllZ_uid113_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    rUdfEQMin_uid114_block_rsrvd_fix_delay ( .xin(rUdfEQMin_uid114_block_rsrvd_fix_qi), .xout(rUdfEQMin_uid114_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rUdf_uid116_block_rsrvd_fix(LOGICAL,115)@19
    assign rUdf_uid116_block_rsrvd_fix_q = rUdfEQMin_uid114_block_rsrvd_fix_q | redist23_rUdfExtraBit_uid115_block_rsrvd_fix_b_1_q;

    // redist43_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_17(DELAY,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_17_delay_0 <= '0;
            redist43_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_17_delay_1 <= '0;
            redist43_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_17_q <= '0;
        end
        else
        begin
            redist43_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_17_delay_0 <= $unsigned(redist42_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_14_q);
            redist43_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_17_delay_1 <= redist43_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_17_delay_0;
            redist43_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_17_q <= redist43_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_17_delay_1;
        end
    end

    // redist50_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_5(DELAY,302)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist50_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist50_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist50_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_5_delay_0 <= $unsigned(redist49_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_2_q);
            redist50_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_5_delay_1 <= redist50_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_5_delay_0;
            redist50_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_5_q <= redist50_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_5_delay_1;
        end
    end

    // excRZeroVInC_uid120_block_rsrvd_fix(BITJOIN,119)@19
    assign excRZeroVInC_uid120_block_rsrvd_fix_q = {redist26_aMinusA_uid88_block_rsrvd_fix_q_4_q, rUdf_uid116_block_rsrvd_fix_q, redist20_regInputs_uid119_block_rsrvd_fix_q_3_q, redist43_excZ_bSig_uid18_uid38_block_rsrvd_fix_q_17_q, redist50_excZ_aSig_uid17_uid24_block_rsrvd_fix_q_5_q};

    // excRZero_uid121_block_rsrvd_fix(LOOKUP,120)@19 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            excRZero_uid121_block_rsrvd_fix_q <= $unsigned(1'b0);
        end
        else
        begin
            unique case (excRZeroVInC_uid120_block_rsrvd_fix_q)
                5'b00000 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b00001 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b00010 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b00011 : excRZero_uid121_block_rsrvd_fix_q <= 1'b1;
                5'b00100 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b00101 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b00110 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b00111 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b01000 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b01001 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b01010 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b01011 : excRZero_uid121_block_rsrvd_fix_q <= 1'b1;
                5'b01100 : excRZero_uid121_block_rsrvd_fix_q <= 1'b1;
                5'b01101 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b01110 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b01111 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b10000 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b10001 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b10010 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b10011 : excRZero_uid121_block_rsrvd_fix_q <= 1'b1;
                5'b10100 : excRZero_uid121_block_rsrvd_fix_q <= 1'b1;
                5'b10101 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b10110 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b10111 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b11000 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b11001 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b11010 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b11011 : excRZero_uid121_block_rsrvd_fix_q <= 1'b1;
                5'b11100 : excRZero_uid121_block_rsrvd_fix_q <= 1'b1;
                5'b11101 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b11110 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                5'b11111 : excRZero_uid121_block_rsrvd_fix_q <= 1'b0;
                default : begin
                              // unreachable
                              excRZero_uid121_block_rsrvd_fix_q <= 1'bx;
                          end
            endcase
        end
    end

    // redist19_excRZero_uid121_block_rsrvd_fix_q_2(DELAY,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_excRZero_uid121_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist19_excRZero_uid121_block_rsrvd_fix_q_2_q <= $unsigned(excRZero_uid121_block_rsrvd_fix_q);
        end
    end

    // concExc_uid128_block_rsrvd_fix(BITJOIN,127)@21
    assign concExc_uid128_block_rsrvd_fix_q = {excRNaN_uid127_block_rsrvd_fix_q, excRInf_uid124_block_rsrvd_fix_q, redist19_excRZero_uid121_block_rsrvd_fix_q_2_q};

    // excREnc_uid129_block_rsrvd_fix(LOOKUP,128)@21
    always @(concExc_uid128_block_rsrvd_fix_q)
    begin
        // Begin reserved scope level
        unique case (concExc_uid128_block_rsrvd_fix_q)
            3'b000 : excREnc_uid129_block_rsrvd_fix_q = 2'b01;
            3'b001 : excREnc_uid129_block_rsrvd_fix_q = 2'b00;
            3'b010 : excREnc_uid129_block_rsrvd_fix_q = 2'b10;
            3'b011 : excREnc_uid129_block_rsrvd_fix_q = 2'b10;
            3'b100 : excREnc_uid129_block_rsrvd_fix_q = 2'b11;
            3'b101 : excREnc_uid129_block_rsrvd_fix_q = 2'b11;
            3'b110 : excREnc_uid129_block_rsrvd_fix_q = 2'b11;
            3'b111 : excREnc_uid129_block_rsrvd_fix_q = 2'b11;
            default : begin
                          // unreachable
                          excREnc_uid129_block_rsrvd_fix_q = 2'bxx;
                      end
        endcase
        // End reserved scope level
    end

    // expRPostExc_uid148_block_rsrvd_fix(MUX,147)@21
    assign expRPostExc_uid148_block_rsrvd_fix_s = excREnc_uid129_block_rsrvd_fix_q;
    always @(expRPostExc_uid148_block_rsrvd_fix_s or cstAllZWE_uid21_block_rsrvd_fix_q or redist21_expRPreExc_uid118_block_rsrvd_fix_b_3_q or cstAllOWE_uid19_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid148_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid148_block_rsrvd_fix_q = cstAllZWE_uid21_block_rsrvd_fix_q;
            2'b01 : expRPostExc_uid148_block_rsrvd_fix_q = redist21_expRPreExc_uid118_block_rsrvd_fix_b_3_q;
            2'b10 : expRPostExc_uid148_block_rsrvd_fix_q = cstAllOWE_uid19_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid148_block_rsrvd_fix_q = cstAllOWE_uid19_block_rsrvd_fix_q;
            default : expRPostExc_uid148_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // oneFracRPostExc2_uid141_block_rsrvd_fix(CONSTANT,140)
    assign oneFracRPostExc2_uid141_block_rsrvd_fix_q = $unsigned(17'b00000000000000001);

    // fracRPreExc_uid117_block_rsrvd_fix(BITSELECT,116)@18
    assign fracRPreExc_uid117_block_rsrvd_fix_in = rndExpFrac_uid105_block_rsrvd_fix_q[17:0];
    assign fracRPreExc_uid117_block_rsrvd_fix_b = fracRPreExc_uid117_block_rsrvd_fix_in[17:1];

    // redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3_inputreg0(DELAY,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3_inputreg0_q <= '0;
        end
        else
        begin
            redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3_inputreg0_q <= $unsigned(fracRPreExc_uid117_block_rsrvd_fix_b);
        end
    end

    // redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3(DELAY,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3_delay_0 <= $unsigned(redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3_inputreg0_q);
            redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3_q <= redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3_delay_0;
        end
    end

    // fracRPostExc_uid144_block_rsrvd_fix(MUX,143)@21
    assign fracRPostExc_uid144_block_rsrvd_fix_s = excREnc_uid129_block_rsrvd_fix_q;
    always @(fracRPostExc_uid144_block_rsrvd_fix_s or cstZeroWF_uid20_block_rsrvd_fix_q or redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3_q or oneFracRPostExc2_uid141_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid144_block_rsrvd_fix_s)
            2'b00 : fracRPostExc_uid144_block_rsrvd_fix_q = cstZeroWF_uid20_block_rsrvd_fix_q;
            2'b01 : fracRPostExc_uid144_block_rsrvd_fix_q = redist22_fracRPreExc_uid117_block_rsrvd_fix_b_3_q;
            2'b10 : fracRPostExc_uid144_block_rsrvd_fix_q = cstZeroWF_uid20_block_rsrvd_fix_q;
            2'b11 : fracRPostExc_uid144_block_rsrvd_fix_q = oneFracRPostExc2_uid141_block_rsrvd_fix_q;
            default : fracRPostExc_uid144_block_rsrvd_fix_q = 17'b0;
        endcase
    end

    // R_uid149_block_rsrvd_fix(BITJOIN,148)@21
    assign R_uid149_block_rsrvd_fix_q = {signRPostExc_uid140_block_rsrvd_fix_q, expRPostExc_uid148_block_rsrvd_fix_q, fracRPostExc_uid144_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,5)@21
    assign out_primWireOut = R_uid149_block_rsrvd_fix_q;

endmodule
