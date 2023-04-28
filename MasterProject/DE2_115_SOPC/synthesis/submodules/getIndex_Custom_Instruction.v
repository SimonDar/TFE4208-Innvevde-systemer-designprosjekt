//Verilog Custom Instruction Template 
module getIndex_Custom_Instruction(
                        clk, // CPU's master-input clk <required for multi-cycle>
                        reset, // CPU's master asynchronous reset <required for multi-cycle>
                        clk_en, // Clock-qualifier <required for multi-cycle>
                        start, // True when this instr. issues <required for multi-cycle>
                        data,
                        done, // True when instr. completes <required for variable muli-cycle>
                        result // result <always required>
                    );
    input clk;
    input reset;
    input clk_en;
    input start;
    input [31:0] data;

    output reg[31:0] result;
    output reg done;

    always @ (posedge clk or posedge reset)
    begin
        if(reset == 1)
        begin
            result <= 0;
            done <= 'b0;
        end
            result <= data;
            done <= 'b1;
    end
    
endmodule