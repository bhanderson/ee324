`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:01:47 12/11/2014 
// Design Name: 
// Module Name:    LedCtrl 
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
module LedCtrl(
    input clk,
	input rst,
    input dir,
    input turbo,
    output reg [7:0] Led
    );
integer count = 0, limit = 0;
parameter slow = 50000000;
parameter fast = 25000000;
reg slowClk = 0;
// 200 ms clock divider
always @(posedge(clk) or posedge(rst))begin
	if (rst) begin
		count <= 0;
	end
	else begin
		limit = (turbo) ? fast : slow;
		if (count < limit) count <= count + 1;
		else begin
			slowClk <= ~slowClk;
			count <= 0;
		end
	end
end

always @(posedge(slowClk) or posedge(rst)) begin
	if (rst) Led <= 8'b00010000;
	else begin
		Led <= (dir) ? Led << 1 : Led >> 1;
		if (Led == 8'b00000000) begin
			Led <= 8'b00010000;
		end
	end
end

endmodule
