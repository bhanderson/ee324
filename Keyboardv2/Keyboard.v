`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:22 09/25/2014 
// Design Name: 
// Module Name:    Keyboard 
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
module Keyboard(keydata, keyclk, key, ready);
	// ports
	input keydata;
	input keyclk;
	output [7:0] key;
	output ready;

	// Internal variables
	reg[9:0] temp;
	reg[3:0] count;
	reg ready;

	assign key = temp[9:2];
	assign parity = temp[1];

	// PS/2 stuff
	always @ (negedge keyclk) begin // negedge because its always high
		temp <= {temp[8:0], keydata};
		if (count == 11)
			count <= 1'b0;
		else
			count <= count + 1'b1;
		
	end

	// parity stuff
	always @(posedge keyclk) begin
		if (count == 11)
			if (!parity == ^key)
				ready <= 1'b1;
		else
			ready <= 1'b0;
	end

endmodule
