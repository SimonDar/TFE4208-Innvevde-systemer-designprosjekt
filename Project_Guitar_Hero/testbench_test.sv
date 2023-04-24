`timescale 1ns/100ps

module testbench_test;

	reg clk;

	reg source_sop;
	reg source_eop;
	reg source_valid;
	reg[24:0] source_imag;
	reg[24:0] source_real;
	
	reg source_ready;
	reg[15:0] data_in;

	reg[15:0] mem1 [8191:0];
	integer i;
	integer r = 0;
	integer disable_count = 0;
	
	fft_wrapper fft_wrapper_inst(
	.clk(clk),
	.data_in(data_in),
	.source_real(source_real),
	.source_imag(source_imag),
	.source_sop(source_sop),
	.source_eop(source_eop),
	.source_ready(source_ready),
	.source_valid(source_valid)
	);
	initial begin
		clk = 0;
		$readmemh("sine.txt", mem1);
		i = 0;
		source_ready <= 1;
		
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
				//$display("%h:%d", mem1[i], i);
				data_in = mem1[i];
			end
			i = i + 1;
			if (i > 8191) begin
				i = 0;
			end
		end
	end
endmodule