`timescale 1ns / 1ps
module WaveGen(
    input clk,
    input [9:0] divider,
    output reg [9:0] out
    );
reg [9:0] count;

always @(posedge(clk)) begin
	if (count == divider) begin
		out = out + 1;
		count = 0;
	end
	else count = count + 1;
end


endmodule
