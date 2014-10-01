`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:41:42 09/29/2014 
// Design Name: 
// Module Name:    Problem1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Problem1(clk, sw, Led);
	input clk;
	input [7:0] sw;
	output reg Led = 0;

	reg [19:0] counter = 0;
	parameter sd = 3_921;

	always @(posedge clk) begin
		counter = counter + 1;
		if (counter <= sw*sd)
			Led <= 1;
		else
			Led <= 4'b0;
		if (counter >= 1_000_000) counter = 0;
	end
endmodule
