`timescale 1ns / 1ps
module PWM(
    input clk,
	 input rst,
	 input en,
    input [11:0] val,
    output reg o
    );
	 
	reg [11:0] count = 0;
	always @(posedge(clk)) begin
		if (rst) count <= 0;
		
		count <= count + 1;
		if (count > val && en)
			o <= 1'b1;
		else
			o <= 1'b0;
	end
endmodule
