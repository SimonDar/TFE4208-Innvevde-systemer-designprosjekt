module magnitude(clk, sm_ready, sm_enable, sm_done, source_real, source_imag, result);

//Du må deklarere alle signalene du har brukt og da din dumdum martin (:
//Okaaaai martin ^^

input clk;

//Statemachine signals
input sm_ready;	//Sier ifra når statemachinen er klar og modulen skal starte.
input sm_enable;  //Enable signal til modulen
input sm_done; 	//Teknisk sett source_eop. Brukes til å si når modulen skal sende resultatet videre til registeret.

//FFT output signals
input [24:0] source_real;
input [24:0] source_imag;


//Variabler til modulen
reg [14:0] count;
reg [12:0] index;
reg [31:0] magn, hold;
reg [24:0] ref_real, ref_imag;


//Output til registeret
output reg [12:0] result;


initial begin
	count = 0;
	index = 0;
	magn = 0;
	hold = 0;
	ref_real = source_real;
	ref_imag = source_imag;
end 


always @(posedge clk) begin

	if(sm_ready == 1) begin
		if(sm_enable == 1) begin
			//Her må jeg finne en måte å regne ut magnetuden....
			//Jeg trenger ikke regne ut magnetutden direkte, jeg må bare late som at alle er 25 bit store tall og se hvem som er størst.
			
			//bruk referansetallene ref_real og ref_imag til å regne magne ved formelen
			//magne = ref_real^2 + ref_imag^2
			magn <= ref_real**2 + ref_imag**2;
			if(magn > hold) begin 
				hold <= magn;
				//Save index og og tallet på indexen på en eller annen måte
				index <= count;
			end
			count <= count + 1'b1;
		end
	end
	if(sm_done == 1) begin
		//Må bruke "done" til å skrive til registeret.
		//Da skal jeg sende indexen som tilsvarer den høyeste magnituden til registeret.
		result <= index;
		//Resetter også alle variablene til modulen.
		count <= 0;
		index <= 0;
		magn <= 0;
		hold <= 0;
	end
end 


endmodule
