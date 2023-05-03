module project (clock_slow, clock_fast, DVI, dataIn, result);

	input clock_slow, clock_fast, DVI;
	input[15:0] dataIn;
	output wire [31:0] result;
	
	wire[15:0] dataOut;
	wire DVO;


	shiftReqisterFFT shiftReqisterFFT_inst(
		.clk_slow(clock_slow),
		.clk_fast(clock_fast),
		.DVI(DVI),
		.DVO(DVO),
		.dataIn(dataIn),
		.dataOut(dataOut)
	);
		
	magnitude_wrapper magnitude_wrapper_inst(
		.clk(clock_fast),
		.data_in (dataOut),
		.DVI(DVO),
		.result(result)
	);



endmodule