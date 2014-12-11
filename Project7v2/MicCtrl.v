`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:28 12/10/2014 
// Design Name: 
// Module Name:    MicCtrl 
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
module MicCtrl(
	input clk,
	input rst,
	input sdata,
	output sclk,
	output ncs,
	output [11:0] data
    );

reg [3:0] present_state, next_state;

wire sample_clk, done;
reg start;

PmodMICRefComp mic(.CLK(clk), .RST(rst), .SDATA(sdata), .SCLK(sclk),
					.nCS(ncs), .DATA(data), .START(start), .DONE(done));

Sample_clk_div div(.clk(clk), .rst(rst), .sample_clk(sample_clk));

always @(posedge(clk)) begin
	present_state <= next_state;
end
always @(posedge(sample_clk)) begin
	case (present_state)
		0:
		begin
			if (!sample_clk)
				next_state <= 1;
			else
				next_state <= 0;
		end
		1:
		begin
			next_state <= 2;
			start <= 1'b1;
		end
		2:
		begin
			start <= 1'b0;
			if (done)
				next_state <= 0;
		end
		default:
		begin
			start <= 1'b0;
			next_state <= 0;
		end
	endcase
	
end

endmodule
