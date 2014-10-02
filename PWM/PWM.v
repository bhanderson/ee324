`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:17:18 10/01/2014 
// Design Name: 
// Module Name:    PWM 
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
module PWM(
    input clk,
	 input rst,
	 input en,
    input [7:0] in,
    output reg out
    );

	reg [7:0] counter = 0;
	//parameter sd = 3_921;

	always @(posedge(clk)) begin
		if (rst) begin
			counter <= 0;
		end else if (en) begin
			counter <= counter + 1;
			if (counter <= in)
				out <= 1'b1;
			else
				out <= 1'b0;
			if (counter >= 255) counter <= 0;
		end
	end
endmodule
