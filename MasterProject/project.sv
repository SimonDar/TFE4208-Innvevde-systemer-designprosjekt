`timescale 1ns/100ps

module project_suite;
	
	reg clock_slow, clock_fast, DVI;
	reg [15:0] dataIn;
	reg [31:0] result;
	
	int clock_counter;
	int i;
	int pausing;
	
	reg[15:0] mem1 [8191:0];
	
	project project_inst(
	.clock_slow(clock_slow),
	.clock_fast(clock_fast),
	.DVI(DVI),
	.dataIn(dataIn),
	.result(result)
	);
	
	initial begin
		clock_counter = 0;
		clock_slow = 0;
		clock_fast = 0;
		DVI = 0;
	
		pausing = 0;	
		$readmemh("sine.txt", mem1);
		i = 0;
	end
	
	always begin
		#10 clock_fast = !clock_fast;
		clock_counter = clock_counter + 1;
		if(clock_counter == 10) begin
			clock_counter = 0;
			clock_slow = !clock_slow;
		end
	end
	
	always @(posedge clock_slow) begin
		if (pausing < 16) begin
			DVI = 1;
			dataIn = mem1[i];
			i = i +1;
			pausing = pausing + 1;
			if (i > 8191) begin
				i = 0;
			end
		end
		else begin
			pausing = 0;
			DVI = 0;
		end
	
	end
	
endmodule