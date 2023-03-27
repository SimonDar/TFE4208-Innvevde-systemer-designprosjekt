module find_highest();
	input wire fft_sop;
	input wire fft_eop;
	input wire[24:0] fft_real;
	input wire[24:0] fft_img;
	output wire ready;
	input clk;
	
	reg state;
	
	initial begin
		ready <= 1'b0;
		state <= 0;
	end
	
	always (@posedge fft_sop) begin
		state <= 1;
	end;
	
	always (@posedge clk) begin
		case(state) begin
			0:
				valid <= 1;
				
				
			1:
				
		end
		
	end

endmodule