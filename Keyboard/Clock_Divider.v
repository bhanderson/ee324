`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:13:25 09/24/2014 
// Design Name: 
// Module Name:    Clock_Divider 
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
module Clock_Divider(
    input clk,
    output clk_div
    );
reg [19:0] count;
initial count = 0;
assign clk_div=count[19];


always @(posedge(clk)) begin
	count = count + 1;
end
endmodule
