// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Mon Mar 27 16:43:36 2023"

module ftt_interface(
	clk,
	data_in,
	ready,
	sop,
	eop,
	data_out_imag,
	data_out_real
);


input wire	clk;
input wire	[15:0] data_in;
output wire	ready;
output wire	sop;
output wire	eop;
output wire	[24:0] data_out_imag;
output wire	[24:0] data_out_real;

wire	[13:0] fft_pts;
wire	inverse;
wire	[15:0] outimag;
wire	[15:0] outreal;
wire	reset_n;
wire	sink_eop;
wire	[1:0] sink_error;
wire	sink_ready;
wire	sink_sop;
wire	sink_valid;
wire	source_eop;
wire	[24:0] source_imag;
wire	source_ready;
wire	[24:0] source_real;
wire	source_sop;





fft	b2v_inst(
	.clk(clk),
	.reset_n(reset_n),
	.sink_valid(sink_valid),
	.sink_sop(sink_sop),
	.sink_eop(sink_eop),
	.inverse(inverse),
	.source_ready(source_ready),
	.fftpts_in(fft_pts),
	.sink_error(sink_error),
	.sink_imag(outimag),
	.sink_real(outreal),
	
	
	.source_sop(source_sop),
	.source_eop(source_eop),
	
	
	.source_imag(source_imag),
	.source_real(source_real));


controll_for_fft	b2v_inst1(
	.clk(clk),
	.insignal(data_in),
	.sink_valid(sink_valid),
	
	.sink_sop(sink_sop),
	.sink_eop(sink_eop),
	.inverse(inverse),
	.fft_pts(fft_pts),
	.outimag(outimag),
	.outreal(outreal),
	.sink_error(sink_error));


fft_reset_control	b2v_inst2(
	.clk(clk),
	.reset_n(reset_n));

assign	ready = source_ready;
assign	sop = source_sop;
assign	eop = source_eop;
assign	data_out_imag = source_imag;
assign	data_out_real = source_real;

endmodule
