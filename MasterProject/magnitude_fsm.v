module magnitude_fsm(clk, fft_sop, fft_eop, ready, enable, done, source_valid);
	input wire fft_sop;
	input wire fft_eop;
	input wire source_valid;
	output reg ready;
	output wire done;
	output reg enable;
	input clk;
	
	assign done = fft_eop;
	
	initial begin
	enable <= 1'b0;
	end
	
	always @(posedge clk) begin
		ready = 1'b1;
		if (fft_sop == 1'b1 && source_valid == 1'b1) begin
			enable <= 1'b1;
		end
		
		if (fft_eop == 1'b1) begin
			ready <= 1'b0;
			enable <= 1'b0;
		end
	end

endmodule