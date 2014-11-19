`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:31:32 11/06/2014 
// Design Name: 
// Module Name:    Project5 
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
module Project5(
    input clk,
    input rst,
    input ps2clk,
    input ps2data,
    output [7:0] seg,
    output [3:0] an,
    output anout,
    output anen,
    output angain
    );
	 
wire [7:0] keyout;
wire [9:0] tonediv, addr, data;

KeyboardDecoder k(.clk(clk), .ps2d(ps2data), .ps2c(ps2clk), .reset(rst), .key(keyout));

ToneSelector t(.ps2clk(ps2clk), .keyin(keyout), .tonediv(tonediv));

WaveGen w(.clk(clk), .divider(tonediv), .out(addr));

rom r(.addr(addr), .data(data));

PWM pwm(.clk(clk), .rst(rst), .en(1'b1), .val(data[7:0]), .o(anout));

SevenSegmentDisplay ssd(.clk(clk), .rst(rst), .d0(d0), .d1(d1), .d2(keyout[3:0]),
	.d3(keyout[7:4]), .seg(seg), .an(an));

assign angain = 1'b1;
assign anen = 1'b1;
endmodule
