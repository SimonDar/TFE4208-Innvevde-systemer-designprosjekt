`timescale 1ns/100ps

module magnitude_wrapper_suite;

	reg clk;

	reg[15:0] data_in;
	wire[31:0] result;
	

	reg[15:0] mem1 [8191:0];
	integer i;
	integer r = 0;
	integer disable_count = 0;
	
	magnitude_wrapper magnitude_wrapper_inst(
	.clk(clk),
	.data_in(data_in),
	.result(result)
	);
	initial begin
		clk = 0;
		$readmemh("sine.txt", mem1);
		i = 0;
		
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