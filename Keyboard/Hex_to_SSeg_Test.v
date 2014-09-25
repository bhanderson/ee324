`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:26:14 09/24/2014
// Design Name:   Hex_to_SSeg
// Module Name:   C:/Users/Bryce/Documents/GitHub/ee324/Keyboard/Hex_to_SSeg_Test.v
// Project Name:  Keyboard
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Hex_to_SSeg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Hex_to_SSeg_Test;

	// Inputs
	reg [3:0] hex;
	reg dp;

	// Outputs
	wire [7:0] sseg;
	
	reg [8:0] i;

	// Instantiate the Unit Under Test (UUT)
	Hex_to_SSeg uut (
		.hex(hex), 
		.dp(dp), 
		.sseg(sseg)
	);

	initial begin
		// Initialize Inputs
		hex = 0;
		dp = 0;
		i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever begin
			#20 i= i+1;
			#20 hex <= i;
		end

	end
      
endmodule

