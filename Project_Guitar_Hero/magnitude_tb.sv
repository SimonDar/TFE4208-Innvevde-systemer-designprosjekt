`timescale 1ns/100ps

module magnitude_suite();

	reg clk, sm_ready, sm_enable, sm_done;
	reg[12:0] result;
	reg[24:0] source_real, source_imag;
	reg[24:0] mem1 [16383:0];
	
	
	integer i;
	
	magnitude magnitude_inst (
	.clk(clk),
	.sm_ready(sm_ready),
	.sm_enable(sm_enable),
	.sm_done(sm_done),
	.source_real(source_real),
	.source_imag(source_imag),
	.result(result)
	);
	
	initial begin
		clk = 0;
		$readmemh("fft_sample_values.txt", mem1);
		i = 0;
		sm_ready <= 1;
		sm_enable <= 1;
	end
	
	always begin
		#10 clk = !clk;
	end
	
	always @(posedge clk) begin
		if (i == 0) begin
			sm_enable = 1;
			sm_ready = 1;
			sm_done = 0;
		end
		if (i < 16384) begin
			source_real = mem1[i];
			source_imag = mem1[i+1];
		end
		i = i + 2;
		
		if (i >16383) begin
			sm_enable = 0;
			sm_ready = 0;
			sm_done = 1;
			i = 0;
		end
	
	end
		
endmodule