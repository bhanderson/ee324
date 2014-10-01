`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:04 09/25/2014 
// Design Name: 
// Module Name:    Project2 
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
module Project2(
    input clk,
	 input reset,
    input PS2KeyboardData,
    input PS2KeyboardClk,
    output [7:0] seg,
    output [3:0] an,
	 output [7:0] debug
    );
	
	wire key_ready;
	wire[7:0] key;
	wire[3:0] ones ;
	wire[3:0] tens;
	wire[1:0] hundreds;
	wire[23:0] segments;
	
	KeyboardDecoder key0(.ps2d(PS2KeyboardData), .ps2c(PS2KeyboardClk), .clk(clk), 
								.reset(reset), .ready(key_ready), .key(key),
								.debug(debug));

	BCDToSegs bcd0(.ones(ones), .tens(tens), .hundreds(hundreds), .segments(segments));

	SegToSSD seg0(.clk(clk),.reset(reset), .segments(segments), .an(an), .seg(seg));

	BinaryToBCD bin0(.a(key), .ones(ones), .tens(tens), .hundreds(hundreds));

endmodule
