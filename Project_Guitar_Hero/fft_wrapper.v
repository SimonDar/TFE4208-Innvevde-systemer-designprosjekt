module fft_wrapper(clk, data_in, source_real, source_imag, source_sop, source_eop, source_ready, DVI, source_valid);

input clk;
input wire [15:0] data_in;
input wire source_ready;
input wire DVI;

output wire [24:0] source_real, source_imag;
output wire source_sop;
output wire source_eop;
output wire source_valid;

//fft signals
wire sink_valid;
wire sink_ready;
wire sink_sop;
wire sink_eop;
wire [13:0] fft_pts;

wire [15:0] real_to_fft_p;
wire [15:0] imag_to_fft_p;
reg [4:0] count;
wire reset_n;

assign fft_pts = 8192;


//Control signals for FFT mega

	fft_sink_interface fft_sink_interface_inst(
		.clk(clk), 
		.sink_ready(sink_ready), 
		.data_in(data_in), 
		.DVI (DVI),
		.sink_imag(imag_to_fft_p), 
		.sink_real(real_to_fft_p), 		 
		.sink_sop(sink_sop), 
		.sink_eop(sink_eop), 
		.sink_valid(sink_valid),
		.reset_n(reset_n)
	);
		

//Instatiation of megafunction

	fft fft_inst(
		.clk(clk),
		.reset_n(reset_n),
		.sink_valid(sink_valid),
		.sink_ready(sink_ready),
		.sink_error(2'b00),
		.sink_sop(sink_sop),
		.sink_eop(sink_eop),
		.sink_real(real_to_fft_p),
		.sink_imag(imag_to_fft_p),
		.fftpts_in(fft_pts),
		.inverse(1'b0),
		.source_valid(source_valid),
		.source_ready(source_ready),
		.source_error(),
		.source_sop(source_sop),
		.source_eop(source_eop),
		.source_real(source_real),
		.source_imag(source_imag),
		.fftpts_out()
	);

endmodule