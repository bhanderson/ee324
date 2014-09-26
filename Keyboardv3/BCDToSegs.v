`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:41 09/25/2014 
// Design Name: 
// Module Name:    BCDToSegs 
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
module BCDToSegs(ones, tens, hundreds, segments);
	input [3:0] ones;
	input [3:0] tens;
	input [1:0] hundreds;
	output [23:0] segments;

	reg [23:0] segments = 0;
	
	always @* begin
		case(ones)
			0:
				segments[7:0] <= 8'b11000000;
			1:
				segments[7:0] <= 8'b11111001;
			2:
				segments[7:0] <= 8'b10100100;
			3:
				segments[7:0] <= 8'b10110000;
			4:
				segments[7:0] <= 8'b10011001;
			5:
				segments[7:0] <= 8'b10010010;
			6:
				segments[7:0] <= 8'b10000010;
			7:
				segments[7:0] <= 8'b11111000;
			8:
				segments[7:0] <= 8'b10000000;
			9:
				segments[7:0] <= 8'b10010000;
			default:
				segments[7:0] <= 8'b00000000;
		endcase
		case (tens)
			0:
				segments[15:8] <= 8'b11000000;
			1:
				segments[15:8] <= 8'b11111001;
			2:
				segments[15:8] <= 8'b10100100;
			3:
				segments[15:8] <= 8'b10110000;
			4:
				segments[15:8] <= 8'b10011001;
			5:
				segments[15:8] <= 8'b10010010;
			6:
				segments[15:8] <= 8'b10000010;
			7:
				segments[15:8] <= 8'b11111000;
			8:
				segments[15:8] <= 8'b10000000;
			9:
				segments[15:8] <= 8'b10010000;
			default:
				segments[15:8] <= 8'b00000000;
		endcase
		case (hundreds)
			0:
				segments[23:16] <= 8'b11000000;
			1:
				segments[23:16] <= 8'b11111001;
			2:
				segments[23:16] <= 8'b10100100;
			3:
				segments[23:16] <= 8'b10110000;
			4:
				segments[23:16] <= 8'b10011001;
			5:
				segments[23:16] <= 8'b10010010;
			6:
				segments[23:16] <= 8'b10000010;
			7:
				segments[23:16] <= 8'b11111000;
			8:
				segments[23:16] <= 8'b10000000;
			9:
				segments[23:16] <= 8'b10010000;
			default:
				segments[23:16] <= 8'b00000000;
		endcase
	end
endmodule
