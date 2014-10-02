`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:21:47 09/29/2014
// Design Name:   Problem1
// Module Name:   C:/Users/Bryce/Documents/GitHub/ee324/PWM/Problem1_test.v
// Project Name:  PWM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Problem1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Problem1_test;

	// Inputs
	reg clk;
	reg [7:0] sw;
	reg rst;

	// Outputs
	wire Led;

	// Instantiate the Unit Under Test (UUT)
	Problem1 uut (
		.clk(clk),
			.rst(rst),
		.sw(sw), 
		.Led(Led)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		sw = 0;
		rst = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever begin
			// 30 ms
			#1 clk = ~clk;
		end

	end
      
endmodule

