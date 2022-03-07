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

// SystemVerilog created from i_sfc_logic_s_c2_in_wt_entry_dfrs_c2_enter_dfr0
// Created for function/kernel dfr
// SystemVerilog created on Mon Mar  7 11:29:59 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dfr_i_sfc_logic_s_c2_in_wt_entry_s_c2_enter_dfr0 (
    input wire [15:0] in_i_data,
    input wire [15:0] in_q_data,
    output wire [25:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_dfr2,
    output wire [0:0] out_unnamed_dfr8_0_tpl,
    input wire [0:0] in_c2_eni1_0_tpl,
    input wire [0:0] in_c2_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [25:0] i_llvm_fpga_ffwd_source_i26_unnamed_dfr7_dfr12_out_intel_reserved_ffwd_1_0;
    wire [15:0] i_llvm_fpga_sync_buffer_i16_i_data_sync_buffer_dfr2_out_buffer_out;
    wire [15:0] i_llvm_fpga_sync_buffer_i16_q_data_sync_buffer_dfr6_out_buffer_out;
    wire [31:0] c_i32_204717_recast_x_q;
    wire [25:0] i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i276_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i276_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr1_x_out_primWireOut;
    wire [25:0] i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr1_x_out_primWireOut;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    reg [0:0] redist0_sync_together20_aunroll_x_in_c2_eni1_1_tpl_14_q;
    reg [0:0] redist1_sync_together20_aunroll_x_in_i_valid_13_q;
    reg [0:0] redist2_sync_together20_aunroll_x_in_i_valid_73_q;
    reg [25:0] redist3_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist4_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist5_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist6_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist7_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist8_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr1_x_out_primWireOut_1_q;
    reg [25:0] redist9_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr1_x_out_primWireOut_1_q;
    reg [0:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_inputreg0_q;
    reg [0:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_outputreg0_q;
    wire redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_reset0;
    wire [0:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_ia;
    wire [4:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_aa;
    wire [4:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_ab;
    wire [0:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_iq;
    wire [0:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_q;
    wire [4:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_i;
    (* preserve *) reg redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_eq;
    reg [4:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_wraddr_q;
    wire [5:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_last_q;
    wire [5:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_cmp_b;
    wire [0:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_cmpReg_q;
    wire [0:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_notEnable_q;
    wire [0:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_sticky_ena_q;
    wire [0:0] redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_notEnable(LOGICAL,66)
    assign redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_nor(LOGICAL,67)
    assign redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_nor_q = ~ (redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_notEnable_q | redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_sticky_ena_q);

    // redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_last(CONSTANT,63)
    assign redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_last_q = $unsigned(6'b011100);

    // redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_cmp(LOGICAL,64)
    assign redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_cmp_b = {1'b0, redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_q};
    assign redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_cmp_q = $unsigned(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_last_q == redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_cmpReg(REG,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_cmpReg_q <= $unsigned(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_cmp_q);
        end
    end

    // redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_sticky_ena(REG,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_nor_q == 1'b1)
        begin
            redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_sticky_ena_q <= $unsigned(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_cmpReg_q);
        end
    end

    // redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_enaAnd(LOGICAL,69)
    assign redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_enaAnd_q = redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_sticky_ena_q & VCC_q;

    // redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt(COUNTER,61)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_i <= 5'd0;
            redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_i == 5'd28)
            begin
                redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_eq == 1'b1)
            begin
                redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_i <= $unsigned(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_i <= $unsigned(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_q = redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_i[4:0];

    // redist1_sync_together20_aunroll_x_in_i_valid_13(DELAY,48)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_sync_together20_aunroll_x_in_i_valid_13 ( .xin(in_i_valid), .xout(redist1_sync_together20_aunroll_x_in_i_valid_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_inputreg0(DELAY,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_inputreg0_q <= $unsigned(redist1_sync_together20_aunroll_x_in_i_valid_13_q);
        end
    end

    // redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_wraddr(REG,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_wraddr_q <= $unsigned(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_q);
        end
    end

    // redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem(DUALMEM,60)
    assign redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_ia = $unsigned(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_inputreg0_q);
    assign redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_aa = redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_wraddr_q;
    assign redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_ab = redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_rdcnt_q;
    assign redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_reset0 = ~ (resetn);
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
    ) redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_dmem (
        .clocken1(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_aa),
        .data_a(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_ab),
        .q_b(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_iq),
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
    assign redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_q = redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_iq[0:0];

    // redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_outputreg0(DELAY,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_outputreg0_q <= $unsigned(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_mem_q);
        end
    end

    // redist2_sync_together20_aunroll_x_in_i_valid_73(DELAY,49)
    dspba_delay_ver #( .width(1), .depth(27), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together20_aunroll_x_in_i_valid_73 ( .xin(redist2_sync_together20_aunroll_x_in_i_valid_73_split_0_outputreg0_q), .xout(redist2_sync_together20_aunroll_x_in_i_valid_73_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg3(REG,46)@75 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist2_sync_together20_aunroll_x_in_i_valid_73_q);
        end
    end

    // c_i32_204717_recast_x(CONSTANT,12)
    assign c_i32_204717_recast_x_q = $unsigned(32'b00000000000000000000011111111111);

    // i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr1_x(BLACKBOX,23)@18
    dfr_flt_i_llvm_fpga_vpfp_cast_from_fixed0003f0cd16ol0cd06cj0qfzo thei_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr1_x (
        .in_0(c_i32_204717_recast_x_q),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr1_x_out_primWireOut_1(DELAY,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr1_x_out_primWireOut);
        end
    end

    // valid_fanout_reg2(REG,45)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together20_aunroll_x_in_i_valid_13_q);
        end
    end

    // redist0_sync_together20_aunroll_x_in_c2_eni1_1_tpl_14(DELAY,47)
    dspba_delay_ver #( .width(1), .depth(14), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together20_aunroll_x_in_c2_eni1_1_tpl_14 ( .xin(in_c2_eni1_1_tpl), .xout(redist0_sync_together20_aunroll_x_in_c2_eni1_1_tpl_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_sync_buffer_i16_q_data_sync_buffer_dfr6(BLACKBOX,7)@0
    // in in_i_dependence@16
    // in in_valid_in@16
    // out out_buffer_out@16
    // out out_valid_out@16
    dfr_i_llvm_fpga_sync_buffer_i16_q_data_sync_buffer_0 thei_llvm_fpga_sync_buffer_i16_q_data_sync_buffer_dfr6 (
        .in_buffer_in(in_q_data),
        .in_i_dependence(redist0_sync_together20_aunroll_x_in_c2_eni1_1_tpl_14_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i16_q_data_sync_buffer_dfr6_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr1_x(BLACKBOX,17)@16
    // out out_primWireOut@28
    dfr_flt_i_llvm_fpga_vpfp_cast_from_fixed0001f0cd16ol0cd06cj0qfzo thei_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr1_x (
        .in_0(i_llvm_fpga_sync_buffer_i16_q_data_sync_buffer_dfr6_out_buffer_out),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr1_x_out_primWireOut_1(DELAY,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr1_x(BLACKBOX,25)@19
    // in in_0@29
    // out out_primWireOut@45
    dfr_flt_i_llvm_fpga_vpfp_div_i26_i26_i260000b0c2463a0054c2a6355y thei_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr1_x (
        .in_0(redist9_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i376_dfr1_x_out_primWireOut_1_q),
        .in_1(redist7_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr1_x_out_primWireOut_1(DELAY,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr1_x(BLACKBOX,33)@46
    // out out_primWireOut@54
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260000b0c2463a0054c2a6355y thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr1_x (
        .in_0(redist6_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr1_x_out_primWireOut_1_q),
        .in_1(redist6_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i339_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr1_x_out_primWireOut_1(DELAY,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr1_x_out_primWireOut);
        end
    end

    // valid_fanout_reg1(REG,44)@15 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist1_sync_together20_aunroll_x_in_i_valid_13_q);
        end
    end

    // i_llvm_fpga_sync_buffer_i16_i_data_sync_buffer_dfr2(BLACKBOX,6)@0
    // in in_i_dependence@16
    // in in_valid_in@16
    // out out_buffer_out@16
    // out out_valid_out@16
    dfr_i_llvm_fpga_sync_buffer_i16_i_data_sync_buffer_0 thei_llvm_fpga_sync_buffer_i16_i_data_sync_buffer_dfr2 (
        .in_buffer_in(in_i_data),
        .in_i_dependence(redist0_sync_together20_aunroll_x_in_c2_eni1_1_tpl_14_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_i16_i_data_sync_buffer_dfr2_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr1_x(BLACKBOX,20)@16
    // out out_primWireOut@28
    dfr_flt_i_llvm_fpga_vpfp_cast_from_fixed0002f0cd16ol0cd06cj0qfzo thei_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr1_x (
        .in_0(i_llvm_fpga_sync_buffer_i16_i_data_sync_buffer_dfr2_out_buffer_out),
        .out_primWireOut(i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr1_x_out_primWireOut_1(DELAY,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr1_x(BLACKBOX,29)@19
    // in in_0@29
    // out out_primWireOut@45
    dfr_flt_i_llvm_fpga_vpfp_div_i26_i26_i260001b0c2463a0054c2a6355y thei_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr1_x (
        .in_0(redist8_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i16_result_i_i439_dfr1_x_out_primWireOut_1_q),
        .in_1(redist7_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr0_i_llvm_fpga_vpfp_cast_from_fixed_i26_i32_result_i_i418_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr1_x_out_primWireOut_1(DELAY,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr1_x(BLACKBOX,37)@46
    // out out_primWireOut@54
    dfr_flt_i_llvm_fpga_vpfp_mul_i26_i26_i260001b0c2463a0054c2a6355y thei_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr1_x (
        .in_0(redist5_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr1_x_out_primWireOut_1_q),
        .in_1(redist5_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr0_i_llvm_fpga_vpfp_div_i26_i26_i26_result_i_i394_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr1_x_out_primWireOut_1(DELAY,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr1_x_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist3_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr1_x_out_primWireOut_1_q <= $unsigned(i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr1_x_out_primWireOut);
        end
    end

    // i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i276_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i276_dfr1_x(BLACKBOX,13)@55
    // out out_primWireOut@76
    dfr_flt_i_llvm_fpga_vpfp_add_i26_i26_i2600003a0054c2a6344c246w65 thei_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i276_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i276_dfr1_x (
        .in_0(redist3_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i318_dfr1_x_out_primWireOut_1_q),
        .in_1(redist4_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr0_i_llvm_fpga_vpfp_mul_i26_i26_i26_result_i_i297_dfr1_x_out_primWireOut_1_q),
        .out_primWireOut(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i276_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i276_dfr1_x_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i26_unnamed_dfr7_dfr12(BLACKBOX,5)@76
    // out out_intel_reserved_ffwd_1_0@20000000
    dfr_i_llvm_fpga_ffwd_source_i26_unnamed_7_dfr0 thei_llvm_fpga_ffwd_source_i26_unnamed_dfr7_dfr12 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i276_dfr0_i_llvm_fpga_vpfp_add_i26_i26_i26_result_i_i276_dfr1_x_out_primWireOut),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i26_unnamed_dfr7_dfr12_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,10)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i26_unnamed_dfr7_dfr12_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg0(REG,43)@75 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together20_aunroll_x_in_i_valid_73_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,41)@76
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_dfr2 = GND_q;
    assign out_unnamed_dfr8_0_tpl = GND_q;

endmodule
