module magnitude(clk, sm_enable, sm_done, source_real, source_imag, result);

input clk;

//Statemachine signals
input sm_enable;  //Enable signal til modulen
input sm_done; 	//Teknisk sett source_eop. Brukes til å si når modulen skal sende resultatet videre til registeret.

//FFT output signals
input wire signed [24:0] source_real;
input wire signed [24:0] source_imag;


//Variabler til modulen
reg [31:0] count;
reg [31:0] index;
reg signed [49:0] magn, hold;

//Output til registeret
output reg [31:0] result;


initial begin
	count = 0;
	index = 0;
	magn = 0;
	hold = 0;
end 


always @(posedge clk) begin

	if(sm_enable == 1) begin
		magn <= source_real*source_real + source_imag*source_imag;
		if(magn > hold && count > 12) begin 
			hold <= magn;
			index <= count;
		end
		count <= count + 1'b1;
	end
	
	if(sm_done == 1) begin
		result <= index;
		//Resetter også alle variablene til modulen.
		count <= 0;
		index <= 0;
		magn <= 0;
		hold <= 0;
	end
end 


endmodule
