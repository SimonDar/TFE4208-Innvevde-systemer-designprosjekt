`timescale 1ns/100ps

module testbench;

reg clk;
reg[8191:0][16:0] values;

wire sink_sop_sig;
wire sink_eop_sig;
wire[16:0] insignal_sig;



initial
begin
	clk = 0;
	int fd, i;
	fd = $fopen("sine.csv", "r");
	while (!$feof(fd)) begin
		void'($fscan(fd, "%d\n", values[i]));
		i++;
	end
end

always 
begin
#10 clk = !clk;

end


controll_for_fft controll_for_fft_inst
(
	.clk(clk) ,	// input  clk_sig
	.insignal(insignal_sig) ,	// input [13:0] insignal_sig
	.sink_valid(sink_valid_sig) ,	// output  sink_valid_sig
	.sink_sop(sink_sop_sig) ,	// output  sink_sop_sig
	.sink_eop(sink_eop_sig) ,	// output  sink_eop_sig
	.inverse(inverse_sig) ,	// output  inverse_sig
	.sink_ready(sink_ready_sig) ,	// output  sink_ready_sig
	.sink_error(sink_error_sig) ,	// output [1:0] sink_error_sig
	.outreal(outreal_sig) ,	// output [13:0] outreal_sig
	.outimag(outimag_sig) ,	// output [13:0] outimag_sig
	.fft_pts(fft_pts_sig) 	// output [10:0] fft_pts_sig
);




endmodule