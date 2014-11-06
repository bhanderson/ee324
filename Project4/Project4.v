`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:04:51 11/05/2014 
// Design Name: 
// Module Name:    Project4 
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
module Project4(
    input clk,
	 input ps2data,
	 input ps2clk,
	 input rst,
	 input [3:0] btn,
	 input [7:0] sw,
	 output [7:0] led,
	 output [7:0] seg,
	 output [3:0] an,
	 output anout,
	 output anon,
	 output angain
    );


wire [7:0] keyout;
wire [9:0] addr, data, s;
reg [9:0] div;

always @(sw[0]) begin
	if (sw[0] == 1'b1) div <= 10;
	else div <= 976;
end

WaveGen w(.clk(clk), .divider(div), .out(s));

rom r(.addr(s), .data(data));

PWM p(.clk(clk), .rst(rst), .en(1'b1), .val(data[7:0]), .o(anout));

KeyboardDecoder k (.clk(clk), .ps2d(ps2data), .ps2c(ps2clk), .reset(rst), .key(keyout), .ready(ready),
	.debug(debug));

SevenSegmentDisplay ssd(.clk(clk),.rst(rst), .d0(data[3:0]), .d1(data[7:4]), .d2(keyout[3:0]), .d3(keyout[7:4]), .seg(seg),
	.an(an));


assign anon = 1'b1;
assign angain = 1'b1;

endmodule
