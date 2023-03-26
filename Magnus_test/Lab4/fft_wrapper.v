module fft_wraper(clk, in_signal, real_power, imag_power, fft_source_sop, sink_sop, sink_eop, sink_valid);

//listene med tall er ikke riktig. Du må fikse på det martin!
//Okei martin, im on it!

input clk;
input wire [15:0] in_signal;
wire [15:0] short_in_signal;

output wire [26:0] real_power;
output wire [26:0] imag_power;

//fft signals
output wire sink_valid;
wire sink_ready;
output wire sink_sop;
output wire sink_eop;
wire [13:0] fft_pts;
output wire fft_source_sop;
wire fft_source_eop;

wire [15:0] real_to_fft_p;
wire [15:0] imag_to_fft_p;
reg [4:0] count;
reg reset_n;
reg eop2, sop2, eop5;

initial
begin
reset_n = 0;
count = 5'd0;
end

always @(posedge clk)
begin
count = count+5'd1;
if (count == 5'd10)
begin
reset_n = 1;
end
end




//Control signals for FFT mega

	controll_for_fft controll_for_fft_longer_inst(
		.clk(clk), 
		.insignal(in_signal), 
		.sink_valid(sink_valid), 
		.sink_ready(sink_ready), 
		.sink_error(),
		.sink_sop(sink_sop), 
		.sink_eop(sink_eop), 
		.inverse(inverse), 
		.outreal(real_to_fft_p), 
		.outimag(imag_to_fft_p), 
		.fft_pts(fft_pts)
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
		.source_valid(),
		.source_ready(1'b1),
		.source_error(),
		.source_sop(fft_source_sop),
		.source_eop(fft_source_eop),
		.source_real(real_power),
		.source_imag(imag_power),
		.fftpts_out()
	);

endmodule