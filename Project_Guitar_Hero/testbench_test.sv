`timescale 1ns/100ps

module testbench_test;

	reg clk;

	wire sop;
	wire eop;
	reg[15:0] data_in;
	reg[24:0] data_out_imag;
	reg[24:0] data_out_real;
	reg ready;

	reg[15:0] mem1 [8191:0];
	integer i;
	
	ftt_interface fft_interface_inst(
	.clk(clk),
	.data_in(data_in),
	.ready(ready),
	.sop(sop),
	.eop(eop),
	.data_out_imag(data_out_imag),
	.data_out_real(data_out_real)
	);
	initial begin
		clk = 0;
		$readmemh("sine.txt", mem1);
		i = 0;
		ready <= 1;
		
	end

	always begin
		#10 clk = !clk;
	end

	always @(posedge clk) begin
		if (i < 8192) begin
			$display("%h:%d", mem1[i], i);
			data_in = mem1[i];
		end
		i = i + 1;
		if (i > 8191) begin
			i = 0;
		end
	end
endmodule