`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:13:16 12/11/2014
// Design Name:   LedCtrl
// Module Name:   /home/bhanderson/Documents/src/ee324/Pong/LedCtrlTest.v
// Project Name:  Pong
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LedCtrl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LedCtrlTest;

	// Inputs
	reg clk;
	reg rst;
	reg dir;
	reg turbo;

	// Outputs
	wire [7:0] Led;

	// Instantiate the Unit Under Test (UUT)
	LedCtrl uut (
		.clk(clk), 
		.rst(rst), 
		.dir(dir), 
		.turbo(turbo), 
		.Led(Led)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		dir = 0;
		turbo = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
    always begin
	# 1 clk = ~clk;
	end
endmodule

