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
module KeyboardDecoder(clk, ps2d, ps2c, reset, key, ready, debug);
	// ports
	input clk;
	input ps2d;
	input ps2c;
	input reset;
	output [7:0] key;
	output ready;
	output reg [7:0] debug;
	
	// internal vars
	reg [10:0] temp;
	reg [3:0] count;
	reg ready = 1'b0;
	
	reg ps2c_ff1,ps2c_ff2;
	reg ps2c_falling;
	
	always@(posedge clk) begin
		ps2c_ff1<= ps2c;
		ps2c_ff2<=ps2c_ff1;
	end
	
	assign ps2_falling = (~ps2c_ff1) & ps2c_ff2;
	
	assign key = temp[8:1];
//	assign parity = temp[1];
	
	always @(posedge clk, posedge reset) begin
		if(reset==1'b1) begin
			count<=4'd0;
			temp <=11'd0;
			debug <=8'd0;
		end
		else begin
			if(ps2_falling==1'b1) begin
				temp[10:0] <= {ps2d , temp[10:1]};//{temp[8:0], ps2d};
				debug <=debug+1;
				if (count == 10)
					count <= 4'd0;
				else
					count <= count + 1'b1;
			end
		end
	end
	
//	assign parity = ( key[0] ^ key[1] ^ ...
	
//	always @(posedge ps2c) begin
//		if (count == 11)
//			if(!parity == ^key)
//				ready <= 1'b1;
//			else
//				ready <= 1'b0;
//	end

endmodule
