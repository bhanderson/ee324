`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:34:14 09/25/2014 
// Design Name: 
// Module Name:    BCD2SSD 
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
module SegToSSD(clk,reset, segments, an, seg);
	input clk;
	input reset;
	input [23:0] segments;
	output [3:0] an;
	output [7:0] seg;
	
	reg [3:0] an = 0;
	reg [7:0] seg = 0;
	reg [20:0] count = 0;
	reg [3:0] ancount = 0;
	
	always @(posedge clk,posedge reset) begin
		if(reset == 1'b1) begin
			count <= 1'b0;
			ancount <= 1'b0;
		end
		else if (count == 200000) begin
			count <= 1'b0;
			if (ancount == 3)
				ancount <= 1'b0;
			else
				ancount <= ancount + 1'b1;
		end else begin
			count <= count + 1'b1;
		end
	end

	always @(ancount, segments) begin
		case (ancount)
			0:
				begin
					an <= 4'b1110;
					seg <= segments[7:0];
				end
			1:
				begin
					an <= 4'b1101;
					seg <= segments[15:8];
				end
			2:
				begin
					an <= 4'b1011;
					seg <= segments[23:16];
				end
			default:
				begin
					an <= 4'b0111;
					seg <= 8'b11111111;
				end
		endcase
		//an <= ~an;
	end
endmodule
