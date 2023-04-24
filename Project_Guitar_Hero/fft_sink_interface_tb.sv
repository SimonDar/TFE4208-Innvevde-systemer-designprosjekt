`timescale 1ns/100ps

module fft_sink_interface_suite();
	reg clk, sink_sop, sink_eop, sink_ready, sink_valid, reset_n;
	reg[15:0] data_in;
	reg[15:0] sink_imag, sink_real;
	
	reg[15:0] mem1 [8191:0];
	integer i;
	integer r = 0;
	integer disable_count = 0;
	
	fft_sink_interface fft_sink_interface_inst (
	.clk(clk),
	.sink_ready(sink_ready),
	.data_in(data_in),
	.sink_imag(sink_imag),
	.sink_real(sink_real),
	.sink_sop(sink_sop),
	.sink_eop(sink_eop),
	.sink_valid(sink_valid),
	.reset_n(reset_n)
	);
	
	initial begin
		clk = 0;
		$readmemh("sine.txt", mem1);
		i = 0;
		sink_ready <= 1;
		
	end

	always begin
		#10 clk = !clk;
	end
	always @(posedge clk) begin
	if (disable_count == 0) begin
			r = r + 1;
		end
	end
	

	always @(posedge clk) begin
		if (r == 4) begin
			disable_count = 1;
			if (i < 8192) begin
				$display("%h:%d", mem1[i], i);
				data_in = mem1[i];
			end
			i = i + 1;
			if (i > 8191) begin
				i = 0;
			end
		end
	end
endmodule
	