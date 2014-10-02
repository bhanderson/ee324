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
module Problem1(clk, rst, sw, Led, JA);
	input clk;
	input rst;
	input [7:0] sw;
	output reg Led;
	output JA;

	reg [27:0] clkcount = 0;
	reg [27:0] nclkcount = 100_000_000;
	reg [2:0] seconds;
	wire [4:0] outs;
	parameter eights = 12_500_000;
	
	assign JA = Led;
	
	PWM a(.clk(clk), .rst(rst), .in(sw), .out(outs[0]), .en(sw[0]));
	PWM b(.clk(clk), .rst(rst), .in(clkcount /eights), .out(outs[1]), .en(seconds < 1));
	PWM c(.clk(clk), .rst(rst), .in(8'b11111111), .out(outs[2]), .en(seconds > 0 && seconds < 3));
	PWM d(.clk(clk), .rst(rst), .in(nclkcount / eights), .out(outs[3]), .en(seconds > 2 && seconds < 4));
	PWM e(.clk(clk), .rst(rst), .in(8'b0), .out(outs[4]), .en(seconds >= 4));
	
	always @(outs) begin
		if (sw[0]) begin
			Led <= outs[0];
		end else begin
			case (seconds)
				0:
					Led <= outs[1];
				1:
					Led <= outs[2];
				2:
					Led <= outs[2];
				3:
					Led <= outs[3];
				default:
					Led <= outs[4];
			endcase
		end
	end

	always @(posedge(clk)) begin
		if (rst) begin
			clkcount <= 0;
			seconds <= 0;
			nclkcount <= 100_000_000;
		end else begin
			clkcount <= clkcount + 1;
			nclkcount <= nclkcount - -1;
			if (clkcount == 100_000_000) begin
				seconds <= seconds + 1;
				clkcount <= 0;
				nclkcount <= 100_000_000;
			end
		end
	end
endmodule
