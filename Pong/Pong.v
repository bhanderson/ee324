`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:54:25 12/11/2014 
// Design Name: 
// Module Name:    Pong 
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
module Pong(
    input clk,
    input [4:0] btn,
    output [7:0] Led,
    output [7:0] seg,
    output [3:0] an
    );

assign rst = btn[3], turbo = btn[1], p2 = btn[4], p1 = btn[2];
reg dirstate = 0;

always @(posedge(clk)) begin
	if (Led == 8'b10000000 && p1) dirstate = 0;
	else if (p1) dirstate = 1;
	if (Led == 8'b00000001 && p2) dirstate = 1;
	else if (p2) dirstate = 0;
end

LedCtrl leds (
    .clk(clk),
	.rst(rst),
    .dir(dirstate),
    .turbo(turbo),
    .Led(Led)
    );

	ScoreKeep score (
    .clk(clk),
    .rst(rst),
    .Led(Led),
    .seg(seg),
    .an(an)
    );
endmodule
