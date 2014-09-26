`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:55 09/25/2014 
// Design Name: 
// Module Name:    SSD 
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
module SSD(clk, hex, seg, an);
	// ports
	input clk;
	input [15:0] hex; // 0xFFFF is the largest we can display
	output [7:0] seg;
	output [4:0] an;
	
	// Internal variables
	reg [17:0] count = 0;
	reg [7:0] seg = 0;
	reg [4:0] an = 0;
	reg [31:0] hexAsSeg = 0;
	
	always @(posedge clk) begin
		count <= count + 1'b1;
	end
	
		BCD2SEG b0 (.leds(hexAsSeg[7:0]), .bcd(hex[3:0]));
		BCD2SEG b1 (.leds(hexAsSeg[15:8]), .bcd(hex[7:4]));
		BCD2SEG b2 (.leds(hexAsSeg[23:16]), .bcd(hex[11:8]));
		BCD2SEG b3 (.leds(hexAsSeg[31:24]), .bcd(hex[15:12]));

	always @(count) begin
		if (count < 20000) begin
			an <= 4'b0001;
			seg <= hexAsSeg[7:0];
		end
		else if (count < 40000) begin
			an <= 4'b0010;
			seg <= hexAsSeg[15:8];
		end
		else if (count < 60000) begin
			an <= 4'b0100;
			seg <= hexAsSeg[23:16];
		end
		else if (count < 80000) begin
			an <= 4'b1000;
			seg <= hexAsSeg[31:24];
		end
		else begin
			an <= 4'b1111;
			seg <= 8'b0;
		end
	end

endmodule
