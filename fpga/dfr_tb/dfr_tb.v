`timescale 1 ns/1 ns  // time-unit = 1 ns, precision = 10 ps

module dfr_tb;

    reg reset = 1;
    reg clock = 0;
    

    // reg [12:0] dfr_input_addr = 13'h0000;
    reg [31:0] dfr_input_count = 32'h0000_0000;
    
    wire [31:0] dfr_input;

    wire start;
    wire resetn;
    wire busy, done;
    wire [25:0] dfr_output;

    wire dfr_input_count_reset;
    wire dfr_input_count_inc;
    wire dfr_output_ram_wen;
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
		.i_data(dfr_input[31:16]),
		.q_data(dfr_input[15:0]),
		.resetn(resetn),
		.done(done),
		.returndata(dfr_output)
    );

    dfr_rom_ip dfr_rom(
        .clock(clock),
        .address(dfr_input_count[12:0]),
        .q(dfr_input)
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

            dfr_input_count = 0;

            @(posedge dfr_input_count_inc);
            dfr_input_count = 1;

            @(posedge dfr_input_count_inc);
            dfr_input_count = 2;
            
            @(posedge dfr_input_count_inc);
            dfr_input_count = 2;

            @(posedge dfr_fsm_done);
            $finish;

        end
endmodule
