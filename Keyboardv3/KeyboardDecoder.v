`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:11:39 09/25/2014 
// Design Name: 
// Module Name:    KeyboardDecoder 
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
module KeyboardDecoder(data, clk, key, ready);
	// ports
	input data;
	input clk;
	output [7:0] key;
	output ready;
	
	// internal vars
	reg [9:0] temp = 0;
	reg [3:0] count = 0;
	reg ready = 1'b0;
	
	assign key = temp[9:2];
	assign parity = temp[1];
	
	always @(negedge clk) begin
		temp <= {temp[8:0], data};
		if (count == 11)
			count <= 1'b0;
		else
			count <= count + 1'b1;
	end
	
	always @(posedge clk) begin
		if (count == 11)
			if(!parity == ^key)
				ready <= 1'b1;
			else
				ready <= 1'b0;
	end

endmodule
