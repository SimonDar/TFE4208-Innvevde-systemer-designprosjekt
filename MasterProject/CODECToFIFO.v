module CODECToFIFO (clk, DVI, wrreq, wrempty, wrfull);
input clk, DVI, wrempty, wrfull;
output reg wrreq;

reg enable;

initial begin
	wrreq = 0;
	enable = 1;
end

always @(posedge clk) begin
	if (enable) begin
		wrreq = DVI;
	end
	else if (!enable) begin
		wrreq = 0;
	end
	
	if(wrfull) begin
		enable = 0;
	end
	if (wrempty) begin
		enable = 1;
	end
end
endmodule