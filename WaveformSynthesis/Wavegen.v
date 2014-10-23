`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:43:36 10/20/2014 
// Design Name: 
// Module Name:    Wavegen 
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
module Wavegen(
    input clk,
    input [7:0] tonediv,
    output reg [7:0] out
    );
	 
reg [7:0] count;

always @(posedge(clk)) begin
	if ((count % tonediv) == 0) out <= out + 1;
	count <= count + 1;
end

endmodule
