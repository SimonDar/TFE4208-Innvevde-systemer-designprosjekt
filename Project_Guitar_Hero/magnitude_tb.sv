`timescale 1ns/100ps

module magnitude_suite();

	reg clk, sm_ready, sm_enable, sm_done;
	reg[12:0] result;
	reg[24:0] source_real, source_imag;
	
	
	magnitude magnitude_inst (
	.clk(clk),
	.sm_ready(sm_ready),
	.sm_enable(sm_enable),
	.sm_done(sm_done),
	.source_real(source_real),
	.source_imag(source_imag),
	.result(result)
	)
	
	initial begin
	
endmodule