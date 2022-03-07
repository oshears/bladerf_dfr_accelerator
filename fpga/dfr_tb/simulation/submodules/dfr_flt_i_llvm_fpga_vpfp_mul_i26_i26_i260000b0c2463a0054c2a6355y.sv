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

// SystemVerilog created from flt_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr0_multBlock_typeSFloatIEEE_17_8_typeSFloatIEEE_17_8_typeSFloatIEEE_17_8_correctRounding_3f1o4avza2uc87ck9cqaeqme3ik9jm9vjr010i10u10p10k10f10410s10h10070770j70e70970y80dd0vd08f0sd0bd0nf02j0kj0wk0nj054cz5iwt7hrliwt7ztlcx26154c2463b0c2463a0054c2a6355y
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:29:59 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260000b0c2463a0054c2a6355y (
    input wire [25:0] in_0,
    input wire [25:0] in_1,
    output wire [25:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] expX_uid7_block_rsrvd_fix_b;
    wire [7:0] expY_uid8_block_rsrvd_fix_b;
    wire [0:0] signX_uid9_block_rsrvd_fix_b;
    wire [0:0] signY_uid10_block_rsrvd_fix_b;
    wire [7:0] cstAllOWE_uid11_block_rsrvd_fix_q;
    wire [16:0] cstZeroWF_uid12_block_rsrvd_fix_q;
    wire [7:0] cstAllZWE_uid13_block_rsrvd_fix_q;
    wire [16:0] frac_x_uid15_block_rsrvd_fix_b;
    wire [0:0] excZ_x_uid16_block_rsrvd_fix_qi;
    reg [0:0] excZ_x_uid16_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid17_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid17_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid18_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid18_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid19_block_rsrvd_fix_q;
    wire [0:0] excI_x_uid20_block_rsrvd_fix_q;
    wire [0:0] excN_x_uid21_block_rsrvd_fix_qi;
    reg [0:0] excN_x_uid21_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid22_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid23_block_rsrvd_fix_q;
    wire [0:0] excR_x_uid24_block_rsrvd_fix_qi;
    reg [0:0] excR_x_uid24_block_rsrvd_fix_q;
    wire [16:0] frac_y_uid29_block_rsrvd_fix_b;
    wire [0:0] excZ_y_uid30_block_rsrvd_fix_qi;
    reg [0:0] excZ_y_uid30_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid31_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid31_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid32_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid32_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid33_block_rsrvd_fix_q;
    wire [0:0] excI_y_uid34_block_rsrvd_fix_q;
    wire [0:0] excN_y_uid35_block_rsrvd_fix_qi;
    reg [0:0] excN_y_uid35_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid36_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid37_block_rsrvd_fix_q;
    wire [0:0] excR_y_uid38_block_rsrvd_fix_qi;
    reg [0:0] excR_y_uid38_block_rsrvd_fix_q;
    wire [17:0] ofracX_uid41_block_rsrvd_fix_q;
    wire [17:0] ofracY_uid44_block_rsrvd_fix_q;
    wire [8:0] expSum_uid45_block_rsrvd_fix_a;
    wire [8:0] expSum_uid45_block_rsrvd_fix_b;
    logic [8:0] expSum_uid45_block_rsrvd_fix_o;
    wire [8:0] expSum_uid45_block_rsrvd_fix_q;
    wire [9:0] biasInc_uid46_block_rsrvd_fix_q;
    wire [11:0] expSumMBias_uid47_block_rsrvd_fix_a;
    wire [11:0] expSumMBias_uid47_block_rsrvd_fix_b;
    logic [11:0] expSumMBias_uid47_block_rsrvd_fix_o;
    wire [10:0] expSumMBias_uid47_block_rsrvd_fix_q;
    wire [0:0] signR_uid49_block_rsrvd_fix_qi;
    reg [0:0] signR_uid49_block_rsrvd_fix_q;
    wire [0:0] normalizeBit_uid50_block_rsrvd_fix_b;
    wire [34:0] fracRPostNormHigh_uid52_block_rsrvd_fix_in;
    wire [17:0] fracRPostNormHigh_uid52_block_rsrvd_fix_b;
    wire [33:0] fracRPostNormLow_uid53_block_rsrvd_fix_in;
    wire [17:0] fracRPostNormLow_uid53_block_rsrvd_fix_b;
    wire [0:0] fracRPostNorm_uid54_block_rsrvd_fix_s;
    reg [17:0] fracRPostNorm_uid54_block_rsrvd_fix_q;
    wire [15:0] stickyRange_uid55_block_rsrvd_fix_in;
    wire [15:0] stickyRange_uid55_block_rsrvd_fix_b;
    wire [16:0] extraStickyBitOfProd_uid56_block_rsrvd_fix_in;
    wire [0:0] extraStickyBitOfProd_uid56_block_rsrvd_fix_b;
    wire [0:0] extraStickyBit_uid57_block_rsrvd_fix_s;
    reg [0:0] extraStickyBit_uid57_block_rsrvd_fix_q;
    wire [16:0] stickyExtendedRange_uid58_block_rsrvd_fix_q;
    wire [0:0] stickyRangeComparator_uid60_block_rsrvd_fix_qi;
    reg [0:0] stickyRangeComparator_uid60_block_rsrvd_fix_q;
    wire [0:0] sticky_uid61_block_rsrvd_fix_q;
    wire [1:0] fracRPostNorm1dto0_uid62_block_rsrvd_fix_in;
    wire [1:0] fracRPostNorm1dto0_uid62_block_rsrvd_fix_b;
    wire [2:0] lrs_uid63_block_rsrvd_fix_q;
    wire [2:0] roundBitDetectionConstant_uid64_block_rsrvd_fix_q;
    wire [0:0] roundBitDetectionPattern_uid65_block_rsrvd_fix_qi;
    reg [0:0] roundBitDetectionPattern_uid65_block_rsrvd_fix_q;
    wire [0:0] roundBit_uid66_block_rsrvd_fix_q;
    wire [28:0] expFracPreRound_uid67_block_rsrvd_fix_q;
    wire [19:0] roundBitAndNormalizationOp_uid69_block_rsrvd_fix_q;
    wire [30:0] expFracRPostRounding_uid70_block_rsrvd_fix_a;
    wire [30:0] expFracRPostRounding_uid70_block_rsrvd_fix_b;
    logic [30:0] expFracRPostRounding_uid70_block_rsrvd_fix_o;
    wire [29:0] expFracRPostRounding_uid70_block_rsrvd_fix_q;
    wire [17:0] fracRPreExc_uid71_block_rsrvd_fix_in;
    wire [16:0] fracRPreExc_uid71_block_rsrvd_fix_b;
    wire [11:0] expRPreExcExt_uid72_block_rsrvd_fix_b;
    wire [7:0] expRPreExc_uid73_block_rsrvd_fix_in;
    wire [7:0] expRPreExc_uid73_block_rsrvd_fix_b;
    wire [13:0] expUdf_uid74_block_rsrvd_fix_a;
    wire [13:0] expUdf_uid74_block_rsrvd_fix_b;
    logic [13:0] expUdf_uid74_block_rsrvd_fix_o;
    wire [0:0] expUdf_uid74_block_rsrvd_fix_n;
    wire [13:0] expOvf_uid76_block_rsrvd_fix_a;
    wire [13:0] expOvf_uid76_block_rsrvd_fix_b;
    logic [13:0] expOvf_uid76_block_rsrvd_fix_o;
    wire [0:0] expOvf_uid76_block_rsrvd_fix_n;
    wire [0:0] excXZAndExcYZ_uid77_block_rsrvd_fix_q;
    wire [0:0] excXZAndExcYR_uid78_block_rsrvd_fix_q;
    wire [0:0] excYZAndExcXR_uid79_block_rsrvd_fix_q;
    wire [0:0] excZC3_uid80_block_rsrvd_fix_q;
    wire [0:0] excRZero_uid81_block_rsrvd_fix_qi;
    reg [0:0] excRZero_uid81_block_rsrvd_fix_q;
    wire [0:0] excXIAndExcYI_uid82_block_rsrvd_fix_q;
    wire [0:0] excXRAndExcYI_uid83_block_rsrvd_fix_q;
    wire [0:0] excYRAndExcXI_uid84_block_rsrvd_fix_q;
    wire [0:0] ExcROvfAndInReg_uid85_block_rsrvd_fix_q;
    wire [0:0] excRInf_uid86_block_rsrvd_fix_qi;
    reg [0:0] excRInf_uid86_block_rsrvd_fix_q;
    wire [0:0] excYZAndExcXI_uid87_block_rsrvd_fix_qi;
    reg [0:0] excYZAndExcXI_uid87_block_rsrvd_fix_q;
    wire [0:0] excXZAndExcYI_uid88_block_rsrvd_fix_qi;
    reg [0:0] excXZAndExcYI_uid88_block_rsrvd_fix_q;
    wire [0:0] ZeroTimesInf_uid89_block_rsrvd_fix_q;
    wire [0:0] excRNaN_uid90_block_rsrvd_fix_qi;
    reg [0:0] excRNaN_uid90_block_rsrvd_fix_q;
    wire [2:0] concExc_uid91_block_rsrvd_fix_q;
    reg [1:0] excREnc_uid92_block_rsrvd_fix_q;
    wire [16:0] oneFracRPostExc2_uid93_block_rsrvd_fix_q;
    wire [1:0] fracRPostExc_uid96_block_rsrvd_fix_s;
    reg [16:0] fracRPostExc_uid96_block_rsrvd_fix_q;
    wire [1:0] expRPostExc_uid101_block_rsrvd_fix_s;
    reg [7:0] expRPostExc_uid101_block_rsrvd_fix_q;
    wire [0:0] invExcRNaN_uid102_block_rsrvd_fix_q;
    wire [0:0] signRPostExc_uid103_block_rsrvd_fix_q;
    wire [25:0] R_uid104_block_rsrvd_fix_q;
    wire prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_reset;
    (* preserve *) reg [17:0] prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_a0 [0:0];
    (* preserve *) reg [17:0] prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_c0 [0:0];
    wire [35:0] prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_p [0:0];
    wire [35:0] prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_u [0:0];
    wire [35:0] prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_w [0:0];
    wire [35:0] prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_x [0:0];
    wire [35:0] prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_y [0:0];
    reg [35:0] prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_s [0:0];
    wire [35:0] prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_qq;
    wire [35:0] prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_q;
    wire prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ena0;
    wire prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ena1;
    reg [7:0] redist0_expRPreExc_uid73_block_rsrvd_fix_b_2_q;
    reg [7:0] redist0_expRPreExc_uid73_block_rsrvd_fix_b_2_delay_0;
    reg [11:0] redist1_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q;
    reg [16:0] redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3_q;
    reg [16:0] redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3_delay_0;
    reg [15:0] redist3_stickyRange_uid55_block_rsrvd_fix_b_1_q;
    reg [17:0] redist4_fracRPostNorm_uid54_block_rsrvd_fix_q_2_q;
    reg [17:0] redist5_fracRPostNorm_uid54_block_rsrvd_fix_q_3_q;
    reg [0:0] redist6_normalizeBit_uid50_block_rsrvd_fix_b_3_q;
    reg [0:0] redist6_normalizeBit_uid50_block_rsrvd_fix_b_3_delay_0;
    reg [0:0] redist6_normalizeBit_uid50_block_rsrvd_fix_b_3_delay_1;
    reg [0:0] redist7_signR_uid49_block_rsrvd_fix_q_8_q;
    reg [8:0] redist8_expSum_uid45_block_rsrvd_fix_q_4_q;
    reg [8:0] redist8_expSum_uid45_block_rsrvd_fix_q_4_delay_0;
    reg [8:0] redist8_expSum_uid45_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist9_excI_y_uid34_block_rsrvd_fix_q_1_q;
    reg [0:0] redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_q;
    reg [0:0] redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_0;
    reg [0:0] redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_1;
    reg [0:0] redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_2;
    reg [0:0] redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_3;
    reg [0:0] redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_q;
    reg [0:0] redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_0;
    reg [0:0] redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_1;
    reg [0:0] redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_2;
    reg [0:0] redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_3;
    reg [0:0] redist12_excZ_y_uid30_block_rsrvd_fix_q_6_q;
    reg [0:0] redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_0;
    reg [0:0] redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_1;
    reg [0:0] redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_2;
    reg [0:0] redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_3;
    reg [0:0] redist13_excZ_y_uid30_block_rsrvd_fix_q_7_q;
    reg [0:0] redist14_excI_x_uid20_block_rsrvd_fix_q_1_q;
    reg [0:0] redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_q;
    reg [0:0] redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_0;
    reg [0:0] redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_1;
    reg [0:0] redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_2;
    reg [0:0] redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_3;
    reg [0:0] redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_q;
    reg [0:0] redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_0;
    reg [0:0] redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_1;
    reg [0:0] redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_2;
    reg [0:0] redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_3;
    reg [0:0] redist17_excZ_x_uid16_block_rsrvd_fix_q_6_q;
    reg [0:0] redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_0;
    reg [0:0] redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_1;
    reg [0:0] redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_2;
    reg [0:0] redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_3;
    reg [0:0] redist18_excZ_x_uid16_block_rsrvd_fix_q_7_q;
    reg [16:0] redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3_inputreg0_q;


    // frac_x_uid15_block_rsrvd_fix(BITSELECT,14)@0
    assign frac_x_uid15_block_rsrvd_fix_b = in_0[16:0];

    // cstZeroWF_uid12_block_rsrvd_fix(CONSTANT,11)
    assign cstZeroWF_uid12_block_rsrvd_fix_q = $unsigned(17'b00000000000000000);

    // fracXIsZero_uid18_block_rsrvd_fix(LOGICAL,17)@0 + 1
    assign fracXIsZero_uid18_block_rsrvd_fix_qi = $unsigned(cstZeroWF_uid12_block_rsrvd_fix_q == frac_x_uid15_block_rsrvd_fix_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid18_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid18_block_rsrvd_fix_qi), .xout(fracXIsZero_uid18_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6(DELAY,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_0 <= '0;
            redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_1 <= '0;
            redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_2 <= '0;
            redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_3 <= '0;
            redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_q <= '0;
        end
        else
        begin
            redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_0 <= $unsigned(fracXIsZero_uid18_block_rsrvd_fix_q);
            redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_1 <= redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_0;
            redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_2 <= redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_1;
            redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_3 <= redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_2;
            redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_q <= redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_delay_3;
        end
    end

    // cstAllOWE_uid11_block_rsrvd_fix(CONSTANT,10)
    assign cstAllOWE_uid11_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // expX_uid7_block_rsrvd_fix(BITSELECT,6)@0
    assign expX_uid7_block_rsrvd_fix_b = in_0[24:17];

    // expXIsMax_uid17_block_rsrvd_fix(LOGICAL,16)@0 + 1
    assign expXIsMax_uid17_block_rsrvd_fix_qi = $unsigned(expX_uid7_block_rsrvd_fix_b == cstAllOWE_uid11_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid17_block_rsrvd_fix_delay ( .xin(expXIsMax_uid17_block_rsrvd_fix_qi), .xout(expXIsMax_uid17_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_expXIsMax_uid17_block_rsrvd_fix_q_6(DELAY,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_0 <= '0;
            redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_1 <= '0;
            redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_2 <= '0;
            redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_3 <= '0;
            redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_q <= '0;
        end
        else
        begin
            redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_0 <= $unsigned(expXIsMax_uid17_block_rsrvd_fix_q);
            redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_1 <= redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_0;
            redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_2 <= redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_1;
            redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_3 <= redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_2;
            redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_q <= redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_delay_3;
        end
    end

    // excI_x_uid20_block_rsrvd_fix(LOGICAL,19)@6
    assign excI_x_uid20_block_rsrvd_fix_q = redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_q & redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_q;

    // cstAllZWE_uid13_block_rsrvd_fix(CONSTANT,12)
    assign cstAllZWE_uid13_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // expY_uid8_block_rsrvd_fix(BITSELECT,7)@0
    assign expY_uid8_block_rsrvd_fix_b = in_1[24:17];

    // excZ_y_uid30_block_rsrvd_fix(LOGICAL,29)@0 + 1
    assign excZ_y_uid30_block_rsrvd_fix_qi = $unsigned(expY_uid8_block_rsrvd_fix_b == cstAllZWE_uid13_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_y_uid30_block_rsrvd_fix_delay ( .xin(excZ_y_uid30_block_rsrvd_fix_qi), .xout(excZ_y_uid30_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_excZ_y_uid30_block_rsrvd_fix_q_6(DELAY,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_0 <= '0;
            redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_1 <= '0;
            redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_2 <= '0;
            redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_3 <= '0;
            redist12_excZ_y_uid30_block_rsrvd_fix_q_6_q <= '0;
        end
        else
        begin
            redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_0 <= $unsigned(excZ_y_uid30_block_rsrvd_fix_q);
            redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_1 <= redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_0;
            redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_2 <= redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_1;
            redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_3 <= redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_2;
            redist12_excZ_y_uid30_block_rsrvd_fix_q_6_q <= redist12_excZ_y_uid30_block_rsrvd_fix_q_6_delay_3;
        end
    end

    // excYZAndExcXI_uid87_block_rsrvd_fix(LOGICAL,86)@6 + 1
    assign excYZAndExcXI_uid87_block_rsrvd_fix_qi = redist12_excZ_y_uid30_block_rsrvd_fix_q_6_q & excI_x_uid20_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excYZAndExcXI_uid87_block_rsrvd_fix_delay ( .xin(excYZAndExcXI_uid87_block_rsrvd_fix_qi), .xout(excYZAndExcXI_uid87_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // frac_y_uid29_block_rsrvd_fix(BITSELECT,28)@0
    assign frac_y_uid29_block_rsrvd_fix_b = in_1[16:0];

    // fracXIsZero_uid32_block_rsrvd_fix(LOGICAL,31)@0 + 1
    assign fracXIsZero_uid32_block_rsrvd_fix_qi = $unsigned(cstZeroWF_uid12_block_rsrvd_fix_q == frac_y_uid29_block_rsrvd_fix_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid32_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid32_block_rsrvd_fix_qi), .xout(fracXIsZero_uid32_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6(DELAY,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_0 <= '0;
            redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_1 <= '0;
            redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_2 <= '0;
            redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_3 <= '0;
            redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_q <= '0;
        end
        else
        begin
            redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_0 <= $unsigned(fracXIsZero_uid32_block_rsrvd_fix_q);
            redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_1 <= redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_0;
            redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_2 <= redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_1;
            redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_3 <= redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_2;
            redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_q <= redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_delay_3;
        end
    end

    // expXIsMax_uid31_block_rsrvd_fix(LOGICAL,30)@0 + 1
    assign expXIsMax_uid31_block_rsrvd_fix_qi = $unsigned(expY_uid8_block_rsrvd_fix_b == cstAllOWE_uid11_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid31_block_rsrvd_fix_delay ( .xin(expXIsMax_uid31_block_rsrvd_fix_qi), .xout(expXIsMax_uid31_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_expXIsMax_uid31_block_rsrvd_fix_q_6(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_0 <= '0;
            redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_1 <= '0;
            redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_2 <= '0;
            redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_3 <= '0;
            redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_q <= '0;
        end
        else
        begin
            redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_0 <= $unsigned(expXIsMax_uid31_block_rsrvd_fix_q);
            redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_1 <= redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_0;
            redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_2 <= redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_1;
            redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_3 <= redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_2;
            redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_q <= redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_delay_3;
        end
    end

    // excI_y_uid34_block_rsrvd_fix(LOGICAL,33)@6
    assign excI_y_uid34_block_rsrvd_fix_q = redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_q & redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_q;

    // excZ_x_uid16_block_rsrvd_fix(LOGICAL,15)@0 + 1
    assign excZ_x_uid16_block_rsrvd_fix_qi = $unsigned(expX_uid7_block_rsrvd_fix_b == cstAllZWE_uid13_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid16_block_rsrvd_fix_delay ( .xin(excZ_x_uid16_block_rsrvd_fix_qi), .xout(excZ_x_uid16_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_excZ_x_uid16_block_rsrvd_fix_q_6(DELAY,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_0 <= '0;
            redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_1 <= '0;
            redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_2 <= '0;
            redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_3 <= '0;
            redist17_excZ_x_uid16_block_rsrvd_fix_q_6_q <= '0;
        end
        else
        begin
            redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_0 <= $unsigned(excZ_x_uid16_block_rsrvd_fix_q);
            redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_1 <= redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_0;
            redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_2 <= redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_1;
            redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_3 <= redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_2;
            redist17_excZ_x_uid16_block_rsrvd_fix_q_6_q <= redist17_excZ_x_uid16_block_rsrvd_fix_q_6_delay_3;
        end
    end

    // excXZAndExcYI_uid88_block_rsrvd_fix(LOGICAL,87)@6 + 1
    assign excXZAndExcYI_uid88_block_rsrvd_fix_qi = redist17_excZ_x_uid16_block_rsrvd_fix_q_6_q & excI_y_uid34_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excXZAndExcYI_uid88_block_rsrvd_fix_delay ( .xin(excXZAndExcYI_uid88_block_rsrvd_fix_qi), .xout(excXZAndExcYI_uid88_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // ZeroTimesInf_uid89_block_rsrvd_fix(LOGICAL,88)@7
    assign ZeroTimesInf_uid89_block_rsrvd_fix_q = excXZAndExcYI_uid88_block_rsrvd_fix_q | excYZAndExcXI_uid87_block_rsrvd_fix_q;

    // fracXIsNotZero_uid33_block_rsrvd_fix(LOGICAL,32)@6
    assign fracXIsNotZero_uid33_block_rsrvd_fix_q = ~ (redist10_fracXIsZero_uid32_block_rsrvd_fix_q_6_q);

    // excN_y_uid35_block_rsrvd_fix(LOGICAL,34)@6 + 1
    assign excN_y_uid35_block_rsrvd_fix_qi = redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_q & fracXIsNotZero_uid33_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_y_uid35_block_rsrvd_fix_delay ( .xin(excN_y_uid35_block_rsrvd_fix_qi), .xout(excN_y_uid35_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid19_block_rsrvd_fix(LOGICAL,18)@6
    assign fracXIsNotZero_uid19_block_rsrvd_fix_q = ~ (redist15_fracXIsZero_uid18_block_rsrvd_fix_q_6_q);

    // excN_x_uid21_block_rsrvd_fix(LOGICAL,20)@6 + 1
    assign excN_x_uid21_block_rsrvd_fix_qi = redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_q & fracXIsNotZero_uid19_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_x_uid21_block_rsrvd_fix_delay ( .xin(excN_x_uid21_block_rsrvd_fix_qi), .xout(excN_x_uid21_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excRNaN_uid90_block_rsrvd_fix(LOGICAL,89)@7 + 1
    assign excRNaN_uid90_block_rsrvd_fix_qi = excN_x_uid21_block_rsrvd_fix_q | excN_y_uid35_block_rsrvd_fix_q | ZeroTimesInf_uid89_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRNaN_uid90_block_rsrvd_fix_delay ( .xin(excRNaN_uid90_block_rsrvd_fix_qi), .xout(excRNaN_uid90_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcRNaN_uid102_block_rsrvd_fix(LOGICAL,101)@8
    assign invExcRNaN_uid102_block_rsrvd_fix_q = ~ (excRNaN_uid90_block_rsrvd_fix_q);

    // signY_uid10_block_rsrvd_fix(BITSELECT,9)@0
    assign signY_uid10_block_rsrvd_fix_b = $unsigned(in_1[25:25]);

    // signX_uid9_block_rsrvd_fix(BITSELECT,8)@0
    assign signX_uid9_block_rsrvd_fix_b = $unsigned(in_0[25:25]);

    // signR_uid49_block_rsrvd_fix(LOGICAL,48)@0 + 1
    assign signR_uid49_block_rsrvd_fix_qi = signX_uid9_block_rsrvd_fix_b ^ signY_uid10_block_rsrvd_fix_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signR_uid49_block_rsrvd_fix_delay ( .xin(signR_uid49_block_rsrvd_fix_qi), .xout(signR_uid49_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_signR_uid49_block_rsrvd_fix_q_8(DELAY,116)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_signR_uid49_block_rsrvd_fix_q_8 ( .xin(signR_uid49_block_rsrvd_fix_q), .xout(redist7_signR_uid49_block_rsrvd_fix_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // signRPostExc_uid103_block_rsrvd_fix(LOGICAL,102)@8
    assign signRPostExc_uid103_block_rsrvd_fix_q = redist7_signR_uid49_block_rsrvd_fix_q_8_q & invExcRNaN_uid102_block_rsrvd_fix_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // ofracY_uid44_block_rsrvd_fix(BITJOIN,43)@0
    assign ofracY_uid44_block_rsrvd_fix_q = {VCC_q, frac_y_uid29_block_rsrvd_fix_b};

    // ofracX_uid41_block_rsrvd_fix(BITJOIN,40)@0
    assign ofracX_uid41_block_rsrvd_fix_q = {VCC_q, frac_x_uid15_block_rsrvd_fix_b};

    // prodXY_uid106_prod_uid48_block_rsrvd_fix_cma(CHAINMULTADD,108)@0 + 2
    assign prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_reset = ~ (resetn);
    assign prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ena0 = 1'b1;
    assign prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ena1 = prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ena0;
    assign prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_p[0] = prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_a0[0] * prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_c0[0];
    assign prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_u[0] = prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_p[0][35:0];
    assign prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_w[0] = prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_u[0];
    assign prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_x[0] = prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_w[0];
    assign prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_y[0] = prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_a0 <= '{default: '0};
            prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ena0 == 1'b1)
            begin
                prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_a0[0] <= ofracX_uid41_block_rsrvd_fix_q;
                prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_c0[0] <= ofracY_uid44_block_rsrvd_fix_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_ena1 == 1'b1)
            begin
                prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_s[0] <= prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_delay ( .xin(prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_s[0]), .xout(prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_q = $unsigned(prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_qq[35:0]);

    // normalizeBit_uid50_block_rsrvd_fix(BITSELECT,49)@2
    assign normalizeBit_uid50_block_rsrvd_fix_b = $unsigned(prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_q[35:35]);

    // redist6_normalizeBit_uid50_block_rsrvd_fix_b_3(DELAY,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_normalizeBit_uid50_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist6_normalizeBit_uid50_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist6_normalizeBit_uid50_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist6_normalizeBit_uid50_block_rsrvd_fix_b_3_delay_0 <= $unsigned(normalizeBit_uid50_block_rsrvd_fix_b);
            redist6_normalizeBit_uid50_block_rsrvd_fix_b_3_delay_1 <= redist6_normalizeBit_uid50_block_rsrvd_fix_b_3_delay_0;
            redist6_normalizeBit_uid50_block_rsrvd_fix_b_3_q <= redist6_normalizeBit_uid50_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // roundBitDetectionConstant_uid64_block_rsrvd_fix(CONSTANT,63)
    assign roundBitDetectionConstant_uid64_block_rsrvd_fix_q = $unsigned(3'b010);

    // fracRPostNormHigh_uid52_block_rsrvd_fix(BITSELECT,51)@2
    assign fracRPostNormHigh_uid52_block_rsrvd_fix_in = prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_q[34:0];
    assign fracRPostNormHigh_uid52_block_rsrvd_fix_b = fracRPostNormHigh_uid52_block_rsrvd_fix_in[34:17];

    // fracRPostNormLow_uid53_block_rsrvd_fix(BITSELECT,52)@2
    assign fracRPostNormLow_uid53_block_rsrvd_fix_in = prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_q[33:0];
    assign fracRPostNormLow_uid53_block_rsrvd_fix_b = fracRPostNormLow_uid53_block_rsrvd_fix_in[33:16];

    // fracRPostNorm_uid54_block_rsrvd_fix(MUX,53)@2 + 1
    assign fracRPostNorm_uid54_block_rsrvd_fix_s = normalizeBit_uid50_block_rsrvd_fix_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            fracRPostNorm_uid54_block_rsrvd_fix_q <= 18'b0;
        end
        else
        begin
            unique case (fracRPostNorm_uid54_block_rsrvd_fix_s)
                1'b0 : fracRPostNorm_uid54_block_rsrvd_fix_q <= fracRPostNormLow_uid53_block_rsrvd_fix_b;
                1'b1 : fracRPostNorm_uid54_block_rsrvd_fix_q <= fracRPostNormHigh_uid52_block_rsrvd_fix_b;
                default : fracRPostNorm_uid54_block_rsrvd_fix_q <= 18'b0;
            endcase
        end
    end

    // redist4_fracRPostNorm_uid54_block_rsrvd_fix_q_2(DELAY,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_fracRPostNorm_uid54_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist4_fracRPostNorm_uid54_block_rsrvd_fix_q_2_q <= $unsigned(fracRPostNorm_uid54_block_rsrvd_fix_q);
        end
    end

    // fracRPostNorm1dto0_uid62_block_rsrvd_fix(BITSELECT,61)@4
    assign fracRPostNorm1dto0_uid62_block_rsrvd_fix_in = redist4_fracRPostNorm_uid54_block_rsrvd_fix_q_2_q[1:0];
    assign fracRPostNorm1dto0_uid62_block_rsrvd_fix_b = fracRPostNorm1dto0_uid62_block_rsrvd_fix_in[1:0];

    // extraStickyBitOfProd_uid56_block_rsrvd_fix(BITSELECT,55)@2
    assign extraStickyBitOfProd_uid56_block_rsrvd_fix_in = $unsigned(prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_q[16:0]);
    assign extraStickyBitOfProd_uid56_block_rsrvd_fix_b = $unsigned(extraStickyBitOfProd_uid56_block_rsrvd_fix_in[16:16]);

    // extraStickyBit_uid57_block_rsrvd_fix(MUX,56)@2 + 1
    assign extraStickyBit_uid57_block_rsrvd_fix_s = normalizeBit_uid50_block_rsrvd_fix_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            extraStickyBit_uid57_block_rsrvd_fix_q <= 1'b0;
        end
        else
        begin
            unique case (extraStickyBit_uid57_block_rsrvd_fix_s)
                1'b0 : extraStickyBit_uid57_block_rsrvd_fix_q <= GND_q;
                1'b1 : extraStickyBit_uid57_block_rsrvd_fix_q <= extraStickyBitOfProd_uid56_block_rsrvd_fix_b;
                default : extraStickyBit_uid57_block_rsrvd_fix_q <= 1'b0;
            endcase
        end
    end

    // stickyRange_uid55_block_rsrvd_fix(BITSELECT,54)@2
    assign stickyRange_uid55_block_rsrvd_fix_in = prodXY_uid106_prod_uid48_block_rsrvd_fix_cma_q[15:0];
    assign stickyRange_uid55_block_rsrvd_fix_b = stickyRange_uid55_block_rsrvd_fix_in[15:0];

    // redist3_stickyRange_uid55_block_rsrvd_fix_b_1(DELAY,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_stickyRange_uid55_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist3_stickyRange_uid55_block_rsrvd_fix_b_1_q <= $unsigned(stickyRange_uid55_block_rsrvd_fix_b);
        end
    end

    // stickyExtendedRange_uid58_block_rsrvd_fix(BITJOIN,57)@3
    assign stickyExtendedRange_uid58_block_rsrvd_fix_q = {extraStickyBit_uid57_block_rsrvd_fix_q, redist3_stickyRange_uid55_block_rsrvd_fix_b_1_q};

    // stickyRangeComparator_uid60_block_rsrvd_fix(LOGICAL,59)@3 + 1
    assign stickyRangeComparator_uid60_block_rsrvd_fix_qi = $unsigned(stickyExtendedRange_uid58_block_rsrvd_fix_q == cstZeroWF_uid12_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    stickyRangeComparator_uid60_block_rsrvd_fix_delay ( .xin(stickyRangeComparator_uid60_block_rsrvd_fix_qi), .xout(stickyRangeComparator_uid60_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sticky_uid61_block_rsrvd_fix(LOGICAL,60)@4
    assign sticky_uid61_block_rsrvd_fix_q = ~ (stickyRangeComparator_uid60_block_rsrvd_fix_q);

    // lrs_uid63_block_rsrvd_fix(BITJOIN,62)@4
    assign lrs_uid63_block_rsrvd_fix_q = {fracRPostNorm1dto0_uid62_block_rsrvd_fix_b, sticky_uid61_block_rsrvd_fix_q};

    // roundBitDetectionPattern_uid65_block_rsrvd_fix(LOGICAL,64)@4 + 1
    assign roundBitDetectionPattern_uid65_block_rsrvd_fix_qi = $unsigned(lrs_uid63_block_rsrvd_fix_q == roundBitDetectionConstant_uid64_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    roundBitDetectionPattern_uid65_block_rsrvd_fix_delay ( .xin(roundBitDetectionPattern_uid65_block_rsrvd_fix_qi), .xout(roundBitDetectionPattern_uid65_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // roundBit_uid66_block_rsrvd_fix(LOGICAL,65)@5
    assign roundBit_uid66_block_rsrvd_fix_q = ~ (roundBitDetectionPattern_uid65_block_rsrvd_fix_q);

    // roundBitAndNormalizationOp_uid69_block_rsrvd_fix(BITJOIN,68)@5
    assign roundBitAndNormalizationOp_uid69_block_rsrvd_fix_q = {GND_q, redist6_normalizeBit_uid50_block_rsrvd_fix_b_3_q, cstZeroWF_uid12_block_rsrvd_fix_q, roundBit_uid66_block_rsrvd_fix_q};

    // biasInc_uid46_block_rsrvd_fix(CONSTANT,45)
    assign biasInc_uid46_block_rsrvd_fix_q = $unsigned(10'b0001111111);

    // expSum_uid45_block_rsrvd_fix(ADD,44)@0 + 1
    assign expSum_uid45_block_rsrvd_fix_a = {1'b0, expX_uid7_block_rsrvd_fix_b};
    assign expSum_uid45_block_rsrvd_fix_b = {1'b0, expY_uid8_block_rsrvd_fix_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expSum_uid45_block_rsrvd_fix_o <= 9'b0;
        end
        else
        begin
            expSum_uid45_block_rsrvd_fix_o <= $unsigned(expSum_uid45_block_rsrvd_fix_a) + $unsigned(expSum_uid45_block_rsrvd_fix_b);
        end
    end
    assign expSum_uid45_block_rsrvd_fix_q = expSum_uid45_block_rsrvd_fix_o[8:0];

    // redist8_expSum_uid45_block_rsrvd_fix_q_4(DELAY,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_expSum_uid45_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist8_expSum_uid45_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist8_expSum_uid45_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist8_expSum_uid45_block_rsrvd_fix_q_4_delay_0 <= $unsigned(expSum_uid45_block_rsrvd_fix_q);
            redist8_expSum_uid45_block_rsrvd_fix_q_4_delay_1 <= redist8_expSum_uid45_block_rsrvd_fix_q_4_delay_0;
            redist8_expSum_uid45_block_rsrvd_fix_q_4_q <= redist8_expSum_uid45_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // expSumMBias_uid47_block_rsrvd_fix(SUB,46)@4 + 1
    assign expSumMBias_uid47_block_rsrvd_fix_a = $unsigned({3'b000, redist8_expSum_uid45_block_rsrvd_fix_q_4_q});
    assign expSumMBias_uid47_block_rsrvd_fix_b = $unsigned({{2{biasInc_uid46_block_rsrvd_fix_q[9]}}, biasInc_uid46_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expSumMBias_uid47_block_rsrvd_fix_o <= 12'b0;
        end
        else
        begin
            expSumMBias_uid47_block_rsrvd_fix_o <= $unsigned($signed(expSumMBias_uid47_block_rsrvd_fix_a) - $signed(expSumMBias_uid47_block_rsrvd_fix_b));
        end
    end
    assign expSumMBias_uid47_block_rsrvd_fix_q = expSumMBias_uid47_block_rsrvd_fix_o[10:0];

    // redist5_fracRPostNorm_uid54_block_rsrvd_fix_q_3(DELAY,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_fracRPostNorm_uid54_block_rsrvd_fix_q_3_q <= '0;
        end
        else
        begin
            redist5_fracRPostNorm_uid54_block_rsrvd_fix_q_3_q <= $unsigned(redist4_fracRPostNorm_uid54_block_rsrvd_fix_q_2_q);
        end
    end

    // expFracPreRound_uid67_block_rsrvd_fix(BITJOIN,66)@5
    assign expFracPreRound_uid67_block_rsrvd_fix_q = {expSumMBias_uid47_block_rsrvd_fix_q, redist5_fracRPostNorm_uid54_block_rsrvd_fix_q_3_q};

    // expFracRPostRounding_uid70_block_rsrvd_fix(ADD,69)@5
    assign expFracRPostRounding_uid70_block_rsrvd_fix_a = $unsigned({{2{expFracPreRound_uid67_block_rsrvd_fix_q[28]}}, expFracPreRound_uid67_block_rsrvd_fix_q});
    assign expFracRPostRounding_uid70_block_rsrvd_fix_b = $unsigned({11'b00000000000, roundBitAndNormalizationOp_uid69_block_rsrvd_fix_q});
    assign expFracRPostRounding_uid70_block_rsrvd_fix_o = $unsigned($signed(expFracRPostRounding_uid70_block_rsrvd_fix_a) + $signed(expFracRPostRounding_uid70_block_rsrvd_fix_b));
    assign expFracRPostRounding_uid70_block_rsrvd_fix_q = expFracRPostRounding_uid70_block_rsrvd_fix_o[29:0];

    // expRPreExcExt_uid72_block_rsrvd_fix(BITSELECT,71)@5
    assign expRPreExcExt_uid72_block_rsrvd_fix_b = $unsigned(expFracRPostRounding_uid70_block_rsrvd_fix_q[29:18]);

    // redist1_expRPreExcExt_uid72_block_rsrvd_fix_b_1(DELAY,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist1_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q <= $unsigned(expRPreExcExt_uid72_block_rsrvd_fix_b);
        end
    end

    // expRPreExc_uid73_block_rsrvd_fix(BITSELECT,72)@6
    assign expRPreExc_uid73_block_rsrvd_fix_in = redist1_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q[7:0];
    assign expRPreExc_uid73_block_rsrvd_fix_b = expRPreExc_uid73_block_rsrvd_fix_in[7:0];

    // redist0_expRPreExc_uid73_block_rsrvd_fix_b_2(DELAY,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_expRPreExc_uid73_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist0_expRPreExc_uid73_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist0_expRPreExc_uid73_block_rsrvd_fix_b_2_delay_0 <= $unsigned(expRPreExc_uid73_block_rsrvd_fix_b);
            redist0_expRPreExc_uid73_block_rsrvd_fix_b_2_q <= redist0_expRPreExc_uid73_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // expOvf_uid76_block_rsrvd_fix(COMPARE,75)@6 + 1
    assign expOvf_uid76_block_rsrvd_fix_a = $unsigned({{2{redist1_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q[11]}}, redist1_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q});
    assign expOvf_uid76_block_rsrvd_fix_b = $unsigned({6'b000000, cstAllOWE_uid11_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expOvf_uid76_block_rsrvd_fix_o <= 14'b0;
        end
        else
        begin
            expOvf_uid76_block_rsrvd_fix_o <= $unsigned($signed(expOvf_uid76_block_rsrvd_fix_a) - $signed(expOvf_uid76_block_rsrvd_fix_b));
        end
    end
    assign expOvf_uid76_block_rsrvd_fix_n[0] = ~ (expOvf_uid76_block_rsrvd_fix_o[13]);

    // invExpXIsMax_uid36_block_rsrvd_fix(LOGICAL,35)@6
    assign invExpXIsMax_uid36_block_rsrvd_fix_q = ~ (redist11_expXIsMax_uid31_block_rsrvd_fix_q_6_q);

    // InvExpXIsZero_uid37_block_rsrvd_fix(LOGICAL,36)@6
    assign InvExpXIsZero_uid37_block_rsrvd_fix_q = ~ (redist12_excZ_y_uid30_block_rsrvd_fix_q_6_q);

    // excR_y_uid38_block_rsrvd_fix(LOGICAL,37)@6 + 1
    assign excR_y_uid38_block_rsrvd_fix_qi = InvExpXIsZero_uid37_block_rsrvd_fix_q & invExpXIsMax_uid36_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excR_y_uid38_block_rsrvd_fix_delay ( .xin(excR_y_uid38_block_rsrvd_fix_qi), .xout(excR_y_uid38_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExpXIsMax_uid22_block_rsrvd_fix(LOGICAL,21)@6
    assign invExpXIsMax_uid22_block_rsrvd_fix_q = ~ (redist16_expXIsMax_uid17_block_rsrvd_fix_q_6_q);

    // InvExpXIsZero_uid23_block_rsrvd_fix(LOGICAL,22)@6
    assign InvExpXIsZero_uid23_block_rsrvd_fix_q = ~ (redist17_excZ_x_uid16_block_rsrvd_fix_q_6_q);

    // excR_x_uid24_block_rsrvd_fix(LOGICAL,23)@6 + 1
    assign excR_x_uid24_block_rsrvd_fix_qi = InvExpXIsZero_uid23_block_rsrvd_fix_q & invExpXIsMax_uid22_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excR_x_uid24_block_rsrvd_fix_delay ( .xin(excR_x_uid24_block_rsrvd_fix_qi), .xout(excR_x_uid24_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // ExcROvfAndInReg_uid85_block_rsrvd_fix(LOGICAL,84)@7
    assign ExcROvfAndInReg_uid85_block_rsrvd_fix_q = excR_x_uid24_block_rsrvd_fix_q & excR_y_uid38_block_rsrvd_fix_q & expOvf_uid76_block_rsrvd_fix_n;

    // redist14_excI_x_uid20_block_rsrvd_fix_q_1(DELAY,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_excI_x_uid20_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist14_excI_x_uid20_block_rsrvd_fix_q_1_q <= $unsigned(excI_x_uid20_block_rsrvd_fix_q);
        end
    end

    // excYRAndExcXI_uid84_block_rsrvd_fix(LOGICAL,83)@7
    assign excYRAndExcXI_uid84_block_rsrvd_fix_q = excR_y_uid38_block_rsrvd_fix_q & redist14_excI_x_uid20_block_rsrvd_fix_q_1_q;

    // redist9_excI_y_uid34_block_rsrvd_fix_q_1(DELAY,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_excI_y_uid34_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist9_excI_y_uid34_block_rsrvd_fix_q_1_q <= $unsigned(excI_y_uid34_block_rsrvd_fix_q);
        end
    end

    // excXRAndExcYI_uid83_block_rsrvd_fix(LOGICAL,82)@7
    assign excXRAndExcYI_uid83_block_rsrvd_fix_q = excR_x_uid24_block_rsrvd_fix_q & redist9_excI_y_uid34_block_rsrvd_fix_q_1_q;

    // excXIAndExcYI_uid82_block_rsrvd_fix(LOGICAL,81)@7
    assign excXIAndExcYI_uid82_block_rsrvd_fix_q = redist14_excI_x_uid20_block_rsrvd_fix_q_1_q & redist9_excI_y_uid34_block_rsrvd_fix_q_1_q;

    // excRInf_uid86_block_rsrvd_fix(LOGICAL,85)@7 + 1
    assign excRInf_uid86_block_rsrvd_fix_qi = excXIAndExcYI_uid82_block_rsrvd_fix_q | excXRAndExcYI_uid83_block_rsrvd_fix_q | excYRAndExcXI_uid84_block_rsrvd_fix_q | ExcROvfAndInReg_uid85_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRInf_uid86_block_rsrvd_fix_delay ( .xin(excRInf_uid86_block_rsrvd_fix_qi), .xout(excRInf_uid86_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expUdf_uid74_block_rsrvd_fix(COMPARE,73)@6 + 1
    assign expUdf_uid74_block_rsrvd_fix_a = $unsigned({13'b0000000000000, GND_q});
    assign expUdf_uid74_block_rsrvd_fix_b = $unsigned({{2{redist1_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q[11]}}, redist1_expRPreExcExt_uid72_block_rsrvd_fix_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expUdf_uid74_block_rsrvd_fix_o <= 14'b0;
        end
        else
        begin
            expUdf_uid74_block_rsrvd_fix_o <= $unsigned($signed(expUdf_uid74_block_rsrvd_fix_a) - $signed(expUdf_uid74_block_rsrvd_fix_b));
        end
    end
    assign expUdf_uid74_block_rsrvd_fix_n[0] = ~ (expUdf_uid74_block_rsrvd_fix_o[13]);

    // excZC3_uid80_block_rsrvd_fix(LOGICAL,79)@7
    assign excZC3_uid80_block_rsrvd_fix_q = excR_x_uid24_block_rsrvd_fix_q & excR_y_uid38_block_rsrvd_fix_q & expUdf_uid74_block_rsrvd_fix_n;

    // redist13_excZ_y_uid30_block_rsrvd_fix_q_7(DELAY,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_excZ_y_uid30_block_rsrvd_fix_q_7_q <= '0;
        end
        else
        begin
            redist13_excZ_y_uid30_block_rsrvd_fix_q_7_q <= $unsigned(redist12_excZ_y_uid30_block_rsrvd_fix_q_6_q);
        end
    end

    // excYZAndExcXR_uid79_block_rsrvd_fix(LOGICAL,78)@7
    assign excYZAndExcXR_uid79_block_rsrvd_fix_q = redist13_excZ_y_uid30_block_rsrvd_fix_q_7_q & excR_x_uid24_block_rsrvd_fix_q;

    // redist18_excZ_x_uid16_block_rsrvd_fix_q_7(DELAY,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_excZ_x_uid16_block_rsrvd_fix_q_7_q <= '0;
        end
        else
        begin
            redist18_excZ_x_uid16_block_rsrvd_fix_q_7_q <= $unsigned(redist17_excZ_x_uid16_block_rsrvd_fix_q_6_q);
        end
    end

    // excXZAndExcYR_uid78_block_rsrvd_fix(LOGICAL,77)@7
    assign excXZAndExcYR_uid78_block_rsrvd_fix_q = redist18_excZ_x_uid16_block_rsrvd_fix_q_7_q & excR_y_uid38_block_rsrvd_fix_q;

    // excXZAndExcYZ_uid77_block_rsrvd_fix(LOGICAL,76)@7
    assign excXZAndExcYZ_uid77_block_rsrvd_fix_q = redist18_excZ_x_uid16_block_rsrvd_fix_q_7_q & redist13_excZ_y_uid30_block_rsrvd_fix_q_7_q;

    // excRZero_uid81_block_rsrvd_fix(LOGICAL,80)@7 + 1
    assign excRZero_uid81_block_rsrvd_fix_qi = excXZAndExcYZ_uid77_block_rsrvd_fix_q | excXZAndExcYR_uid78_block_rsrvd_fix_q | excYZAndExcXR_uid79_block_rsrvd_fix_q | excZC3_uid80_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRZero_uid81_block_rsrvd_fix_delay ( .xin(excRZero_uid81_block_rsrvd_fix_qi), .xout(excRZero_uid81_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // concExc_uid91_block_rsrvd_fix(BITJOIN,90)@8
    assign concExc_uid91_block_rsrvd_fix_q = {excRNaN_uid90_block_rsrvd_fix_q, excRInf_uid86_block_rsrvd_fix_q, excRZero_uid81_block_rsrvd_fix_q};

    // excREnc_uid92_block_rsrvd_fix(LOOKUP,91)@8
    always @(concExc_uid91_block_rsrvd_fix_q)
    begin
        // Begin reserved scope level
        unique case (concExc_uid91_block_rsrvd_fix_q)
            3'b000 : excREnc_uid92_block_rsrvd_fix_q = 2'b01;
            3'b001 : excREnc_uid92_block_rsrvd_fix_q = 2'b00;
            3'b010 : excREnc_uid92_block_rsrvd_fix_q = 2'b10;
            3'b011 : excREnc_uid92_block_rsrvd_fix_q = 2'b00;
            3'b100 : excREnc_uid92_block_rsrvd_fix_q = 2'b11;
            3'b101 : excREnc_uid92_block_rsrvd_fix_q = 2'b00;
            3'b110 : excREnc_uid92_block_rsrvd_fix_q = 2'b00;
            3'b111 : excREnc_uid92_block_rsrvd_fix_q = 2'b00;
            default : begin
                          // unreachable
                          excREnc_uid92_block_rsrvd_fix_q = 2'bxx;
                      end
        endcase
        // End reserved scope level
    end

    // expRPostExc_uid101_block_rsrvd_fix(MUX,100)@8
    assign expRPostExc_uid101_block_rsrvd_fix_s = excREnc_uid92_block_rsrvd_fix_q;
    always @(expRPostExc_uid101_block_rsrvd_fix_s or cstAllZWE_uid13_block_rsrvd_fix_q or redist0_expRPreExc_uid73_block_rsrvd_fix_b_2_q or cstAllOWE_uid11_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid101_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid101_block_rsrvd_fix_q = cstAllZWE_uid13_block_rsrvd_fix_q;
            2'b01 : expRPostExc_uid101_block_rsrvd_fix_q = redist0_expRPreExc_uid73_block_rsrvd_fix_b_2_q;
            2'b10 : expRPostExc_uid101_block_rsrvd_fix_q = cstAllOWE_uid11_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid101_block_rsrvd_fix_q = cstAllOWE_uid11_block_rsrvd_fix_q;
            default : expRPostExc_uid101_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // oneFracRPostExc2_uid93_block_rsrvd_fix(CONSTANT,92)
    assign oneFracRPostExc2_uid93_block_rsrvd_fix_q = $unsigned(17'b00000000000000001);

    // fracRPreExc_uid71_block_rsrvd_fix(BITSELECT,70)@5
    assign fracRPreExc_uid71_block_rsrvd_fix_in = expFracRPostRounding_uid70_block_rsrvd_fix_q[17:0];
    assign fracRPreExc_uid71_block_rsrvd_fix_b = fracRPreExc_uid71_block_rsrvd_fix_in[17:1];

    // redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3_inputreg0(DELAY,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3_inputreg0_q <= '0;
        end
        else
        begin
            redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3_inputreg0_q <= $unsigned(fracRPreExc_uid71_block_rsrvd_fix_b);
        end
    end

    // redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3(DELAY,111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3_delay_0 <= $unsigned(redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3_inputreg0_q);
            redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3_q <= redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3_delay_0;
        end
    end

    // fracRPostExc_uid96_block_rsrvd_fix(MUX,95)@8
    assign fracRPostExc_uid96_block_rsrvd_fix_s = excREnc_uid92_block_rsrvd_fix_q;
    always @(fracRPostExc_uid96_block_rsrvd_fix_s or cstZeroWF_uid12_block_rsrvd_fix_q or redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3_q or oneFracRPostExc2_uid93_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid96_block_rsrvd_fix_s)
            2'b00 : fracRPostExc_uid96_block_rsrvd_fix_q = cstZeroWF_uid12_block_rsrvd_fix_q;
            2'b01 : fracRPostExc_uid96_block_rsrvd_fix_q = redist2_fracRPreExc_uid71_block_rsrvd_fix_b_3_q;
            2'b10 : fracRPostExc_uid96_block_rsrvd_fix_q = cstZeroWF_uid12_block_rsrvd_fix_q;
            2'b11 : fracRPostExc_uid96_block_rsrvd_fix_q = oneFracRPostExc2_uid93_block_rsrvd_fix_q;
            default : fracRPostExc_uid96_block_rsrvd_fix_q = 17'b0;
        endcase
    end

    // R_uid104_block_rsrvd_fix(BITJOIN,103)@8
    assign R_uid104_block_rsrvd_fix_q = {signRPostExc_uid103_block_rsrvd_fix_q, expRPostExc_uid101_block_rsrvd_fix_q, fracRPostExc_uid96_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,5)@8
    assign out_primWireOut = R_uid104_block_rsrvd_fix_q;

endmodule
