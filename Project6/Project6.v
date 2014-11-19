`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:11 11/06/2014 
// Design Name: 
// Module Name:    Project6 
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
module Project6(
    output anout,
    output anen,
    output angain,
	 output sclk,
	 input sdata,
	 output ncs,
    input clk,
    input rst,
	 input btn
    );
	 
wire done;
wire [11:0] data;

PmodMICRefComp mic(.CLK(clk), .RST(rst), .SDATA(sdata), .SCLK(sclk), .nCS(ncs), .DATA(data), .START(btn), .DONE(done));
PWM(.clk(clk), .rst(rst), .en(done), .val(data[7:0]), .o(anout));

assign anen = 1'b1;
assign angain = 1'b1;

endmodule
