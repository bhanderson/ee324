`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:54:46 12/05/2014 
// Design Name: 
// Module Name:    Sample_clk_div 
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
module Sample_clk_div(
    input clk,
    input rst,
    output reg sample_clk
    );
reg [11:0] clk_count = 0;



always @(posedge(clk) or posedge(rst)) begin
	if(rst)begin
		clk_count <= 0;
		sample_clk <= 0;
	end else begin
		clk_count <= clk_count + 1;
		if(clk_count >= 2272) begin
			sample_clk <= 1'b0;
			clk_count <= 0;
		end else if(clk_count < 1131)
			sample_clk <= 1'b0;
		else
			sample_clk <= 1'b1;
	end
end
endmodule
