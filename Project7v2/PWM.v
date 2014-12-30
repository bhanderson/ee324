`timescale 1ns / 1ps
module PWM(
    input clk,
	 input rst,
	 input en,
    input [11:0] val,
    output reg o,
	output reg done
    );
	 
	reg [11:0] count = 0;
	always @(posedge(clk)) begin
		if (rst) count <= 0;
		
		count <= count + 1;
		if (count > val && en) begin
			o <= 1'b1;
			done <= 0;
		end
		else begin
			o <= 1'b0;
			done <= 1;
		end
	end
endmodule
