`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:46 09/25/2014 
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
module Project2(PS2KeyboardData, PS2KeyboardClk, clk, seg, an, Led);
	// Ports
	input PS2KeyboardData;
	input PS2KeyboardClk;
	input clk;
	output [7:0] seg;
	output [3:0] an;
	output [7:0] Led;
	
	// local variables
	reg [31:0] data = 0;
	reg [7:0] key_code = 0;
	wire key_ready;

	SSD s1(.clk(clk), .data(data), .seg(seg), .an(an));
	Keyboard k1(.keydata(PS2KeyboardData), .keyclk(PS2KeyboardClk), .key(key_code), .ready(key_ready));
	
	always @(posedge key_ready) begin
		
	end

endmodule
