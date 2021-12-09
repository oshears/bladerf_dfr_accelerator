module dfr_fsm_tb;

    reg clk = 0;

    reg reset = 1;
    reg dfr_done = 0;
    reg dfr_next_sample = 0;
    reg rx_sample_fifo_rreq = 0;
    wire dfr_start;
    wire rx_sample_fifo_rempty;

    dfr_fsm dfr_fsm (
        .clk(clk),
        .reset(reset),
        .dfr_done(dfr_done),
        .dfr_next_sample(dfr_next_sample),
        .rx_sample_fifo_rreq(rx_sample_fifo_rreq),
        .dfr_start(dfr_start),
        .rx_sample_fifo_rempty(rx_sample_fifo_rempty),
    );

    forever begin
        #1 clk = ~clk;
    end

    
    initial begin
        reset = 1'b1;
        @(posedge clk);
        reset = 1'b0;

        $stop;

    end

endmodule