// half_adder_tb.v

`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module dfr_tb;

    reg clock = 0;
    reg clock2x = 0;
    reg start = 0;
    reg stall = 0;
    reg resetn = 1;
    reg[15:0] i, q;
    wire busy, done;
    wire [25:0] dfr_output;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  
    localparam half_period = 10;  
    localparam quarter_period = 5;  

    dfr_internal dfr_ip(
		.start(start),
		.busy(busy),
		.clock(clock),
		.clock2x(clock2x),
		.i_data(i),
		.q_data(q),
		.resetn(resetn),
		.done(done),
		.stall(stall),
		.returndata(dfr_output)
    );

    always begin
        clock = !clock;
        #half_period;
    end

    always begin
        clock2x = !clock2x;
        #quarter_period;
    end
    
    initial // initial block executes only once
        begin
            resetn = 0;
            #period;
            #period;
            resetn = 1;

            #period;
            i = 1;
            q = 2;
            start = 1;

            #period;

            #274707;

            start = 0;

            #274707;

        end
endmodule
