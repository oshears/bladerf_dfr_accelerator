// half_adder_tb.v

`timescale 1 ns/1 ns  // time-unit = 1 ns, precision = 10 ps

module dfr_tb;

    reg clock = 0;
    reg start = 0;
    reg resetn = 1;
    reg[15:0] i, q;
    wire busy, done;
    wire [25:0] dfr_output;

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
            resetn = 0;
            @(posedge clock);
            resetn = 1;

            @(posedge clock);
            i = 1;
            q = 2;

            start = 1;
            @(posedge clock);
            @(busy == 0);
            @(posedge clock);
            start = 0;
            @(negedge done);

            start = 1;
            @(posedge clock);
            @(busy == 0);
            @(posedge clock);
            start = 0;
            @(negedge done);

            start = 1;
            @(posedge clock);
            @(busy == 0);
            @(posedge clock);
            start = 0;
            @(negedge done);

            $finish;

        end
endmodule
