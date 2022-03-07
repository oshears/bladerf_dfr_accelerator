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

// SystemVerilog created from flt_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr0_castBlock_typeSFixed_16_0_typeSFloatIEEE_17_8_castModeConvert_3v5ih687gkxgqycwbc9pi063065064663c62i61o60u60164162763d65d64j63p612c0e63e65ei2w65w613c5f60uq5ux5gv8yll5gvbyxk5mx06of0cd16ol0cd06cj0qfzo
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:29:59 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_flt_i_llvm_fpga_vpfp_cast_from_fixed0001f0cd16ol0cd06cj0qfzo (
    input wire [15:0] in_0,
    output wire [25:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] signX_uid6_block_rsrvd_fix_b;
    wire [15:0] xXorSign_uid7_block_rsrvd_fix_b;
    wire [15:0] xXorSign_uid7_block_rsrvd_fix_qi;
    reg [15:0] xXorSign_uid7_block_rsrvd_fix_q;
    wire [16:0] yE_uid8_block_rsrvd_fix_a;
    wire [16:0] yE_uid8_block_rsrvd_fix_b;
    logic [16:0] yE_uid8_block_rsrvd_fix_o;
    wire [16:0] yE_uid8_block_rsrvd_fix_q;
    wire [15:0] y_uid9_block_rsrvd_fix_in;
    wire [15:0] y_uid9_block_rsrvd_fix_b;
    wire [4:0] maxCount_uid11_block_rsrvd_fix_q;
    wire [0:0] inIsZero_uid12_block_rsrvd_fix_qi;
    reg [0:0] inIsZero_uid12_block_rsrvd_fix_q;
    wire [7:0] msbIn_uid13_block_rsrvd_fix_q;
    wire [8:0] expPreRnd_uid14_block_rsrvd_fix_a;
    wire [8:0] expPreRnd_uid14_block_rsrvd_fix_b;
    logic [8:0] expPreRnd_uid14_block_rsrvd_fix_o;
    wire [8:0] expPreRnd_uid14_block_rsrvd_fix_q;
    wire [1:0] zP_uid15_block_rsrvd_fix_q;
    wire [14:0] fracRU_uid16_block_rsrvd_fix_in;
    wire [14:0] fracRU_uid16_block_rsrvd_fix_b;
    wire [16:0] fracRR_uid17_block_rsrvd_fix_q;
    wire [10:0] udf_uid19_block_rsrvd_fix_a;
    wire [10:0] udf_uid19_block_rsrvd_fix_b;
    logic [10:0] udf_uid19_block_rsrvd_fix_o;
    wire [0:0] udf_uid19_block_rsrvd_fix_n;
    wire [7:0] expInf_uid20_block_rsrvd_fix_q;
    wire [10:0] ovf_uid21_block_rsrvd_fix_a;
    wire [10:0] ovf_uid21_block_rsrvd_fix_b;
    logic [10:0] ovf_uid21_block_rsrvd_fix_o;
    wire [0:0] ovf_uid21_block_rsrvd_fix_n;
    wire [0:0] excSelector_uid22_block_rsrvd_fix_q;
    wire [16:0] fracZ_uid23_block_rsrvd_fix_q;
    wire [0:0] fracRPostExc_uid24_block_rsrvd_fix_s;
    reg [16:0] fracRPostExc_uid24_block_rsrvd_fix_q;
    wire [0:0] udfOrInZero_uid25_block_rsrvd_fix_q;
    wire [1:0] excSelector_uid26_block_rsrvd_fix_q;
    wire [7:0] expZ_uid29_block_rsrvd_fix_q;
    wire [7:0] expR_uid30_block_rsrvd_fix_in;
    wire [7:0] expR_uid30_block_rsrvd_fix_b;
    wire [1:0] expRPostExc_uid31_block_rsrvd_fix_s;
    reg [7:0] expRPostExc_uid31_block_rsrvd_fix_q;
    wire [25:0] outRes_uid32_block_rsrvd_fix_q;
    wire [15:0] zs_uid34_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [15:0] vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_qi;
    reg [0:0] vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [15:0] cStage_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [15:0] vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [3:0] zs_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [15:0] cStage_uid51_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [15:0] vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [15:0] cStage_uid58_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [15:0] vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vCount_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [15:0] cStage_uid65_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [0:0] vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [15:0] vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [4:0] vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [6:0] vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_a;
    wire [6:0] vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_b;
    logic [6:0] vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_o;
    wire [0:0] vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_c;
    wire [0:0] vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_s;
    reg [4:0] vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    wire [7:0] rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b;
    wire [7:0] rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c;
    wire [3:0] rVStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b;
    wire [11:0] rVStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c;
    wire [1:0] rVStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b;
    wire [13:0] rVStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c;
    wire [0:0] rVStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b;
    wire [14:0] rVStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c;
    reg [7:0] redist0_rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [4:0] redist1_vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q;
    reg [0:0] redist2_vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q;
    reg [0:0] redist3_vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q;
    reg [0:0] redist3_vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_delay_0;
    reg [0:0] redist4_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_q;
    reg [0:0] redist4_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist4_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_1;
    reg [15:0] redist5_vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q;
    reg [0:0] redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_q;
    reg [0:0] redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_0;
    reg [0:0] redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_1;
    reg [0:0] redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_2;
    reg [0:0] redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_3;
    reg [7:0] redist7_expR_uid30_block_rsrvd_fix_b_1_q;
    reg [14:0] redist8_fracRU_uid16_block_rsrvd_fix_b_4_q;
    reg [14:0] redist8_fracRU_uid16_block_rsrvd_fix_b_4_delay_0;
    reg [0:0] redist9_inIsZero_uid12_block_rsrvd_fix_q_2_q;
    reg [15:0] redist10_y_uid9_block_rsrvd_fix_b_1_q;
    reg [15:0] redist11_y_uid9_block_rsrvd_fix_b_2_q;
    reg [0:0] redist12_signX_uid6_block_rsrvd_fix_b_1_q;
    reg [0:0] redist13_signX_uid6_block_rsrvd_fix_b_12_q;
    reg [14:0] redist8_fracRU_uid16_block_rsrvd_fix_b_4_inputreg0_q;
    reg [14:0] redist8_fracRU_uid16_block_rsrvd_fix_b_4_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // signX_uid6_block_rsrvd_fix(BITSELECT,5)@0
    assign signX_uid6_block_rsrvd_fix_b = $unsigned(in_0[15:15]);

    // redist12_signX_uid6_block_rsrvd_fix_b_1(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_signX_uid6_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist12_signX_uid6_block_rsrvd_fix_b_1_q <= $unsigned(signX_uid6_block_rsrvd_fix_b);
        end
    end

    // redist13_signX_uid6_block_rsrvd_fix_b_12(DELAY,90)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_signX_uid6_block_rsrvd_fix_b_12 ( .xin(redist12_signX_uid6_block_rsrvd_fix_b_1_q), .xout(redist13_signX_uid6_block_rsrvd_fix_b_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expInf_uid20_block_rsrvd_fix(CONSTANT,19)
    assign expInf_uid20_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // expZ_uid29_block_rsrvd_fix(CONSTANT,28)
    assign expZ_uid29_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // maxCount_uid11_block_rsrvd_fix(CONSTANT,10)
    assign maxCount_uid11_block_rsrvd_fix_q = $unsigned(5'b10000);

    // zs_uid34_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,33)
    assign zs_uid34_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(16'b0000000000000000);

    // xXorSign_uid7_block_rsrvd_fix(LOGICAL,6)@0 + 1
    assign xXorSign_uid7_block_rsrvd_fix_b = $unsigned({{15{signX_uid6_block_rsrvd_fix_b[0]}}, signX_uid6_block_rsrvd_fix_b});
    assign xXorSign_uid7_block_rsrvd_fix_qi = in_0 ^ xXorSign_uid7_block_rsrvd_fix_b;
    dspba_delay_ver #( .width(16), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    xXorSign_uid7_block_rsrvd_fix_delay ( .xin(xXorSign_uid7_block_rsrvd_fix_qi), .xout(xXorSign_uid7_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // yE_uid8_block_rsrvd_fix(ADD,7)@1
    assign yE_uid8_block_rsrvd_fix_a = {1'b0, xXorSign_uid7_block_rsrvd_fix_q};
    assign yE_uid8_block_rsrvd_fix_b = {16'b0000000000000000, redist12_signX_uid6_block_rsrvd_fix_b_1_q};
    assign yE_uid8_block_rsrvd_fix_o = $unsigned(yE_uid8_block_rsrvd_fix_a) + $unsigned(yE_uid8_block_rsrvd_fix_b);
    assign yE_uid8_block_rsrvd_fix_q = yE_uid8_block_rsrvd_fix_o[16:0];

    // y_uid9_block_rsrvd_fix(BITSELECT,8)@1
    assign y_uid9_block_rsrvd_fix_in = $unsigned(yE_uid8_block_rsrvd_fix_q[15:0]);
    assign y_uid9_block_rsrvd_fix_b = $unsigned(y_uid9_block_rsrvd_fix_in[15:0]);

    // redist10_y_uid9_block_rsrvd_fix_b_1(DELAY,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_y_uid9_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist10_y_uid9_block_rsrvd_fix_b_1_q <= $unsigned(y_uid9_block_rsrvd_fix_b);
        end
    end

    // vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,35)@2 + 1
    assign vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_qi = $unsigned(redist10_y_uid9_block_rsrvd_fix_b_1_q == zs_uid34_lzcShifterZ1_uid10_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_delay ( .xin(vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_qi), .xout(vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6(DELAY,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_0 <= '0;
            redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_1 <= '0;
            redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_2 <= '0;
            redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_3 <= '0;
            redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_q <= '0;
        end
        else
        begin
            redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_0 <= $unsigned(vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q);
            redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_1 <= redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_0;
            redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_2 <= redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_1;
            redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_3 <= redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_2;
            redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_q <= redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_delay_3;
        end
    end

    // redist11_y_uid9_block_rsrvd_fix_b_2(DELAY,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_y_uid9_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist11_y_uid9_block_rsrvd_fix_b_2_q <= $unsigned(redist10_y_uid9_block_rsrvd_fix_b_1_q);
        end
    end

    // vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,37)@3 + 1
    assign vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 16'b0;
        end
        else
        begin
            unique case (vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_s)
                1'b0 : vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q <= redist11_y_uid9_block_rsrvd_fix_b_2_q;
                1'b1 : vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q <= zs_uid34_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                default : vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 16'b0;
            endcase
        end
    end

    // rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,73)@4
    assign rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q[15:8];
    assign rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c = vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q[7:0];

    // vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,40)@4 + 1
    assign vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_qi = $unsigned(rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b == expZ_uid29_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_delay ( .xin(vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_qi), .xout(vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist4_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_4(DELAY,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist4_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist4_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist4_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_0 <= $unsigned(vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q);
            redist4_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_1 <= redist4_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_0;
            redist4_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_q <= redist4_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // zs_uid46_lzcShifterZ1_uid10_block_rsrvd_fix(CONSTANT,45)
    assign zs_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(4'b0000);

    // redist0_rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1(DELAY,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // cStage_uid44_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,43)@5
    assign cStage_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q = {redist0_rVStage_uid40_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c_1_q, expZ_uid29_block_rsrvd_fix_q};

    // redist5_vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q_2(DELAY,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist5_vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q <= $unsigned(vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q);
        end
    end

    // vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,44)@5 + 1
    assign vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 16'b0;
        end
        else
        begin
            unique case (vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_s)
                1'b0 : vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q <= redist5_vStagei_uid38_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q;
                1'b1 : vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid44_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                default : vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 16'b0;
            endcase
        end
    end

    // rVStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,74)@6
    assign rVStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q[15:12];
    assign rVStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c = vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q[11:0];

    // vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,47)@6
    assign vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(rVStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b == zs_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // redist3_vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q_2(DELAY,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_delay_0 <= '0;
            redist3_vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist3_vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_delay_0 <= $unsigned(vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q);
            redist3_vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q <= redist3_vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_delay_0;
        end
    end

    // zP_uid15_block_rsrvd_fix(CONSTANT,14)
    assign zP_uid15_block_rsrvd_fix_q = $unsigned(2'b00);

    // cStage_uid51_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,50)@6
    assign cStage_uid51_lzcShifterZ1_uid10_block_rsrvd_fix_q = {rVStage_uid47_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c, zs_uid46_lzcShifterZ1_uid10_block_rsrvd_fix_q};

    // vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,51)@6 + 1
    assign vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 16'b0;
        end
        else
        begin
            unique case (vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_s)
                1'b0 : vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vStagei_uid45_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                1'b1 : vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid51_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                default : vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 16'b0;
            endcase
        end
    end

    // rVStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,75)@7
    assign rVStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q[15:14];
    assign rVStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c = vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q[13:0];

    // vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,54)@7
    assign vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(rVStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b == zP_uid15_block_rsrvd_fix_q ? 1'b1 : 1'b0);

    // redist2_vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q_1(DELAY,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist2_vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q <= $unsigned(vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // cStage_uid58_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,57)@7
    assign cStage_uid58_lzcShifterZ1_uid10_block_rsrvd_fix_q = {rVStage_uid54_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c, zP_uid15_block_rsrvd_fix_q};

    // vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,58)@7 + 1
    assign vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 16'b0;
        end
        else
        begin
            unique case (vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_s)
                1'b0 : vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q <= vStagei_uid52_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                1'b1 : vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q <= cStage_uid58_lzcShifterZ1_uid10_block_rsrvd_fix_q;
                default : vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 16'b0;
            endcase
        end
    end

    // rVStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select(BITSELECT,76)@8
    assign rVStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b = vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q[15:15];
    assign rVStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c = vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q[14:0];

    // vCount_uid62_lzcShifterZ1_uid10_block_rsrvd_fix(LOGICAL,61)@8
    assign vCount_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q = $unsigned(rVStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_b == GND_q ? 1'b1 : 1'b0);

    // vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,66)@8
    assign vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q = {redist6_vCount_uid36_lzcShifterZ1_uid10_block_rsrvd_fix_q_6_q, redist4_vCount_uid41_lzcShifterZ1_uid10_block_rsrvd_fix_q_4_q, redist3_vCount_uid48_lzcShifterZ1_uid10_block_rsrvd_fix_q_2_q, redist2_vCount_uid55_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q, vCount_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q};

    // redist1_vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q_1(DELAY,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q <= '0;
        end
        else
        begin
            redist1_vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q <= $unsigned(vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q);
        end
    end

    // vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix(COMPARE,68)@8 + 1
    assign vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_a = {2'b00, maxCount_uid11_block_rsrvd_fix_q};
    assign vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_b = {2'b00, vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_o <= 7'b0;
        end
        else
        begin
            vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_o <= $unsigned(vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_a) - $unsigned(vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_b);
        end
    end
    assign vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_c[0] = vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_o[6];

    // vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,70)@9 + 1
    assign vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCountBig_uid69_lzcShifterZ1_uid10_block_rsrvd_fix_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 5'b0;
        end
        else
        begin
            unique case (vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_s)
                1'b0 : vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_q <= redist1_vCount_uid67_lzcShifterZ1_uid10_block_rsrvd_fix_q_1_q;
                1'b1 : vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_q <= maxCount_uid11_block_rsrvd_fix_q;
                default : vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_q <= 5'b0;
            endcase
        end
    end

    // msbIn_uid13_block_rsrvd_fix(CONSTANT,12)
    assign msbIn_uid13_block_rsrvd_fix_q = $unsigned(8'b10001110);

    // expPreRnd_uid14_block_rsrvd_fix(SUB,13)@10 + 1
    assign expPreRnd_uid14_block_rsrvd_fix_a = {1'b0, msbIn_uid13_block_rsrvd_fix_q};
    assign expPreRnd_uid14_block_rsrvd_fix_b = {4'b0000, vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_q};
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

    // expR_uid30_block_rsrvd_fix(BITSELECT,29)@11
    assign expR_uid30_block_rsrvd_fix_in = expPreRnd_uid14_block_rsrvd_fix_q[7:0];
    assign expR_uid30_block_rsrvd_fix_b = expR_uid30_block_rsrvd_fix_in[7:0];

    // redist7_expR_uid30_block_rsrvd_fix_b_1(DELAY,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_expR_uid30_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist7_expR_uid30_block_rsrvd_fix_b_1_q <= $unsigned(expR_uid30_block_rsrvd_fix_b);
        end
    end

    // ovf_uid21_block_rsrvd_fix(COMPARE,20)@11 + 1
    assign ovf_uid21_block_rsrvd_fix_a = $unsigned({{2{expPreRnd_uid14_block_rsrvd_fix_q[8]}}, expPreRnd_uid14_block_rsrvd_fix_q});
    assign ovf_uid21_block_rsrvd_fix_b = $unsigned({3'b000, expInf_uid20_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            ovf_uid21_block_rsrvd_fix_o <= 11'b0;
        end
        else
        begin
            ovf_uid21_block_rsrvd_fix_o <= $unsigned($signed(ovf_uid21_block_rsrvd_fix_a) - $signed(ovf_uid21_block_rsrvd_fix_b));
        end
    end
    assign ovf_uid21_block_rsrvd_fix_n[0] = ~ (ovf_uid21_block_rsrvd_fix_o[10]);

    // inIsZero_uid12_block_rsrvd_fix(LOGICAL,11)@10 + 1
    assign inIsZero_uid12_block_rsrvd_fix_qi = $unsigned(vCountFinal_uid71_lzcShifterZ1_uid10_block_rsrvd_fix_q == maxCount_uid11_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    inIsZero_uid12_block_rsrvd_fix_delay ( .xin(inIsZero_uid12_block_rsrvd_fix_qi), .xout(inIsZero_uid12_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_inIsZero_uid12_block_rsrvd_fix_q_2(DELAY,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_inIsZero_uid12_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist9_inIsZero_uid12_block_rsrvd_fix_q_2_q <= $unsigned(inIsZero_uid12_block_rsrvd_fix_q);
        end
    end

    // udf_uid19_block_rsrvd_fix(COMPARE,18)@11 + 1
    assign udf_uid19_block_rsrvd_fix_a = $unsigned({10'b0000000000, GND_q});
    assign udf_uid19_block_rsrvd_fix_b = $unsigned({{2{expPreRnd_uid14_block_rsrvd_fix_q[8]}}, expPreRnd_uid14_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            udf_uid19_block_rsrvd_fix_o <= 11'b0;
        end
        else
        begin
            udf_uid19_block_rsrvd_fix_o <= $unsigned($signed(udf_uid19_block_rsrvd_fix_a) - $signed(udf_uid19_block_rsrvd_fix_b));
        end
    end
    assign udf_uid19_block_rsrvd_fix_n[0] = ~ (udf_uid19_block_rsrvd_fix_o[10]);

    // udfOrInZero_uid25_block_rsrvd_fix(LOGICAL,24)@12
    assign udfOrInZero_uid25_block_rsrvd_fix_q = udf_uid19_block_rsrvd_fix_n | redist9_inIsZero_uid12_block_rsrvd_fix_q_2_q;

    // excSelector_uid26_block_rsrvd_fix(BITJOIN,25)@12
    assign excSelector_uid26_block_rsrvd_fix_q = {ovf_uid21_block_rsrvd_fix_n, udfOrInZero_uid25_block_rsrvd_fix_q};

    // expRPostExc_uid31_block_rsrvd_fix(MUX,30)@12
    assign expRPostExc_uid31_block_rsrvd_fix_s = excSelector_uid26_block_rsrvd_fix_q;
    always @(expRPostExc_uid31_block_rsrvd_fix_s or redist7_expR_uid30_block_rsrvd_fix_b_1_q or expZ_uid29_block_rsrvd_fix_q or expInf_uid20_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid31_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid31_block_rsrvd_fix_q = redist7_expR_uid30_block_rsrvd_fix_b_1_q;
            2'b01 : expRPostExc_uid31_block_rsrvd_fix_q = expZ_uid29_block_rsrvd_fix_q;
            2'b10 : expRPostExc_uid31_block_rsrvd_fix_q = expInf_uid20_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid31_block_rsrvd_fix_q = expInf_uid20_block_rsrvd_fix_q;
            default : expRPostExc_uid31_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // fracZ_uid23_block_rsrvd_fix(CONSTANT,22)
    assign fracZ_uid23_block_rsrvd_fix_q = $unsigned(17'b00000000000000000);

    // cStage_uid65_lzcShifterZ1_uid10_block_rsrvd_fix(BITJOIN,64)@8
    assign cStage_uid65_lzcShifterZ1_uid10_block_rsrvd_fix_q = {rVStage_uid61_lzcShifterZ1_uid10_block_rsrvd_fix_merged_bit_select_c, GND_q};

    // vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix(MUX,65)@8
    assign vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_s = vCount_uid62_lzcShifterZ1_uid10_block_rsrvd_fix_q;
    always @(vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_s or vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q or cStage_uid65_lzcShifterZ1_uid10_block_rsrvd_fix_q)
    begin
        unique case (vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_s)
            1'b0 : vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q = vStagei_uid59_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            1'b1 : vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q = cStage_uid65_lzcShifterZ1_uid10_block_rsrvd_fix_q;
            default : vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q = 16'b0;
        endcase
    end

    // fracRU_uid16_block_rsrvd_fix(BITSELECT,15)@8
    assign fracRU_uid16_block_rsrvd_fix_in = vStagei_uid66_lzcShifterZ1_uid10_block_rsrvd_fix_q[14:0];
    assign fracRU_uid16_block_rsrvd_fix_b = fracRU_uid16_block_rsrvd_fix_in[14:0];

    // redist8_fracRU_uid16_block_rsrvd_fix_b_4_inputreg0(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_fracRU_uid16_block_rsrvd_fix_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist8_fracRU_uid16_block_rsrvd_fix_b_4_inputreg0_q <= $unsigned(fracRU_uid16_block_rsrvd_fix_b);
        end
    end

    // redist8_fracRU_uid16_block_rsrvd_fix_b_4(DELAY,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_fracRU_uid16_block_rsrvd_fix_b_4_delay_0 <= '0;
            redist8_fracRU_uid16_block_rsrvd_fix_b_4_q <= '0;
        end
        else
        begin
            redist8_fracRU_uid16_block_rsrvd_fix_b_4_delay_0 <= $unsigned(redist8_fracRU_uid16_block_rsrvd_fix_b_4_inputreg0_q);
            redist8_fracRU_uid16_block_rsrvd_fix_b_4_q <= redist8_fracRU_uid16_block_rsrvd_fix_b_4_delay_0;
        end
    end

    // redist8_fracRU_uid16_block_rsrvd_fix_b_4_outputreg0(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_fracRU_uid16_block_rsrvd_fix_b_4_outputreg0_q <= '0;
        end
        else
        begin
            redist8_fracRU_uid16_block_rsrvd_fix_b_4_outputreg0_q <= $unsigned(redist8_fracRU_uid16_block_rsrvd_fix_b_4_q);
        end
    end

    // fracRR_uid17_block_rsrvd_fix(BITJOIN,16)@12
    assign fracRR_uid17_block_rsrvd_fix_q = {redist8_fracRU_uid16_block_rsrvd_fix_b_4_outputreg0_q, zP_uid15_block_rsrvd_fix_q};

    // excSelector_uid22_block_rsrvd_fix(LOGICAL,21)@12
    assign excSelector_uid22_block_rsrvd_fix_q = redist9_inIsZero_uid12_block_rsrvd_fix_q_2_q | ovf_uid21_block_rsrvd_fix_n | udf_uid19_block_rsrvd_fix_n;

    // fracRPostExc_uid24_block_rsrvd_fix(MUX,23)@12
    assign fracRPostExc_uid24_block_rsrvd_fix_s = excSelector_uid22_block_rsrvd_fix_q;
    always @(fracRPostExc_uid24_block_rsrvd_fix_s or fracRR_uid17_block_rsrvd_fix_q or fracZ_uid23_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid24_block_rsrvd_fix_s)
            1'b0 : fracRPostExc_uid24_block_rsrvd_fix_q = fracRR_uid17_block_rsrvd_fix_q;
            1'b1 : fracRPostExc_uid24_block_rsrvd_fix_q = fracZ_uid23_block_rsrvd_fix_q;
            default : fracRPostExc_uid24_block_rsrvd_fix_q = 17'b0;
        endcase
    end

    // outRes_uid32_block_rsrvd_fix(BITJOIN,31)@12
    assign outRes_uid32_block_rsrvd_fix_q = {redist13_signX_uid6_block_rsrvd_fix_b_12_q, expRPostExc_uid31_block_rsrvd_fix_q, fracRPostExc_uid24_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,4)@12
    assign out_primWireOut = outRes_uid32_block_rsrvd_fix_q;

endmodule
