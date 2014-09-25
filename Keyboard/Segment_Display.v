`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:54:49 09/24/2014 
// Design Name: 
// Module Name:    Segment_Display 
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
module Segment_Display(clk, data, seg, an);
    input clk;
    input [7:0] data;
    output [7:0] seg;
    output [3:0] an;
reg [7:0] seg;
reg [3:0] an;
reg [3:0] count = 0;
reg [3:0] ones, tens = 0;
reg [1:0] hundreds = 0;
reg [3:0] out = 0;


Binary_to_BCD8(.A(data), .ONES(ones), .TENS(tens), .HUNDREDS(hundreds));


always @(posedge(clk)) begin
	count = count + 1;
	case (count)
		0:
			assign an = 4'b0001;
		1:
			assign an = 4'b0010;
		2:
			assign an = 4'b0100;
		3:
			assign an = 4'b1000;
	endcase
		
end
endmodule
