module FIFOToFFT (clk, DVO, rdreq, rdempty, rdfull);
	input clk, rdempty, rdfull;
	output reg DVO, rdreq;
	
initial begin
	DVO <= 0;
	rdreq <= 0;
end

always @(posedge clk) begin
	if(rdempty) begin 
		DVO <= 0;
		rdreq <= 0;
	end
	if (rdfull) begin
		DVO <= 1;
		rdreq <= 1;
	end
end
endmodule