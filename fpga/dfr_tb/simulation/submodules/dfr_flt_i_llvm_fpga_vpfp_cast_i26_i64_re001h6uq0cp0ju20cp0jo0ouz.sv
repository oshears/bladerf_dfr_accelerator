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

// SystemVerilog created from flt_i_llvm_fpga_vpfp_cast_i26_i64_result_i_i489_i_dfr0_castBlock_typeSFloatIEEE_52_11_typeSFloatIEEE_17_8_castModeConvert_3k4ix9vt92oh21ck9cqaeqme31i063065064663c62i61o65o63u64160765761d60j64pc1864861ei4q61w63wc1f60uq5ux5gv8yll5gvbyxk5id06uq0cp0ju20cp0jo0ouz
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:29:59 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_flt_i_llvm_fpga_vpfp_cast_i26_i64_re001h6uq0cp0ju20cp0jo0ouz (
    input wire [63:0] in_0,
    output wire [25:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [11:0] cstBiasOut_uid6_block_rsrvd_fix_q;
    wire [10:0] cstAllOWE_uid7_block_rsrvd_fix_q;
    wire [51:0] cstZeroWF_uid8_block_rsrvd_fix_q;
    wire [10:0] cstAllZWE_uid9_block_rsrvd_fix_q;
    wire [10:0] exp_x_uid10_block_rsrvd_fix_b;
    wire [51:0] frac_x_uid11_block_rsrvd_fix_b;
    wire [0:0] excZ_x_uid12_block_rsrvd_fix_qi;
    reg [0:0] excZ_x_uid12_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid13_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid13_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid15_block_rsrvd_fix_q;
    wire [0:0] excI_x_uid16_block_rsrvd_fix_q;
    wire [0:0] excN_x_uid17_block_rsrvd_fix_qi;
    reg [0:0] excN_x_uid17_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid18_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid19_block_rsrvd_fix_q;
    wire [0:0] excR_x_uid20_block_rsrvd_fix_qi;
    reg [0:0] excR_x_uid20_block_rsrvd_fix_q;
    wire [17:0] fracXWOP1_uid23_block_rsrvd_fix_b;
    wire [28:0] expXFracX_uid24_block_rsrvd_fix_q;
    wire [16:0] zeroPaddingInAddition_uid27_block_rsrvd_fix_q;
    wire [29:0] rndExpUpdate_uid28_block_rsrvd_fix_q;
    wire [31:0] expFracR_uid29_block_rsrvd_fix_a;
    wire [31:0] expFracR_uid29_block_rsrvd_fix_b;
    logic [31:0] expFracR_uid29_block_rsrvd_fix_o;
    wire [30:0] expFracR_uid29_block_rsrvd_fix_q;
    wire [17:0] fracR_uid30_block_rsrvd_fix_in;
    wire [16:0] fracR_uid30_block_rsrvd_fix_b;
    wire [25:0] expR_uid31_block_rsrvd_fix_in;
    wire [7:0] expR_uid31_block_rsrvd_fix_b;
    wire [12:0] expRExt_uid32_block_rsrvd_fix_b;
    wire [14:0] expUdf_uid33_block_rsrvd_fix_a;
    wire [14:0] expUdf_uid33_block_rsrvd_fix_b;
    logic [14:0] expUdf_uid33_block_rsrvd_fix_o;
    wire [0:0] expUdf_uid33_block_rsrvd_fix_n;
    wire [7:0] expWEOutAllO_uid34_block_rsrvd_fix_q;
    wire [14:0] expOvf_uid35_block_rsrvd_fix_a;
    wire [14:0] expOvf_uid35_block_rsrvd_fix_b;
    logic [14:0] expOvf_uid35_block_rsrvd_fix_o;
    wire [0:0] expOvf_uid35_block_rsrvd_fix_n;
    wire [0:0] inRegAndUdf_uid36_block_rsrvd_fix_q;
    wire [0:0] excRZero_uid37_block_rsrvd_fix_qi;
    reg [0:0] excRZero_uid37_block_rsrvd_fix_q;
    wire [0:0] inRegAndOvf_uid38_block_rsrvd_fix_q;
    wire [0:0] excRInf_uid39_block_rsrvd_fix_qi;
    reg [0:0] excRInf_uid39_block_rsrvd_fix_q;
    wire [2:0] concExc_uid40_block_rsrvd_fix_q;
    reg [1:0] excREnc_uid41_block_rsrvd_fix_q;
    wire [16:0] oneFracRPostExc2_uid42_block_rsrvd_fix_q;
    wire [1:0] fracRPostExc_uid45_block_rsrvd_fix_s;
    reg [16:0] fracRPostExc_uid45_block_rsrvd_fix_q;
    wire [7:0] zeroExpRPostExc_uid48_block_rsrvd_fix_q;
    wire [1:0] expRPostExc_uid49_block_rsrvd_fix_s;
    reg [7:0] expRPostExc_uid49_block_rsrvd_fix_q;
    wire [0:0] signX_uid50_block_rsrvd_fix_b;
    wire [25:0] fpRes_uid51_block_rsrvd_fix_q;
    wire [5:0] z0_uid53_fracXIsZero_uid14_block_rsrvd_fix_in;
    wire [5:0] z0_uid53_fracXIsZero_uid14_block_rsrvd_fix_b;
    wire [0:0] eq0_uid55_fracXIsZero_uid14_block_rsrvd_fix_qi;
    reg [0:0] eq0_uid55_fracXIsZero_uid14_block_rsrvd_fix_q;
    wire [11:0] z1_uid56_fracXIsZero_uid14_block_rsrvd_fix_in;
    wire [5:0] z1_uid56_fracXIsZero_uid14_block_rsrvd_fix_b;
    wire [0:0] eq1_uid58_fracXIsZero_uid14_block_rsrvd_fix_qi;
    reg [0:0] eq1_uid58_fracXIsZero_uid14_block_rsrvd_fix_q;
    wire [17:0] z2_uid59_fracXIsZero_uid14_block_rsrvd_fix_in;
    wire [5:0] z2_uid59_fracXIsZero_uid14_block_rsrvd_fix_b;
    wire [0:0] eq2_uid61_fracXIsZero_uid14_block_rsrvd_fix_qi;
    reg [0:0] eq2_uid61_fracXIsZero_uid14_block_rsrvd_fix_q;
    wire [23:0] z3_uid62_fracXIsZero_uid14_block_rsrvd_fix_in;
    wire [5:0] z3_uid62_fracXIsZero_uid14_block_rsrvd_fix_b;
    wire [0:0] eq3_uid64_fracXIsZero_uid14_block_rsrvd_fix_qi;
    reg [0:0] eq3_uid64_fracXIsZero_uid14_block_rsrvd_fix_q;
    wire [29:0] z4_uid65_fracXIsZero_uid14_block_rsrvd_fix_in;
    wire [5:0] z4_uid65_fracXIsZero_uid14_block_rsrvd_fix_b;
    wire [0:0] eq4_uid67_fracXIsZero_uid14_block_rsrvd_fix_qi;
    reg [0:0] eq4_uid67_fracXIsZero_uid14_block_rsrvd_fix_q;
    wire [35:0] z5_uid68_fracXIsZero_uid14_block_rsrvd_fix_in;
    wire [5:0] z5_uid68_fracXIsZero_uid14_block_rsrvd_fix_b;
    wire [0:0] eq5_uid70_fracXIsZero_uid14_block_rsrvd_fix_qi;
    reg [0:0] eq5_uid70_fracXIsZero_uid14_block_rsrvd_fix_q;
    wire [41:0] z6_uid71_fracXIsZero_uid14_block_rsrvd_fix_in;
    wire [5:0] z6_uid71_fracXIsZero_uid14_block_rsrvd_fix_b;
    wire [0:0] eq6_uid73_fracXIsZero_uid14_block_rsrvd_fix_qi;
    reg [0:0] eq6_uid73_fracXIsZero_uid14_block_rsrvd_fix_q;
    wire [47:0] z7_uid74_fracXIsZero_uid14_block_rsrvd_fix_in;
    wire [5:0] z7_uid74_fracXIsZero_uid14_block_rsrvd_fix_b;
    wire [0:0] eq7_uid76_fracXIsZero_uid14_block_rsrvd_fix_qi;
    reg [0:0] eq7_uid76_fracXIsZero_uid14_block_rsrvd_fix_q;
    wire [3:0] z8_uid77_fracXIsZero_uid14_block_rsrvd_fix_b;
    wire [0:0] eq8_uid79_fracXIsZero_uid14_block_rsrvd_fix_qi;
    reg [0:0] eq8_uid79_fracXIsZero_uid14_block_rsrvd_fix_q;
    wire [0:0] and_lev0_uid80_fracXIsZero_uid14_block_rsrvd_fix_q;
    wire [0:0] and_lev0_uid81_fracXIsZero_uid14_block_rsrvd_fix_q;
    wire [0:0] and_lev1_uid82_fracXIsZero_uid14_block_rsrvd_fix_qi;
    reg [0:0] and_lev1_uid82_fracXIsZero_uid14_block_rsrvd_fix_q;
    wire [5:0] c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_b;
    wire [5:0] c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_c;
    wire [5:0] c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_d;
    wire [5:0] c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_e;
    wire [5:0] c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_f;
    wire [5:0] c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_g;
    wire [5:0] c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_h;
    wire [5:0] c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_i;
    wire [3:0] c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_j;
    reg [0:0] redist0_signX_uid50_block_rsrvd_fix_b_4_q;
    reg [0:0] redist0_signX_uid50_block_rsrvd_fix_b_4_delay_0;
    reg [0:0] redist0_signX_uid50_block_rsrvd_fix_b_4_delay_1;
    reg [0:0] redist0_signX_uid50_block_rsrvd_fix_b_4_delay_2;
    reg [7:0] redist1_expR_uid31_block_rsrvd_fix_b_3_q;
    reg [7:0] redist1_expR_uid31_block_rsrvd_fix_b_3_delay_0;
    reg [7:0] redist1_expR_uid31_block_rsrvd_fix_b_3_delay_1;
    reg [16:0] redist2_fracR_uid30_block_rsrvd_fix_b_3_q;
    reg [16:0] redist2_fracR_uid30_block_rsrvd_fix_b_3_delay_0;
    reg [0:0] redist3_expXIsMax_uid13_block_rsrvd_fix_q_2_q;
    reg [0:0] redist4_excZ_x_uid12_block_rsrvd_fix_q_2_q;
    reg [16:0] redist2_fracR_uid30_block_rsrvd_fix_b_3_inputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // signX_uid50_block_rsrvd_fix(BITSELECT,49)@0
    assign signX_uid50_block_rsrvd_fix_b = $unsigned(in_0[63:63]);

    // redist0_signX_uid50_block_rsrvd_fix_b_4(DELAY,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_signX_uid50_block_rsrvd_fix_b_4_delay_0 <= '0;
            redist0_signX_uid50_block_rsrvd_fix_b_4_delay_1 <= '0;
            redist0_signX_uid50_block_rsrvd_fix_b_4_delay_2 <= '0;
            redist0_signX_uid50_block_rsrvd_fix_b_4_q <= '0;
        end
        else
        begin
            redist0_signX_uid50_block_rsrvd_fix_b_4_delay_0 <= $unsigned(signX_uid50_block_rsrvd_fix_b);
            redist0_signX_uid50_block_rsrvd_fix_b_4_delay_1 <= redist0_signX_uid50_block_rsrvd_fix_b_4_delay_0;
            redist0_signX_uid50_block_rsrvd_fix_b_4_delay_2 <= redist0_signX_uid50_block_rsrvd_fix_b_4_delay_1;
            redist0_signX_uid50_block_rsrvd_fix_b_4_q <= redist0_signX_uid50_block_rsrvd_fix_b_4_delay_2;
        end
    end

    // expWEOutAllO_uid34_block_rsrvd_fix(CONSTANT,33)
    assign expWEOutAllO_uid34_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // cstBiasOut_uid6_block_rsrvd_fix(CONSTANT,5)
    assign cstBiasOut_uid6_block_rsrvd_fix_q = $unsigned(12'b110010000000);

    // zeroPaddingInAddition_uid27_block_rsrvd_fix(CONSTANT,26)
    assign zeroPaddingInAddition_uid27_block_rsrvd_fix_q = $unsigned(17'b00000000000000000);

    // rndExpUpdate_uid28_block_rsrvd_fix(BITJOIN,27)@0
    assign rndExpUpdate_uid28_block_rsrvd_fix_q = {cstBiasOut_uid6_block_rsrvd_fix_q, zeroPaddingInAddition_uid27_block_rsrvd_fix_q, VCC_q};

    // exp_x_uid10_block_rsrvd_fix(BITSELECT,9)@0
    assign exp_x_uid10_block_rsrvd_fix_b = in_0[62:52];

    // frac_x_uid11_block_rsrvd_fix(BITSELECT,10)@0
    assign frac_x_uid11_block_rsrvd_fix_b = in_0[51:0];

    // fracXWOP1_uid23_block_rsrvd_fix(BITSELECT,22)@0
    assign fracXWOP1_uid23_block_rsrvd_fix_b = frac_x_uid11_block_rsrvd_fix_b[51:34];

    // expXFracX_uid24_block_rsrvd_fix(BITJOIN,23)@0
    assign expXFracX_uid24_block_rsrvd_fix_q = {exp_x_uid10_block_rsrvd_fix_b, fracXWOP1_uid23_block_rsrvd_fix_b};

    // expFracR_uid29_block_rsrvd_fix(ADD,28)@0 + 1
    assign expFracR_uid29_block_rsrvd_fix_a = $unsigned({3'b000, expXFracX_uid24_block_rsrvd_fix_q});
    assign expFracR_uid29_block_rsrvd_fix_b = $unsigned({{2{rndExpUpdate_uid28_block_rsrvd_fix_q[29]}}, rndExpUpdate_uid28_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expFracR_uid29_block_rsrvd_fix_o <= 32'b0;
        end
        else
        begin
            expFracR_uid29_block_rsrvd_fix_o <= $unsigned($signed(expFracR_uid29_block_rsrvd_fix_a) + $signed(expFracR_uid29_block_rsrvd_fix_b));
        end
    end
    assign expFracR_uid29_block_rsrvd_fix_q = expFracR_uid29_block_rsrvd_fix_o[30:0];

    // expR_uid31_block_rsrvd_fix(BITSELECT,30)@1
    assign expR_uid31_block_rsrvd_fix_in = expFracR_uid29_block_rsrvd_fix_q[25:0];
    assign expR_uid31_block_rsrvd_fix_b = expR_uid31_block_rsrvd_fix_in[25:18];

    // redist1_expR_uid31_block_rsrvd_fix_b_3(DELAY,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_expR_uid31_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist1_expR_uid31_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist1_expR_uid31_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist1_expR_uid31_block_rsrvd_fix_b_3_delay_0 <= $unsigned(expR_uid31_block_rsrvd_fix_b);
            redist1_expR_uid31_block_rsrvd_fix_b_3_delay_1 <= redist1_expR_uid31_block_rsrvd_fix_b_3_delay_0;
            redist1_expR_uid31_block_rsrvd_fix_b_3_q <= redist1_expR_uid31_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // zeroExpRPostExc_uid48_block_rsrvd_fix(CONSTANT,47)
    assign zeroExpRPostExc_uid48_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // cstZeroWF_uid8_block_rsrvd_fix(CONSTANT,7)
    assign cstZeroWF_uid8_block_rsrvd_fix_q = $unsigned(52'b0000000000000000000000000000000000000000000000000000);

    // c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select(BITSELECT,82)
    assign c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_b = cstZeroWF_uid8_block_rsrvd_fix_q[5:0];
    assign c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_c = cstZeroWF_uid8_block_rsrvd_fix_q[11:6];
    assign c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_d = cstZeroWF_uid8_block_rsrvd_fix_q[17:12];
    assign c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_e = cstZeroWF_uid8_block_rsrvd_fix_q[23:18];
    assign c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_f = cstZeroWF_uid8_block_rsrvd_fix_q[29:24];
    assign c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_g = cstZeroWF_uid8_block_rsrvd_fix_q[35:30];
    assign c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_h = cstZeroWF_uid8_block_rsrvd_fix_q[41:36];
    assign c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_i = cstZeroWF_uid8_block_rsrvd_fix_q[47:42];
    assign c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_j = cstZeroWF_uid8_block_rsrvd_fix_q[51:48];

    // z8_uid77_fracXIsZero_uid14_block_rsrvd_fix(BITSELECT,76)@0
    assign z8_uid77_fracXIsZero_uid14_block_rsrvd_fix_b = frac_x_uid11_block_rsrvd_fix_b[51:48];

    // eq8_uid79_fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,78)@0 + 1
    assign eq8_uid79_fracXIsZero_uid14_block_rsrvd_fix_qi = $unsigned(z8_uid77_fracXIsZero_uid14_block_rsrvd_fix_b == c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_j ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq8_uid79_fracXIsZero_uid14_block_rsrvd_fix_delay ( .xin(eq8_uid79_fracXIsZero_uid14_block_rsrvd_fix_qi), .xout(eq8_uid79_fracXIsZero_uid14_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // z7_uid74_fracXIsZero_uid14_block_rsrvd_fix(BITSELECT,73)@0
    assign z7_uid74_fracXIsZero_uid14_block_rsrvd_fix_in = frac_x_uid11_block_rsrvd_fix_b[47:0];
    assign z7_uid74_fracXIsZero_uid14_block_rsrvd_fix_b = z7_uid74_fracXIsZero_uid14_block_rsrvd_fix_in[47:42];

    // eq7_uid76_fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,75)@0 + 1
    assign eq7_uid76_fracXIsZero_uid14_block_rsrvd_fix_qi = $unsigned(z7_uid74_fracXIsZero_uid14_block_rsrvd_fix_b == c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_i ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq7_uid76_fracXIsZero_uid14_block_rsrvd_fix_delay ( .xin(eq7_uid76_fracXIsZero_uid14_block_rsrvd_fix_qi), .xout(eq7_uid76_fracXIsZero_uid14_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // z6_uid71_fracXIsZero_uid14_block_rsrvd_fix(BITSELECT,70)@0
    assign z6_uid71_fracXIsZero_uid14_block_rsrvd_fix_in = frac_x_uid11_block_rsrvd_fix_b[41:0];
    assign z6_uid71_fracXIsZero_uid14_block_rsrvd_fix_b = z6_uid71_fracXIsZero_uid14_block_rsrvd_fix_in[41:36];

    // eq6_uid73_fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,72)@0 + 1
    assign eq6_uid73_fracXIsZero_uid14_block_rsrvd_fix_qi = $unsigned(z6_uid71_fracXIsZero_uid14_block_rsrvd_fix_b == c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_h ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq6_uid73_fracXIsZero_uid14_block_rsrvd_fix_delay ( .xin(eq6_uid73_fracXIsZero_uid14_block_rsrvd_fix_qi), .xout(eq6_uid73_fracXIsZero_uid14_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // and_lev0_uid81_fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,80)@1
    assign and_lev0_uid81_fracXIsZero_uid14_block_rsrvd_fix_q = eq6_uid73_fracXIsZero_uid14_block_rsrvd_fix_q & eq7_uid76_fracXIsZero_uid14_block_rsrvd_fix_q & eq8_uid79_fracXIsZero_uid14_block_rsrvd_fix_q;

    // z5_uid68_fracXIsZero_uid14_block_rsrvd_fix(BITSELECT,67)@0
    assign z5_uid68_fracXIsZero_uid14_block_rsrvd_fix_in = frac_x_uid11_block_rsrvd_fix_b[35:0];
    assign z5_uid68_fracXIsZero_uid14_block_rsrvd_fix_b = z5_uid68_fracXIsZero_uid14_block_rsrvd_fix_in[35:30];

    // eq5_uid70_fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,69)@0 + 1
    assign eq5_uid70_fracXIsZero_uid14_block_rsrvd_fix_qi = $unsigned(z5_uid68_fracXIsZero_uid14_block_rsrvd_fix_b == c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_g ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq5_uid70_fracXIsZero_uid14_block_rsrvd_fix_delay ( .xin(eq5_uid70_fracXIsZero_uid14_block_rsrvd_fix_qi), .xout(eq5_uid70_fracXIsZero_uid14_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // z4_uid65_fracXIsZero_uid14_block_rsrvd_fix(BITSELECT,64)@0
    assign z4_uid65_fracXIsZero_uid14_block_rsrvd_fix_in = frac_x_uid11_block_rsrvd_fix_b[29:0];
    assign z4_uid65_fracXIsZero_uid14_block_rsrvd_fix_b = z4_uid65_fracXIsZero_uid14_block_rsrvd_fix_in[29:24];

    // eq4_uid67_fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,66)@0 + 1
    assign eq4_uid67_fracXIsZero_uid14_block_rsrvd_fix_qi = $unsigned(z4_uid65_fracXIsZero_uid14_block_rsrvd_fix_b == c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_f ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq4_uid67_fracXIsZero_uid14_block_rsrvd_fix_delay ( .xin(eq4_uid67_fracXIsZero_uid14_block_rsrvd_fix_qi), .xout(eq4_uid67_fracXIsZero_uid14_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // z3_uid62_fracXIsZero_uid14_block_rsrvd_fix(BITSELECT,61)@0
    assign z3_uid62_fracXIsZero_uid14_block_rsrvd_fix_in = frac_x_uid11_block_rsrvd_fix_b[23:0];
    assign z3_uid62_fracXIsZero_uid14_block_rsrvd_fix_b = z3_uid62_fracXIsZero_uid14_block_rsrvd_fix_in[23:18];

    // eq3_uid64_fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,63)@0 + 1
    assign eq3_uid64_fracXIsZero_uid14_block_rsrvd_fix_qi = $unsigned(z3_uid62_fracXIsZero_uid14_block_rsrvd_fix_b == c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_e ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq3_uid64_fracXIsZero_uid14_block_rsrvd_fix_delay ( .xin(eq3_uid64_fracXIsZero_uid14_block_rsrvd_fix_qi), .xout(eq3_uid64_fracXIsZero_uid14_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // z2_uid59_fracXIsZero_uid14_block_rsrvd_fix(BITSELECT,58)@0
    assign z2_uid59_fracXIsZero_uid14_block_rsrvd_fix_in = frac_x_uid11_block_rsrvd_fix_b[17:0];
    assign z2_uid59_fracXIsZero_uid14_block_rsrvd_fix_b = z2_uid59_fracXIsZero_uid14_block_rsrvd_fix_in[17:12];

    // eq2_uid61_fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,60)@0 + 1
    assign eq2_uid61_fracXIsZero_uid14_block_rsrvd_fix_qi = $unsigned(z2_uid59_fracXIsZero_uid14_block_rsrvd_fix_b == c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_d ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq2_uid61_fracXIsZero_uid14_block_rsrvd_fix_delay ( .xin(eq2_uid61_fracXIsZero_uid14_block_rsrvd_fix_qi), .xout(eq2_uid61_fracXIsZero_uid14_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // z1_uid56_fracXIsZero_uid14_block_rsrvd_fix(BITSELECT,55)@0
    assign z1_uid56_fracXIsZero_uid14_block_rsrvd_fix_in = frac_x_uid11_block_rsrvd_fix_b[11:0];
    assign z1_uid56_fracXIsZero_uid14_block_rsrvd_fix_b = z1_uid56_fracXIsZero_uid14_block_rsrvd_fix_in[11:6];

    // eq1_uid58_fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,57)@0 + 1
    assign eq1_uid58_fracXIsZero_uid14_block_rsrvd_fix_qi = $unsigned(z1_uid56_fracXIsZero_uid14_block_rsrvd_fix_b == c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_c ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq1_uid58_fracXIsZero_uid14_block_rsrvd_fix_delay ( .xin(eq1_uid58_fracXIsZero_uid14_block_rsrvd_fix_qi), .xout(eq1_uid58_fracXIsZero_uid14_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // z0_uid53_fracXIsZero_uid14_block_rsrvd_fix(BITSELECT,52)@0
    assign z0_uid53_fracXIsZero_uid14_block_rsrvd_fix_in = frac_x_uid11_block_rsrvd_fix_b[5:0];
    assign z0_uid53_fracXIsZero_uid14_block_rsrvd_fix_b = z0_uid53_fracXIsZero_uid14_block_rsrvd_fix_in[5:0];

    // eq0_uid55_fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,54)@0 + 1
    assign eq0_uid55_fracXIsZero_uid14_block_rsrvd_fix_qi = $unsigned(z0_uid53_fracXIsZero_uid14_block_rsrvd_fix_b == c0_uid54_fracXIsZero_uid14_block_rsrvd_fix_merged_bit_select_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq0_uid55_fracXIsZero_uid14_block_rsrvd_fix_delay ( .xin(eq0_uid55_fracXIsZero_uid14_block_rsrvd_fix_qi), .xout(eq0_uid55_fracXIsZero_uid14_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // and_lev0_uid80_fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,79)@1
    assign and_lev0_uid80_fracXIsZero_uid14_block_rsrvd_fix_q = eq0_uid55_fracXIsZero_uid14_block_rsrvd_fix_q & eq1_uid58_fracXIsZero_uid14_block_rsrvd_fix_q & eq2_uid61_fracXIsZero_uid14_block_rsrvd_fix_q & eq3_uid64_fracXIsZero_uid14_block_rsrvd_fix_q & eq4_uid67_fracXIsZero_uid14_block_rsrvd_fix_q & eq5_uid70_fracXIsZero_uid14_block_rsrvd_fix_q;

    // and_lev1_uid82_fracXIsZero_uid14_block_rsrvd_fix(LOGICAL,81)@1 + 1
    assign and_lev1_uid82_fracXIsZero_uid14_block_rsrvd_fix_qi = and_lev0_uid80_fracXIsZero_uid14_block_rsrvd_fix_q & and_lev0_uid81_fracXIsZero_uid14_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    and_lev1_uid82_fracXIsZero_uid14_block_rsrvd_fix_delay ( .xin(and_lev1_uid82_fracXIsZero_uid14_block_rsrvd_fix_qi), .xout(and_lev1_uid82_fracXIsZero_uid14_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid15_block_rsrvd_fix(LOGICAL,14)@2
    assign fracXIsNotZero_uid15_block_rsrvd_fix_q = ~ (and_lev1_uid82_fracXIsZero_uid14_block_rsrvd_fix_q);

    // cstAllOWE_uid7_block_rsrvd_fix(CONSTANT,6)
    assign cstAllOWE_uid7_block_rsrvd_fix_q = $unsigned(11'b11111111111);

    // expXIsMax_uid13_block_rsrvd_fix(LOGICAL,12)@0 + 1
    assign expXIsMax_uid13_block_rsrvd_fix_qi = $unsigned(exp_x_uid10_block_rsrvd_fix_b == cstAllOWE_uid7_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid13_block_rsrvd_fix_delay ( .xin(expXIsMax_uid13_block_rsrvd_fix_qi), .xout(expXIsMax_uid13_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_expXIsMax_uid13_block_rsrvd_fix_q_2(DELAY,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_expXIsMax_uid13_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist3_expXIsMax_uid13_block_rsrvd_fix_q_2_q <= $unsigned(expXIsMax_uid13_block_rsrvd_fix_q);
        end
    end

    // excN_x_uid17_block_rsrvd_fix(LOGICAL,16)@2 + 1
    assign excN_x_uid17_block_rsrvd_fix_qi = redist3_expXIsMax_uid13_block_rsrvd_fix_q_2_q & fracXIsNotZero_uid15_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_x_uid17_block_rsrvd_fix_delay ( .xin(excN_x_uid17_block_rsrvd_fix_qi), .xout(excN_x_uid17_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // expRExt_uid32_block_rsrvd_fix(BITSELECT,31)@1
    assign expRExt_uid32_block_rsrvd_fix_b = $unsigned(expFracR_uid29_block_rsrvd_fix_q[30:18]);

    // expOvf_uid35_block_rsrvd_fix(COMPARE,34)@1 + 1
    assign expOvf_uid35_block_rsrvd_fix_a = $unsigned({{2{expRExt_uid32_block_rsrvd_fix_b[12]}}, expRExt_uid32_block_rsrvd_fix_b});
    assign expOvf_uid35_block_rsrvd_fix_b = $unsigned({7'b0000000, expWEOutAllO_uid34_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expOvf_uid35_block_rsrvd_fix_o <= 15'b0;
        end
        else
        begin
            expOvf_uid35_block_rsrvd_fix_o <= $unsigned($signed(expOvf_uid35_block_rsrvd_fix_a) - $signed(expOvf_uid35_block_rsrvd_fix_b));
        end
    end
    assign expOvf_uid35_block_rsrvd_fix_n[0] = ~ (expOvf_uid35_block_rsrvd_fix_o[14]);

    // invExpXIsMax_uid18_block_rsrvd_fix(LOGICAL,17)@1
    assign invExpXIsMax_uid18_block_rsrvd_fix_q = ~ (expXIsMax_uid13_block_rsrvd_fix_q);

    // cstAllZWE_uid9_block_rsrvd_fix(CONSTANT,8)
    assign cstAllZWE_uid9_block_rsrvd_fix_q = $unsigned(11'b00000000000);

    // excZ_x_uid12_block_rsrvd_fix(LOGICAL,11)@0 + 1
    assign excZ_x_uid12_block_rsrvd_fix_qi = $unsigned(exp_x_uid10_block_rsrvd_fix_b == cstAllZWE_uid9_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid12_block_rsrvd_fix_delay ( .xin(excZ_x_uid12_block_rsrvd_fix_qi), .xout(excZ_x_uid12_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // InvExpXIsZero_uid19_block_rsrvd_fix(LOGICAL,18)@1
    assign InvExpXIsZero_uid19_block_rsrvd_fix_q = ~ (excZ_x_uid12_block_rsrvd_fix_q);

    // excR_x_uid20_block_rsrvd_fix(LOGICAL,19)@1 + 1
    assign excR_x_uid20_block_rsrvd_fix_qi = InvExpXIsZero_uid19_block_rsrvd_fix_q & invExpXIsMax_uid18_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excR_x_uid20_block_rsrvd_fix_delay ( .xin(excR_x_uid20_block_rsrvd_fix_qi), .xout(excR_x_uid20_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // inRegAndOvf_uid38_block_rsrvd_fix(LOGICAL,37)@2
    assign inRegAndOvf_uid38_block_rsrvd_fix_q = excR_x_uid20_block_rsrvd_fix_q & expOvf_uid35_block_rsrvd_fix_n;

    // excI_x_uid16_block_rsrvd_fix(LOGICAL,15)@2
    assign excI_x_uid16_block_rsrvd_fix_q = redist3_expXIsMax_uid13_block_rsrvd_fix_q_2_q & and_lev1_uid82_fracXIsZero_uid14_block_rsrvd_fix_q;

    // excRInf_uid39_block_rsrvd_fix(LOGICAL,38)@2 + 1
    assign excRInf_uid39_block_rsrvd_fix_qi = excI_x_uid16_block_rsrvd_fix_q | inRegAndOvf_uid38_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRInf_uid39_block_rsrvd_fix_delay ( .xin(excRInf_uid39_block_rsrvd_fix_qi), .xout(excRInf_uid39_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expUdf_uid33_block_rsrvd_fix(COMPARE,32)@1 + 1
    assign expUdf_uid33_block_rsrvd_fix_a = $unsigned({14'b00000000000000, GND_q});
    assign expUdf_uid33_block_rsrvd_fix_b = $unsigned({{2{expRExt_uid32_block_rsrvd_fix_b[12]}}, expRExt_uid32_block_rsrvd_fix_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expUdf_uid33_block_rsrvd_fix_o <= 15'b0;
        end
        else
        begin
            expUdf_uid33_block_rsrvd_fix_o <= $unsigned($signed(expUdf_uid33_block_rsrvd_fix_a) - $signed(expUdf_uid33_block_rsrvd_fix_b));
        end
    end
    assign expUdf_uid33_block_rsrvd_fix_n[0] = ~ (expUdf_uid33_block_rsrvd_fix_o[14]);

    // inRegAndUdf_uid36_block_rsrvd_fix(LOGICAL,35)@2
    assign inRegAndUdf_uid36_block_rsrvd_fix_q = excR_x_uid20_block_rsrvd_fix_q & expUdf_uid33_block_rsrvd_fix_n;

    // redist4_excZ_x_uid12_block_rsrvd_fix_q_2(DELAY,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_excZ_x_uid12_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist4_excZ_x_uid12_block_rsrvd_fix_q_2_q <= $unsigned(excZ_x_uid12_block_rsrvd_fix_q);
        end
    end

    // excRZero_uid37_block_rsrvd_fix(LOGICAL,36)@2 + 1
    assign excRZero_uid37_block_rsrvd_fix_qi = redist4_excZ_x_uid12_block_rsrvd_fix_q_2_q | inRegAndUdf_uid36_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRZero_uid37_block_rsrvd_fix_delay ( .xin(excRZero_uid37_block_rsrvd_fix_qi), .xout(excRZero_uid37_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // concExc_uid40_block_rsrvd_fix(BITJOIN,39)@3
    assign concExc_uid40_block_rsrvd_fix_q = {excN_x_uid17_block_rsrvd_fix_q, excRInf_uid39_block_rsrvd_fix_q, excRZero_uid37_block_rsrvd_fix_q};

    // excREnc_uid41_block_rsrvd_fix(LOOKUP,40)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            excREnc_uid41_block_rsrvd_fix_q <= $unsigned(2'b01);
        end
        else
        begin
            unique case (concExc_uid40_block_rsrvd_fix_q)
                3'b000 : excREnc_uid41_block_rsrvd_fix_q <= 2'b01;
                3'b001 : excREnc_uid41_block_rsrvd_fix_q <= 2'b00;
                3'b010 : excREnc_uid41_block_rsrvd_fix_q <= 2'b10;
                3'b011 : excREnc_uid41_block_rsrvd_fix_q <= 2'b00;
                3'b100 : excREnc_uid41_block_rsrvd_fix_q <= 2'b11;
                3'b101 : excREnc_uid41_block_rsrvd_fix_q <= 2'b00;
                3'b110 : excREnc_uid41_block_rsrvd_fix_q <= 2'b00;
                3'b111 : excREnc_uid41_block_rsrvd_fix_q <= 2'b00;
                default : begin
                              // unreachable
                              excREnc_uid41_block_rsrvd_fix_q <= 2'bxx;
                          end
            endcase
        end
    end

    // expRPostExc_uid49_block_rsrvd_fix(MUX,48)@4
    assign expRPostExc_uid49_block_rsrvd_fix_s = excREnc_uid41_block_rsrvd_fix_q;
    always @(expRPostExc_uid49_block_rsrvd_fix_s or zeroExpRPostExc_uid48_block_rsrvd_fix_q or redist1_expR_uid31_block_rsrvd_fix_b_3_q or expWEOutAllO_uid34_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid49_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid49_block_rsrvd_fix_q = zeroExpRPostExc_uid48_block_rsrvd_fix_q;
            2'b01 : expRPostExc_uid49_block_rsrvd_fix_q = redist1_expR_uid31_block_rsrvd_fix_b_3_q;
            2'b10 : expRPostExc_uid49_block_rsrvd_fix_q = expWEOutAllO_uid34_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid49_block_rsrvd_fix_q = expWEOutAllO_uid34_block_rsrvd_fix_q;
            default : expRPostExc_uid49_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // oneFracRPostExc2_uid42_block_rsrvd_fix(CONSTANT,41)
    assign oneFracRPostExc2_uid42_block_rsrvd_fix_q = $unsigned(17'b00000000000000001);

    // fracR_uid30_block_rsrvd_fix(BITSELECT,29)@1
    assign fracR_uid30_block_rsrvd_fix_in = expFracR_uid29_block_rsrvd_fix_q[17:0];
    assign fracR_uid30_block_rsrvd_fix_b = fracR_uid30_block_rsrvd_fix_in[17:1];

    // redist2_fracR_uid30_block_rsrvd_fix_b_3_inputreg0(DELAY,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_fracR_uid30_block_rsrvd_fix_b_3_inputreg0_q <= '0;
        end
        else
        begin
            redist2_fracR_uid30_block_rsrvd_fix_b_3_inputreg0_q <= $unsigned(fracR_uid30_block_rsrvd_fix_b);
        end
    end

    // redist2_fracR_uid30_block_rsrvd_fix_b_3(DELAY,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_fracR_uid30_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist2_fracR_uid30_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist2_fracR_uid30_block_rsrvd_fix_b_3_delay_0 <= $unsigned(redist2_fracR_uid30_block_rsrvd_fix_b_3_inputreg0_q);
            redist2_fracR_uid30_block_rsrvd_fix_b_3_q <= redist2_fracR_uid30_block_rsrvd_fix_b_3_delay_0;
        end
    end

    // fracRPostExc_uid45_block_rsrvd_fix(MUX,44)@4
    assign fracRPostExc_uid45_block_rsrvd_fix_s = excREnc_uid41_block_rsrvd_fix_q;
    always @(fracRPostExc_uid45_block_rsrvd_fix_s or zeroPaddingInAddition_uid27_block_rsrvd_fix_q or redist2_fracR_uid30_block_rsrvd_fix_b_3_q or oneFracRPostExc2_uid42_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid45_block_rsrvd_fix_s)
            2'b00 : fracRPostExc_uid45_block_rsrvd_fix_q = zeroPaddingInAddition_uid27_block_rsrvd_fix_q;
            2'b01 : fracRPostExc_uid45_block_rsrvd_fix_q = redist2_fracR_uid30_block_rsrvd_fix_b_3_q;
            2'b10 : fracRPostExc_uid45_block_rsrvd_fix_q = zeroPaddingInAddition_uid27_block_rsrvd_fix_q;
            2'b11 : fracRPostExc_uid45_block_rsrvd_fix_q = oneFracRPostExc2_uid42_block_rsrvd_fix_q;
            default : fracRPostExc_uid45_block_rsrvd_fix_q = 17'b0;
        endcase
    end

    // fpRes_uid51_block_rsrvd_fix(BITJOIN,50)@4
    assign fpRes_uid51_block_rsrvd_fix_q = {redist0_signX_uid50_block_rsrvd_fix_b_4_q, expRPostExc_uid49_block_rsrvd_fix_q, fracRPostExc_uid45_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,4)@4
    assign out_primWireOut = fpRes_uid51_block_rsrvd_fix_q;

endmodule
