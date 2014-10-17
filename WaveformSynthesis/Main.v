`timescale 1ns / 1ps
module Main(
    input clk,
	 input rst,
	 input ps2clk,
	 input ps2data,
    output [7:0] seg,
    output [3:0] an,
    output anout,
    output aon,
    output again
    );

wire clk100MHz, clk50MHz, pwmout, pwmen;
wire [7:0] sineaddr, sinevalue, keyout;

ClkDiv cd(.clk(clk), .CLK_OUT50MHz(clk50MHz), .CLK_OUT100MHz(clk100MHz));

KeyboardDecoder k(.clk(clk100MHz), .ps2d(ps2data), .ps2c(ps2clk), .reset(rst),
	.key(keyout), .ready(ready) , .debug(debug));
SineRom s(.addr(sineaddr), .sin(sinevalue));
SevenSegmentDisplay ssd(.clk(clk100MHz), .rst(rst), .d0(d0), .d1(d1), .d2(d2),
	.d3(d3), .seg(seg), .an(an));
PWM pwm(.clk(clk100MHz), .rst(rst), .en(en), .val(sinevalue), .o(pwmout));
endmodule
