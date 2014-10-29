`timescale 1ns / 1ps
module Main(
	input clk,
	input rst,
	input ps2clk,
	input ps2data,
	output [7:0] seg,
	output [3:0] an,
	output [7:0] led,
	output anout,
	output aon,
	output again
);

wire clk100MHz, clk50MHz, pwmout, pwmen;
wire [7:0] sineaddr, sinevalue, keyout, tonediv;

ClkDiv cd(.clk(clk), .CLK_OUT50MHz(clk50MHz), .CLK_OUT100MHz(clk100MHz));

PWM pwm(.clk(clk100MHz), .rst(rst), .en(keyrdy), .val(sinevalue), .o(anout));

SineRom s(.addr(sineaddr), .sin(sinevalue));

SevenSegmentDisplay ssd(.clk(clk50MHz), .rst(rst), .d0(tonediv[7:4]), .d1(tonediv[3:0]), .d2(keyout[3:0]),
	.d3(keyout[7:4]), .seg(seg), .an(an));
ps k(.clk(ps2clk), .data(ps2data), .scan_code(keyout), .parity_error(parity_error), .rdy(keyrdy));
//KeyboardDecoder k(.clk(clk100MHz), .ps2d(ps2data), .ps2c(ps2clk), .reset(rst),
//	.key(keyout), .ready(ready) , .debug(led));

Wavegen w(.clk(clk50MHz), .tonediv(tonediv), .out(sineaddr));

ToneSelector t(.ps2clk(ps2clk), .keyin(keyout), .pwmen(pwmen), .tonediv(tonediv));
assign aon = 1'b1;
assign again = 1'b1;
assign led = keyout;
endmodule
