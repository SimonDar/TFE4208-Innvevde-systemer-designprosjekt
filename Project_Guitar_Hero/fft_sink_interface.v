module fft_sink_interface(clk, sink_ready, data_in, sink_imag, sink_real, sink_sop, sink_eop, sink_valid, reset_n);
	input clk;
	input sink_ready;
	input[15:0] data_in;
	
	output[15:0] sink_imag, sink_real;
	output reg sink_sop;
	output reg sink_eop;
	output reg sink_valid;
	output reg reset_n;
	
	reg[1:0] reset_count;
	reg[12:0] data_count;
	
initial begin
	sink_sop <= 0;
	sink_eop <= 0;
	sink_valid <= 0;
	reset_n <= 0;
	reset_count <= 0;
	data_count <= 0;
end

assign sink_imag = 0;
assign sink_real = data_in;

always @(posedge clk) begin
	if (reset_count == 2) begin
		reset_n <= 1;
	end
	else begin
		reset_count <= reset_count + 1'b1;
		sink_valid <= 1;
	end
	
end
	
always @(posedge clk) begin
	if(reset_n && sink_ready) begin
		if (data_count == 13'd0) begin
			sink_sop <= 1;
			sink_eop <= 0;
		end
		if (data_count == 13'd1) begin
			sink_sop <= 0;
		end
		if (data_count == 13'd8191) begin
			sink_eop <= 1;
		end
		
		data_count <= data_count + 1'b1;
	end
end


	
endmodule