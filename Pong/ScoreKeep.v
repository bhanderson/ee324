`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:35 12/11/2014 
// Design Name: 
// Module Name:    ScoreKeep 
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
module ScoreKeep(
    input clk,
    input rst,
    input [7:0] Led,
    output [7:0] seg,
    output [4:0] an
    );
reg [3:0] p1 = 0, p2 = 0;
reg [7:0] last_Led;

always @(posedge(clk) or posedge(rst)) begin
	if (rst) begin
		last_Led <= 0;
		p1 <= 0;
		p2 <= 0;
	end else begin
		if (Led == 8'b0000000 && last_Led == 8'b00000001)begin
			p1 <= p1 + 1;
		end
		else if (Led == 8'b00000000 && last_Led == 8'b10000000) begin
			p2 <= p2 + 1;
		end
		last_Led <= Led;
	end
end
SevenSegmentDisplay ssd (
    .clk(clk), 
    .rst(rst), 
    .d0(p2), 
    .d1(0), 
    .d2(0), 
    .d3(p1), 
    .seg(seg), 
    .an(an)
    );

endmodule
