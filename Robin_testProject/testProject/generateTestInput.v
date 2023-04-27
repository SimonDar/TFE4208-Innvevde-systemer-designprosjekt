//Verilog Custom Instruction Template 
module generateTestInput(
                        clk, // CPU's master-input clk <required for multi-cycle>
								result
                    );
    input clk;

    output reg[31:0] result;

    always @ (posedge clk)
    begin
		result <= 32'd1234;
    end
    
endmodule