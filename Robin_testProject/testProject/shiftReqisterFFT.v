module shiftReqisterFFT(
                        clk_slow,
						clk_fast,
						reset_,
						DVI,
						dataIn,
						
						DVO,
						dataOut
                    );
						  
	input 			clk_slow;
	input			clk_fast;
	input 			reset_;
	input			DVI;
	input [15:0] 	dataIn;
	
	output reg				DVO;
	output reg [15:0] 	dataOut;
	
	reg 	[31:0] 	counter;
	reg 	[15:0] 	dataTemp[8191:0];
	reg 	[31:0] 	counter_next;
	reg				isSendingData;
	reg		 		DVI_reg;
	reg		 		used_clk;

	// Update counter_next:
	// If new input data (DVI), then increment counter_next.
	// If sending output (DVO), then increment counter_next.
	always @(posedge clk_fast, posedge DVI, negedge reset_) begin
		if (!reset_) begin
			counter_next <= 16'b0;
		end else begin
			if(DVI) begin
				dataTemp[counter] <= dataIn;
				counter_next <= counter + 1;
			end else if(clk_fast) begin
				counter_next <= counter + 1;
			end

			if(counter_next == 8192) begin
				counter_next <= 0;
			end
		end
	end 

	// Update DVO.
	always @(posedge clk_slow, negedge reset_) begin
		if (!reset_) begin
			isSendingData <= 1'b0; 
		end else begin
			if(counter == 8191 && !DVO) begin
				isSendingData <= 1'b1;
			end
			else if(counter == 8191 && DVO) begin
				isSendingData <= 1'b0;
			end
		end
	end

	always @(posedge clk_slow, posedge clk_fast, negedge reset_) begin
		if (!reset_) begin
			used_clk <= 0;
		end else begin
			if(isSendingData) begin
				used_clk <= clk_fast;
			end else begin
				used_clk <= clk_slow;
			end
		end
	end

	// Update counter synchronous:
	always @(posedge used_clk, negedge reset_) begin
		if (!reset_) begin
			counter <= 0;
		end else begin
			counter <= counter_next;
		end
	end
	
	always @(posedge used_clk, negedge reset_) begin
		if (!reset_) begin
			dataOut <= 0;
		end else begin
			DVO <= isSendingData;
			if(isSendingData) begin
				dataOut <= dataTemp[counter];
			end
		end
	end

	
	

endmodule