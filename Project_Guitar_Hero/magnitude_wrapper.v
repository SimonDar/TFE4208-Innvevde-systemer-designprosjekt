module magnitude_wrapper(clk, data_in, result);
input clk;
input wire [15:0] data_in;

output wire [31:0] result;

wire source_sop, source_eop, source_valid, sm_enable, sm_done;
wire[24:0] source_real, source_imag;
wire source_ready;

fft_wrapper fft_wrapper_inst
(
	.clk(clk),	
	.data_in(data_in) ,	
	.source_real(source_real),	
	.source_imag(source_imag),	
	.source_sop(source_sop),	
	.source_eop(source_eop),	
	.source_ready(source_ready),	
	.source_valid(source_valid) 	
);

magnitude_fsm magnitude_fsm_inst(
	.clk(clk),
	.fft_sop(source_sop),
	.fft_eop(source_eop),
	.ready(source_ready),
	.enable(sm_enable),
	.done(sm_done),
	.source_valid(source_valid)
);

magnitude magnitude_inst (
	.clk(clk),
	.sm_enable(sm_enable),
	.sm_done(sm_done),
	.source_real(source_real),
	.source_imag(source_imag),
	.result(result)
);

endmodule