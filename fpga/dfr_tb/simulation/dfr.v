// dfr.v

// Generated using ACDS version 21.1 842

`timescale 1 ps / 1 ps
module dfr (
		input  wire        start,      //       call.valid
		output wire        busy,       //           .stall
		input  wire        clock,      //      clock.clk
		input  wire [15:0] i_data,     //     i_data.data
		input  wire [15:0] q_data,     //     q_data.data
		input  wire        resetn,     //      reset.reset_n
		output wire        done,       //     return.valid
		output wire [25:0] returndata  // returndata.data
	);

	dfr_internal dfr_internal_inst (
		.clock      (clock),      //      clock.clk
		.resetn     (resetn),     //      reset.reset_n
		.start      (start),      //       call.valid
		.busy       (busy),       //           .stall
		.done       (done),       //     return.valid
		.returndata (returndata), // returndata.data
		.i_data     (i_data),     //     i_data.data
		.q_data     (q_data)      //     q_data.data
	);

endmodule