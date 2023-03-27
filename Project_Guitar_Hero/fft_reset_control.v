module fft_reset_control(clk, reset_n);
	input clk;
	output reg reset_n;
	
	reg[4:0] count;
	
	initial begin
		reset_n <= 1'b0;
	end
	
	always @(posedge clk) begin
		count = count + 5'b1;
		if (count == 5'b10) begin
			reset_n <= 1;
		end
	end
endmodule