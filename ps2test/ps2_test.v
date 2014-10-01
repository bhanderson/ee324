`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:53:47 09/25/2014 
// Design Name: 
// Module Name:    ps2_test 
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
module ps2_test(
	input wire ps2_kc,ps2_kd,
	input wire ps2_mc,ps2_md,
	output wire led_kc,led_kd,
	output wire led_mc,led_md
    );

	assign led_kc = ps2_kc;
	assign led_kd = ps2_kd;
	assign led_mc = ps2_mc;
	assign led_md = ps2_md;


endmodule
