module shiftReqisterFFT(
                  clk_slow,
						clk_fast,
						DVI,
						dataIn,
						DVO,
						dataOut
                    );
						  
	input clk_slow, clk_fast, DVI;
	input[15:0] dataIn;
	
	output DVO;
	output [15:0] dataOut;
	
	wire rdreq, rdempty, rdfull;
	wire wrreq, wrempty, wrfull;
	
	
	AsyncFIFO	AsyncFIFO_inst (
	.data (dataIn),
	.rdclk (clk_fast),
	.rdreq (rdreq),
	.wrclk (clk_slow),
	.wrreq (wrreq),
	.q (dataOut),
	.rdempty (rdempty),
	.rdfull (rdfull),
	.wrempty(wrempty), 
	.wrfull (wrfull)
	);
	
	FIFOToFFT FIFOToFFT_inst (
	.clk (clk_fast),
	.DVO (DVO),
	.rdreq (rdreq),
	.rdempty(rdempty),
	.rdfull(rdfull)
	);
	
	CODECToFIFO CODECToFIFO_inst (
	.clk (clk_slow),
	.DVI (DVI),
	.wrreq (wrreq),
	.wrfull (wrfull),
	.wrempty (wrempty)
	);
	


endmodule