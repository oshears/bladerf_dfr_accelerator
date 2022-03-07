// half_adder_tb.v

`timescale 1 ns/1 ns  // time-unit = 1 ns, precision = 10 ps

module dfr_tb;

    reg reset = 1;
    reg clock = 0;
    reg[15:0] i = 0, q = 0;
    reg [31:0] dfr_input_count = 32'h0000_0000;

    wire start;
    wire resetn;
    wire busy, done;
    wire [25:0] dfr_output;

    wire dfr_input_count_reset;
    wire dfr_input_count_inc;
    wire dfr_output_ram_wen;
    wire resetn;
    wire dfr_fsm_done;

    dfr_fsm dfr_ip_fsm(
        .clk(clock),
        .reset(reset),
        .dfr_done(done),
        .dfr_busy(busy),
        .dfr_input_count(dfr_input_count),
        .dfr_input_count_reset(dfr_input_count_reset),
        .dfr_input_count_inc(dfr_input_count_inc),
        .dfr_resetn(resetn),
        .dfr_start(start),
        .dfr_output_ram_wen(dfr_output_ram_wen),
        .dfr_fsm_done(dfr_fsm_done)
    );

    dfr_internal dfr_ip(
		.start(start),
		.busy(busy),
		.clock(clock),
		.i_data(i),
		.q_data(q),
		.resetn(resetn),
		.done(done),
		.returndata(dfr_output)
    );

    always begin
        clock = !clock;
        #1;
    end
    
    initial // initial block executes only once
        begin
            reset = 1;
            @(posedge clock);
            reset = 0;

            i = 1;
            q = 2;

            @(posedge dfr_input_count_inc);
            dfr_input_count = 32'h0000_0001;
            i = 2;
            q = 3;
            
            @(posedge dfr_input_count_inc);
            dfr_input_count = 32'hFFFF_FFFF;
            i = 4;
            q = 5;

            @(posedge dfr_fsm_done);
            $finish;

        end
endmodule
