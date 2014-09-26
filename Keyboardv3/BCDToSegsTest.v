`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:22:56 09/25/2014
// Design Name:   BCDToSegs
// Module Name:   C:/Users/Bryce/Documents/GitHub/ee324/Keyboardv3/BCDToSegsTest.v
// Project Name:  Keyboardv3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCDToSegs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCDToSegsTest;

	// Inputs
	reg [3:0] ones;
	reg [3:0] tens;
	reg [1:0] hundreds;

	// Outputs
	wire [23:0] segments;

	// Instantiate the Unit Under Test (UUT)
	BCDToSegs uut (
		.ones(ones), 
		.tens(tens), 
		.hundreds(hundreds), 
		.segments(segments)
	);

	initial begin
		// Initialize Inputs
		ones = 0;
		tens = 0;
		hundreds = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		ones = 9;
		tens = 9;
		hundreds = 2;

	end
      
endmodule

