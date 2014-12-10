`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:04:32 12/09/2014 
// Design Name: 
// Module Name:    BtnDebounce 
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
module BtnDebounce(
    input clk,
    input btn,
    output reg btn_out
    );

integer count;

always @(posedge(clk))begin
	if(btn && count < 100) count <= count + 1;
	else if (~btn && count > 0) count <= count - 1;
	
	if (count > 5) btn_out <= 1'b1;
	else btn_out <= 1'b0;
	
end
endmodule
