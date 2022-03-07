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

// SystemVerilog created from flt_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i460_dfr0_castBlock_typeSFixed_32_0_typeSFloatIEEE_17_8_castModeConvert_3v5ih687gkxgqycwbc9pi063065064663c62i61o60u60164162763d65d64j63p612c0e63e65ei2w65w613c5f60uq5ux5gv8yll5gvbyxk5mx06of0cd16ol0cd06cj0qfzo
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:29:59 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_flt_i_llvm_fpga_vpfp_cast_from_fixed0000f0cd16ol0cd06cj0qfzo (
    input wire [31:0] in_0,
    output wire [25:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] signX_uid6_block_rsrvd_fix_b;
    wire [31:0] xXorSign_uid7_block_rsrvd_fix_b;
    wire [31:0] xXorSign_uid7_block_rsrvd_fix_qi;
    reg [31:0] xXorSign_uid7_block_rsrvd_fix_q;
    wire [32:0] yE_uid8_block_rsrvd_fix_a;
    wire [32:0] yE_uid8_block_rsrvd_fix_b;
    logic [32:0] yE_uid8_block_rsrvd_fix_o;
    wire [32:0] yE_uid8_block_rsrvd_fix_q;
    wire [31:0] y_uid9_block_rsrvd_fix_in;
    wire [31:0] y_uid9_block_rsrvd_fix_b;
    wire [5:0] maxCount_uid11_block_rsrvd_fix_q;
    wire [0:0] inIsZero_uid12_block_rsrvd_fix_qi;
    reg [0:0] inIsZero_uid12_block_rsrvd_fix_q;
    wire [7:0] msbIn_uid13_block_rsrvd_fix_q;
    wire [8:0] expPreRnd_uid14_block_rsrvd_fix_a;
    wire [8:0] expPreRnd_uid14_block_rsrvd_fix_b;
    logic [8:0] expPreRnd_uid14_block_rsrvd_fix_o;
    wire [8:0] expPreRnd_uid14_block_rsrvd_fix_q;
    wire [26:0] expFracRnd_uid16_block_rsrvd_fix_q;
    wire [0:0] sticky_uid20_block_rsrvd_fix_qi;
    reg [0:0] sticky_uid20_block_rsrvd_fix_q;
    wire [0:0] nr_uid21_block_rsrvd_fix_q;
    wire [0:0] rnd_uid22_block_rsrvd_fix_qi;
    reg [0:0] rnd_uid22_block_rsrvd_fix_q;
    wire [28:0] expFracR_uid24_block_rsrvd_fix_a;
    wire [28:0] expFracR_uid24_block_rsrvd_fix_b;
    logic [28:0] expFracR_uid24_block_rsrvd_fix_o;
    wire [27:0] expFracR_uid24_block_rsrvd_fix_q;
    wire [17:0] fracR_uid25_block_rsrvd_fix_in;
    wire [16:0] fracR_uid25_block_rsrvd_fix_b;
    wire [9:0] expR_uid26_block_rsrvd_fix_b;
    wire [11:0] udf_uid27_block_rsrvd_fix_a;
    wire [11:0] udf_uid27_block_rsrvd_fix_b;
    logic [11:0] udf_uid27_block_rsrvd_fix_o;
    wire [0:0] udf_uid27_block_rsrvd_fix_n;
    wire [7:0] expInf_uid28_block_rsrvd_fix_q;
    wire [11:0] ovf_uid29_block_rsrvd_fix_a;
    wire [11:0] ovf_uid29_block_rsrvd_fix_b;
    logic [11:0] ovf_uid29_block_rsrvd_fix_o;
    wire [0:0] ovf_uid29_block_rsrvd_fix_n;
    wire [0:0] excSelector_uid30_block_rsrvd_fix_q;
    wire [16:0] fracZ_uid31_block_rsrvd_fix_q;
    wire [0:0] fracRPostExc_uid32_block_rsrvd_fix_s;
    reg [16:0] fracRPostExc_uid32_block_rsrvd_fix_q;
    wire [0:0] udfOrInZero_uid33_block_rsrvd_fix_q;
    wire [1:0] excSelector_uid34_block_rsrvd_fix_q;
    wire [7:0] expZ_uid37_block_rsrvd_fix_q;
    wire [7:0] expR_uid38_block_rsrvd_fix_in;
    wire [7:0] expR_uid38_block_rsrvd_fix_b;
    wire [1:0] expRPostExc_uid39_block_rsrvd_fix_s;
    reg [7:0] expRPostExc_uid39_block_rsrvd_fix_q;
    wire [25:0] outRes_uid40_block_rsrvd_fix_q;
    wire [31:0] zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [15:0] zs_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [31:0] cStage_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [31:0] cStage_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [3:0] zs_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [31:0] cStage_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [1:0] zs_uid68_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [31:0] cStage_uid73_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid77_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [31:0] cStage_uid80_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [31:0] vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [5:0] vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [7:0] vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_a;
    wire [7:0] vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_b;
    logic [7:0] vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_o;
    wire [0:0] vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_c;
    wire [0:0] vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [5:0] vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [1:0] l_uid17_block_rsrvd_fix_merged_bit_select_in;
    wire [0:0] l_uid17_block_rsrvd_fix_merged_bit_select_b;
    wire [0:0] l_uid17_block_rsrvd_fix_merged_bit_select_c;
    wire [15:0] rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b;
    wire [15:0] rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c;
    wire [7:0] rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b;
    wire [23:0] rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c;
    wire [3:0] rVStage_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b;
    wire [27:0] rVStage_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rVStage_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b;
    wire [29:0] rVStage_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c;
    wire [0:0] rVStage_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b;
    wire [30:0] rVStage_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c;
    wire [30:0] fracRnd_uid15_block_rsrvd_fix_merged_bit_select_in;
    wire [17:0] fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b;
    wire [12:0] fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c;
    reg [17:0] redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_3_q;
    reg [17:0] redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_3_delay_0;
    reg [12:0] redist1_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [23:0] redist2_rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [15:0] redist3_rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [5:0] redist4_vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q;
    reg [0:0] redist5_vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q;
    reg [0:0] redist6_vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q;
    reg [0:0] redist6_vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_delay_0;
    reg [0:0] redist7_vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_q;
    reg [0:0] redist7_vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist7_vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_1;
    reg [31:0] redist8_vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q;
    reg [0:0] redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_q;
    reg [0:0] redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_0;
    reg [0:0] redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_1;
    reg [0:0] redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_2;
    reg [0:0] redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_3;
    reg [31:0] redist10_vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q;
    reg [0:0] redist11_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_8_q;
    reg [7:0] redist12_expR_uid38_block_rsrvd_fix_b_1_q;
    reg [9:0] redist13_expR_uid26_block_rsrvd_fix_b_1_q;
    reg [16:0] redist14_fracR_uid25_block_rsrvd_fix_b_2_q;
    reg [16:0] redist14_fracR_uid25_block_rsrvd_fix_b_2_delay_0;
    reg [0:0] redist15_sticky_uid20_block_rsrvd_fix_q_2_q;
    reg [26:0] redist16_expFracRnd_uid16_block_rsrvd_fix_q_1_q;
    reg [0:0] redist17_inIsZero_uid12_block_rsrvd_fix_q_4_q;
    reg [0:0] redist17_inIsZero_uid12_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist17_inIsZero_uid12_block_rsrvd_fix_q_4_delay_1;
    reg [31:0] redist18_y_uid9_block_rsrvd_fix_b_1_q;
    reg [31:0] redist19_y_uid9_block_rsrvd_fix_b_2_q;
    reg [0:0] redist20_signX_uid6_block_rsrvd_fix_b_1_q;
    reg [0:0] redist21_signX_uid6_block_rsrvd_fix_b_16_q;
    reg [17:0] redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_3_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // signX_uid6_block_rsrvd_fix(BITSELECT,5)@0
    assign signX_uid6_block_rsrvd_fix_b = $unsigned(in_0[31:31]);

    // redist20_signX_uid6_block_rsrvd_fix_b_1(DELAY,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_signX_uid6_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist20_signX_uid6_block_rsrvd_fix_b_1_q <= $unsigned(signX_uid6_block_rsrvd_fix_b);
        end
    end

    // redist21_signX_uid6_block_rsrvd_fix_b_16(DELAY,116)
    dspba_delay_ver #( .width(1), .depth(15), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_signX_uid6_block_rsrvd_fix_b_16 ( .xin(redist20_signX_uid6_block_rsrvd_fix_b_1_q), .xout(redist21_signX_uid6_block_rsrvd_fix_b_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expInf_uid28_block_rsrvd_fix(CONSTANT,27)
    assign expInf_uid28_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // expZ_uid37_block_rsrvd_fix(CONSTANT,36)
    assign expZ_uid37_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // rVStage_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,93)@10
    assign rVStage_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q[31:31];
    assign rVStage_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c = vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q[30:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // cStage_uid80_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,79)@10
    assign cStage_uid80_lzcShifterZ1_uid10_block_rsrvd_fix_q = {rVStage_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c, GND_q};

    // rVStage_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,92)@9
    assign rVStage_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q[31:30];
    assign rVStage_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c = vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q[29:0];

    // zs_uid68_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,67)
    assign zs_uid68_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(2'b00);

    // cStage_uid73_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,72)@9
    assign cStage_uid73_lzcShifterZ1_uid10_block_rsrvd_fix_q = {rVStage_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c, zs_uid68_lzcShifterZ1_uid10_block_rsrvd_fix_q};

    // rVStage_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,91)@8
    assign rVStage_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q[31:28];
    assign rVStage_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c = vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q[27:0];

    // zs_uid61_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,60)
    assign zs_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(4'b0000);

    // cStage_uid66_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,65)@8
    assign cStage_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q = {rVStage_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c, zs_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_q};

    // zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,41)
    assign zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(32'b00000000000000000000000000000000);

    // xXorSign_uid7_block_rsrvd_fix(LOGICAL,6)@0 + 1
    assign xXorSign_uid7_block_rsrvd_fix_b = $unsigned({{31{signX_uid6_block_rsrvd_fix_b[0]}}, signX_uid6_block_rsrvd_fix_b});
    assign xXorSign_uid7_block_rsrvd_fix_qi = in_0 ^ xXorSign_uid7_block_rsrvd_fix_b;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    xXorSign_uid7_block_rsrvd_fix_delay ( .xin(xXorSign_uid7_block_rsrvd_fix_qi), .xout(xXorSign_uid7_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // yE_uid8_block_rsrvd_fix(ADD,7)@1
    assign yE_uid8_block_rsrvd_fix_a = {1'b0, xXorSign_uid7_block_rsrvd_fix_q};
    assign yE_uid8_block_rsrvd_fix_b = {32'b00000000000000000000000000000000, redist20_signX_uid6_block_rsrvd_fix_b_1_q};
    assign yE_uid8_block_rsrvd_fix_o = $unsigned(yE_uid8_block_rsrvd_fix_a) + $unsigned(yE_uid8_block_rsrvd_fix_b);
    assign yE_uid8_block_rsrvd_fix_q = yE_uid8_block_rsrvd_fix_o[32:0];

    // y_uid9_block_rsrvd_fix(BITSELECT,8)@1
    assign y_uid9_block_rsrvd_fix_in = $unsigned(yE_uid8_block_rsrvd_fix_q[31:0]);
    assign y_uid9_block_rsrvd_fix_b = $unsigned(y_uid9_block_rsrvd_fix_in[31:0]);

    // redist18_y_uid9_block_rsrvd_fix_b_1(DELAY,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_y_uid9_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist18_y_uid9_block_rsrvd_fix_b_1_q <= $unsigned(y_uid9_block_rsrvd_fix_b);
        end
    end

    // redist19_y_uid9_block_rsrvd_fix_b_2(DELAY,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_y_uid9_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist19_y_uid9_block_rsrvd_fix_b_2_q <= $unsigned(redist18_y_uid9_block_rsrvd_fix_b_1_q);
        end
    end

    // vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,43)@2 + 1
    assign vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_qi = $unsigned(redist18_y_uid9_block_rsrvd_fix_b_1_q == zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_delay ( .xin(vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_qi), .xout(vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,45)@3 + 1
    assign vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 32'b0;
        end
        else
        begin
            unique case (vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_s)
                1'b0 : vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q <= redist19_y_uid9_block_rsrvd_fix_b_2_q;
                1'b1 : vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q <= zs_uid42_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                default : vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 32'b0;
            endcase
        end
    end

    // rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,89)@4
    assign rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q[31:16];
    assign rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c = vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q[15:0];

    // redist3_rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1(DELAY,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist3_rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // zs_uid47_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,46)
    assign zs_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(16'b0000000000000000);

    // cStage_uid52_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,51)@5
    assign cStage_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q = {redist3_rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q, zs_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_q};

    // redist10_vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q_2(DELAY,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist10_vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q <= $unsigned(vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q);
        end
    end

    // vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,48)@4 + 1
    assign vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_qi = $unsigned(rVStage_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b == zs_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_delay ( .xin(vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_qi), .xout(vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,52)@5 + 1
    assign vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 32'b0;
        end
        else
        begin
            unique case (vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_s)
                1'b0 : vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q <= redist10_vStagei_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q;
                1'b1 : vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                default : vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 32'b0;
            endcase
        end
    end

    // rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,90)@6
    assign rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q[31:24];
    assign rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c = vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q[23:0];

    // redist2_rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1(DELAY,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist2_rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // cStage_uid59_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,58)@7
    assign cStage_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q = {redist2_rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q, expZ_uid37_block_rsrvd_fix_q};

    // redist8_vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q_2(DELAY,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist8_vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q <= $unsigned(vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q);
        end
    end

    // vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,55)@6 + 1
    assign vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_qi = $unsigned(rVStage_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b == expZ_uid37_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_delay ( .xin(vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_qi), .xout(vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,59)@7 + 1
    assign vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 32'b0;
        end
        else
        begin
            unique case (vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_s)
                1'b0 : vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q <= redist8_vStagei_uid53_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q;
                1'b1 : vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                default : vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 32'b0;
            endcase
        end
    end

    // vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,62)@8
    assign vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(rVStage_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b == zs_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,66)@8 + 1
    assign vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 32'b0;
        end
        else
        begin
            unique case (vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_s)
                1'b0 : vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vStagei_uid60_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                1'b1 : vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                default : vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 32'b0;
            endcase
        end
    end

    // vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,69)@9
    assign vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(rVStage_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b == zs_uid68_lzcShifterZ1_uid10_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,73)@9 + 1
    assign vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 32'b0;
        end
        else
        begin
            unique case (vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_s)
                1'b0 : vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vStagei_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                1'b1 : vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid73_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                default : vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 32'b0;
            endcase
        end
    end

    // vCount_uid77_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,76)@10
    assign vCount_uid77_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(rVStage_uid76_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b == GND_q ? 1'b1 : 1'b0);

    // vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,80)@10
    assign vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid77_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @(vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_s or vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q or cStage_uid80_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_s)
            1'b0 : vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_q = vStagei_uid74_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            1'b1 : vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_q = cStage_uid80_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            default : vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_q = 32'b0;
        endcase
    end

    // fracRnd_uid15_block_rsrvd_fix_merged_bit_select(BITSELECT,94)@10
    assign fracRnd_uid15_block_rsrvd_fix_merged_bit_select_in = vStagei_uid81_lzcShifterZ1_uid10_block_rsrvd_fix_q[30:0];
    assign fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b = fracRnd_uid15_block_rsrvd_fix_merged_bit_select_in[30:13];
    assign fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c = fracRnd_uid15_block_rsrvd_fix_merged_bit_select_in[12:0];

    // redist1_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c_1(DELAY,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // sticky_uid20_block_rsrvd_fix(LOGICAL,19)@11 + 1
    assign sticky_uid20_block_rsrvd_fix_qi = $unsigned(redist1_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_c_1_q != 13'b0000000000000 ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sticky_uid20_block_rsrvd_fix_delay ( .xin(sticky_uid20_block_rsrvd_fix_qi), .xout(sticky_uid20_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sticky_uid20_block_rsrvd_fix_q_2(DELAY,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sticky_uid20_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist15_sticky_uid20_block_rsrvd_fix_q_2_q <= $unsigned(sticky_uid20_block_rsrvd_fix_q);
        end
    end

    // nr_uid21_block_rsrvd_fix(LOGICAL,20)@13
    assign nr_uid21_block_rsrvd_fix_q = ~ (l_uid17_block_rsrvd_fix_merged_bit_select_c);

    // maxCount_uid11_block_rsrvd_fix(CONSTANT,10)
    assign maxCount_uid11_block_rsrvd_fix_q = $unsigned(6'b100000);

    // redist11_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_8(DELAY,106)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_8 ( .xin(vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q), .xout(redist11_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6(DELAY,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_0 <= '0;
            redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_1 <= '0;
            redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_2 <= '0;
            redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_3 <= '0;
            redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_q <= '0;
        end
        else
        begin
            redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_0 <= $unsigned(vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q);
            redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_1 <= redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_0;
            redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_2 <= redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_1;
            redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_3 <= redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_2;
            redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_q <= redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_3;
        end
    end

    // redist7_vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q_4(DELAY,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist7_vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist7_vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist7_vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_0 <= $unsigned(vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q);
            redist7_vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_1 <= redist7_vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_0;
            redist7_vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_q <= redist7_vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // redist6_vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q_2(DELAY,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_delay_0 <= '0;
            redist6_vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist6_vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_delay_0 <= $unsigned(vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q);
            redist6_vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q <= redist6_vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_delay_0;
        end
    end

    // redist5_vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q_1(DELAY,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist5_vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q <= $unsigned(vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q);
        end
    end

    // vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,81)@10
    assign vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q = {redist11_vCount_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q_8_q, redist9_vCount_uid49_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_q, redist7_vCount_uid56_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_q, redist6_vCount_uid63_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q, redist5_vCount_uid70_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q, vCount_uid77_lzcShifterZ1_uid10_block_rsrvd_fix_q};

    // redist4_vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q_1(DELAY,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist4_vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q <= $unsigned(vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q);
        end
    end

    // vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix(COMPARE,83)@10 + 1
    assign vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_a = {2'b00, maxCount_uid11_block_rsrvd_fix_q};
    assign vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_b = {2'b00, vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_o <= 8'b0;
        end
        else
        begin
            vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_o <= $unsigned(vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_a) - $unsigned(vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_b);
        end
    end
    assign vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_c[0] = vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_o[7];

    // vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,85)@11 + 1
    assign vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCountBig_uid84_lzcShifterZ1_uid10_block_rsrvd_fix_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 6'b0;
        end
        else
        begin
            unique case (vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_s)
                1'b0 : vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_q <= redist4_vCount_uid82_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q;
                1'b1 : vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_q <= maxCount_uid11_block_rsrvd_fix_q;
                default : vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 6'b0;
            endcase
        end
    end

    // msbIn_uid13_block_rsrvd_fix(CONSTANT,12)
    assign msbIn_uid13_block_rsrvd_fix_q = $unsigned(8'b10011110);

    // expPreRnd_uid14_block_rsrvd_fix(SUB,13)@12 + 1
    assign expPreRnd_uid14_block_rsrvd_fix_a = {1'b0, msbIn_uid13_block_rsrvd_fix_q};
    assign expPreRnd_uid14_block_rsrvd_fix_b = {3'b000, vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expPreRnd_uid14_block_rsrvd_fix_o <= 9'b0;
        end
        else
        begin
            expPreRnd_uid14_block_rsrvd_fix_o <= $unsigned(expPreRnd_uid14_block_rsrvd_fix_a) - $unsigned(expPreRnd_uid14_block_rsrvd_fix_b);
        end
    end
    assign expPreRnd_uid14_block_rsrvd_fix_q = expPreRnd_uid14_block_rsrvd_fix_o[8:0];

    // redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_3_inputreg0(DELAY,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_3_inputreg0_q <= '0;
        end
        else
        begin
            redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_3_inputreg0_q <= $unsigned(fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_3(DELAY,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_3_delay_0 <= '0;
            redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_3_q <= '0;
        end
        else
        begin
            redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_3_delay_0 <= $unsigned(redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_3_inputreg0_q);
            redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_3_q <= redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_3_delay_0;
        end
    end

    // expFracRnd_uid16_block_rsrvd_fix(BITJOIN,15)@13
    assign expFracRnd_uid16_block_rsrvd_fix_q = {expPreRnd_uid14_block_rsrvd_fix_q, redist0_fracRnd_uid15_block_rsrvd_fix_merged_bit_select_b_3_q};

    // l_uid17_block_rsrvd_fix_merged_bit_select(BITSELECT,88)@13
    assign l_uid17_block_rsrvd_fix_merged_bit_select_in = $unsigned(expFracRnd_uid16_block_rsrvd_fix_q[1:0]);
    assign l_uid17_block_rsrvd_fix_merged_bit_select_b = $unsigned(l_uid17_block_rsrvd_fix_merged_bit_select_in[1:1]);
    assign l_uid17_block_rsrvd_fix_merged_bit_select_c = $unsigned(l_uid17_block_rsrvd_fix_merged_bit_select_in[0:0]);

    // rnd_uid22_block_rsrvd_fix(LOGICAL,21)@13 + 1
    assign rnd_uid22_block_rsrvd_fix_qi = l_uid17_block_rsrvd_fix_merged_bit_select_b | nr_uid21_block_rsrvd_fix_q | redist15_sticky_uid20_block_rsrvd_fix_q_2_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    rnd_uid22_block_rsrvd_fix_delay ( .xin(rnd_uid22_block_rsrvd_fix_qi), .xout(rnd_uid22_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_expFracRnd_uid16_block_rsrvd_fix_q_1(DELAY,111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_expFracRnd_uid16_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist16_expFracRnd_uid16_block_rsrvd_fix_q_1_q <= $unsigned(expFracRnd_uid16_block_rsrvd_fix_q);
        end
    end

    // expFracR_uid24_block_rsrvd_fix(ADD,23)@14
    assign expFracR_uid24_block_rsrvd_fix_a = $unsigned({{2{redist16_expFracRnd_uid16_block_rsrvd_fix_q_1_q[26]}}, redist16_expFracRnd_uid16_block_rsrvd_fix_q_1_q});
    assign expFracR_uid24_block_rsrvd_fix_b = $unsigned({28'b0000000000000000000000000000, rnd_uid22_block_rsrvd_fix_q});
    assign expFracR_uid24_block_rsrvd_fix_o = $unsigned($signed(expFracR_uid24_block_rsrvd_fix_a) + $signed(expFracR_uid24_block_rsrvd_fix_b));
    assign expFracR_uid24_block_rsrvd_fix_q = expFracR_uid24_block_rsrvd_fix_o[27:0];

    // expR_uid26_block_rsrvd_fix(BITSELECT,25)@14
    assign expR_uid26_block_rsrvd_fix_b = $unsigned(expFracR_uid24_block_rsrvd_fix_q[27:18]);

    // redist13_expR_uid26_block_rsrvd_fix_b_1(DELAY,108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_expR_uid26_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist13_expR_uid26_block_rsrvd_fix_b_1_q <= $unsigned(expR_uid26_block_rsrvd_fix_b);
        end
    end

    // expR_uid38_block_rsrvd_fix(BITSELECT,37)@15
    assign expR_uid38_block_rsrvd_fix_in = redist13_expR_uid26_block_rsrvd_fix_b_1_q[7:0];
    assign expR_uid38_block_rsrvd_fix_b = expR_uid38_block_rsrvd_fix_in[7:0];

    // redist12_expR_uid38_block_rsrvd_fix_b_1(DELAY,107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_expR_uid38_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist12_expR_uid38_block_rsrvd_fix_b_1_q <= $unsigned(expR_uid38_block_rsrvd_fix_b);
        end
    end

    // ovf_uid29_block_rsrvd_fix(COMPARE,28)@15 + 1
    assign ovf_uid29_block_rsrvd_fix_a = $unsigned({{2{redist13_expR_uid26_block_rsrvd_fix_b_1_q[9]}}, redist13_expR_uid26_block_rsrvd_fix_b_1_q});
    assign ovf_uid29_block_rsrvd_fix_b = $unsigned({4'b0000, expInf_uid28_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ovf_uid29_block_rsrvd_fix_o <= 12'b0;
        end
        else
        begin
            ovf_uid29_block_rsrvd_fix_o <= $unsigned($signed(ovf_uid29_block_rsrvd_fix_a) - $signed(ovf_uid29_block_rsrvd_fix_b));
        end
    end
    assign ovf_uid29_block_rsrvd_fix_n[0] = ~ (ovf_uid29_block_rsrvd_fix_o[11]);

    // inIsZero_uid12_block_rsrvd_fix(LOGICAL,11)@12 + 1
    assign inIsZero_uid12_block_rsrvd_fix_qi = $unsigned(vCountFinal_uid86_lzcShifterZ1_uid10_block_rsrvd_fix_q == maxCount_uid11_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    inIsZero_uid12_block_rsrvd_fix_delay ( .xin(inIsZero_uid12_block_rsrvd_fix_qi), .xout(inIsZero_uid12_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_inIsZero_uid12_block_rsrvd_fix_q_4(DELAY,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_inIsZero_uid12_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist17_inIsZero_uid12_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist17_inIsZero_uid12_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist17_inIsZero_uid12_block_rsrvd_fix_q_4_delay_0 <= $unsigned(inIsZero_uid12_block_rsrvd_fix_q);
            redist17_inIsZero_uid12_block_rsrvd_fix_q_4_delay_1 <= redist17_inIsZero_uid12_block_rsrvd_fix_q_4_delay_0;
            redist17_inIsZero_uid12_block_rsrvd_fix_q_4_q <= redist17_inIsZero_uid12_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // udf_uid27_block_rsrvd_fix(COMPARE,26)@15 + 1
    assign udf_uid27_block_rsrvd_fix_a = $unsigned({11'b00000000000, GND_q});
    assign udf_uid27_block_rsrvd_fix_b = $unsigned({{2{redist13_expR_uid26_block_rsrvd_fix_b_1_q[9]}}, redist13_expR_uid26_block_rsrvd_fix_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            udf_uid27_block_rsrvd_fix_o <= 12'b0;
        end
        else
        begin
            udf_uid27_block_rsrvd_fix_o <= $unsigned($signed(udf_uid27_block_rsrvd_fix_a) - $signed(udf_uid27_block_rsrvd_fix_b));
        end
    end
    assign udf_uid27_block_rsrvd_fix_n[0] = ~ (udf_uid27_block_rsrvd_fix_o[11]);

    // udfOrInZero_uid33_block_rsrvd_fix(LOGICAL,32)@16
    assign udfOrInZero_uid33_block_rsrvd_fix_q = udf_uid27_block_rsrvd_fix_n | redist17_inIsZero_uid12_block_rsrvd_fix_q_4_q;

    // excSelector_uid34_block_rsrvd_fix(BITJOIN,33)@16
    assign excSelector_uid34_block_rsrvd_fix_q = {ovf_uid29_block_rsrvd_fix_n, udfOrInZero_uid33_block_rsrvd_fix_q};

    // expRPostExc_uid39_block_rsrvd_fix(MUX,38)@16
    assign expRPostExc_uid39_block_rsrvd_fix_s = excSelector_uid34_block_rsrvd_fix_q;
    always @(expRPostExc_uid39_block_rsrvd_fix_s or redist12_expR_uid38_block_rsrvd_fix_b_1_q or expZ_uid37_block_rsrvd_fix_q or expInf_uid28_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid39_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid39_block_rsrvd_fix_q = redist12_expR_uid38_block_rsrvd_fix_b_1_q;
            2'b01 : expRPostExc_uid39_block_rsrvd_fix_q = expZ_uid37_block_rsrvd_fix_q;
            2'b10 : expRPostExc_uid39_block_rsrvd_fix_q = expInf_uid28_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid39_block_rsrvd_fix_q = expInf_uid28_block_rsrvd_fix_q;
            default : expRPostExc_uid39_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // fracZ_uid31_block_rsrvd_fix(CONSTANT,30)
    assign fracZ_uid31_block_rsrvd_fix_q = $unsigned(17'b00000000000000000);

    // fracR_uid25_block_rsrvd_fix(BITSELECT,24)@14
    assign fracR_uid25_block_rsrvd_fix_in = expFracR_uid24_block_rsrvd_fix_q[17:0];
    assign fracR_uid25_block_rsrvd_fix_b = fracR_uid25_block_rsrvd_fix_in[17:1];

    // redist14_fracR_uid25_block_rsrvd_fix_b_2(DELAY,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_fracR_uid25_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist14_fracR_uid25_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist14_fracR_uid25_block_rsrvd_fix_b_2_delay_0 <= $unsigned(fracR_uid25_block_rsrvd_fix_b);
            redist14_fracR_uid25_block_rsrvd_fix_b_2_q <= redist14_fracR_uid25_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // excSelector_uid30_block_rsrvd_fix(LOGICAL,29)@16
    assign excSelector_uid30_block_rsrvd_fix_q = redist17_inIsZero_uid12_block_rsrvd_fix_q_4_q | ovf_uid29_block_rsrvd_fix_n | udf_uid27_block_rsrvd_fix_n;

    // fracRPostExc_uid32_block_rsrvd_fix(MUX,31)@16
    assign fracRPostExc_uid32_block_rsrvd_fix_s = excSelector_uid30_block_rsrvd_fix_q;
    always @(fracRPostExc_uid32_block_rsrvd_fix_s or redist14_fracR_uid25_block_rsrvd_fix_b_2_q or fracZ_uid31_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid32_block_rsrvd_fix_s)
            1'b0 : fracRPostExc_uid32_block_rsrvd_fix_q = redist14_fracR_uid25_block_rsrvd_fix_b_2_q;
            1'b1 : fracRPostExc_uid32_block_rsrvd_fix_q = fracZ_uid31_block_rsrvd_fix_q;
            default : fracRPostExc_uid32_block_rsrvd_fix_q = 17'b0;
        endcase
    end

    // outRes_uid40_block_rsrvd_fix(BITJOIN,39)@16
    assign outRes_uid40_block_rsrvd_fix_q = {redist21_signX_uid6_block_rsrvd_fix_b_16_q, expRPostExc_uid39_block_rsrvd_fix_q, fracRPostExc_uid32_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,4)@16
    assign out_primWireOut = outRes_uid40_block_rsrvd_fix_q;

endmodule
