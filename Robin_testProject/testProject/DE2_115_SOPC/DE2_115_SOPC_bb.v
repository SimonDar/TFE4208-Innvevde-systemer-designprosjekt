
module DE2_115_SOPC (
	clk_clk,
	getmax_0_conduit_end_data,
	pio_led_external_connection_export,
	reset_reset_n);	

	input		clk_clk;
	input	[31:0]	getmax_0_conduit_end_data;
	output	[7:0]	pio_led_external_connection_export;
	input		reset_reset_n;
endmodule
