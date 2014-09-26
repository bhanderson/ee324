`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:29:33 09/25/2014
// Design Name:   BinaryToBCD
// Module Name:   C:/Users/Bryce/Documents/GitHub/ee324/Keyboardv3/BinaryToBCDTest.v
// Project Name:  Keyboardv3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BinaryToBCD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BinaryToBCDTest;

	// Inputs
	reg [7:0] a;

	// Outputs
	wire [3:0] ones;
	wire [3:0] tens;
	wire [1:0] hundreds;

	// Instantiate the Unit Under Test (UUT)
	BinaryToBCD uut (
		.a(a), 
		.ones(ones), 
		.tens(tens), 
		.hundreds(hundreds)
	);

	initial begin
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever begin
			#1 a = 231;
			#2 a = 222;
			#3 a = 0;
		end
	end
      
endmodule

