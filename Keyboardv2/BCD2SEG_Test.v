`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:57:52 09/25/2014
// Design Name:   BCD2SEG
// Module Name:   C:/Users/Bryce/Documents/GitHub/ee324/Keyboardv2/BCD2SEG_Test.v
// Project Name:  Keyboardv2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCD2SEG
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCD2SEG_Test;

	// Inputs
	reg [3:0] bcd;

	// Outputs
	wire [7:0] display;

	// Instantiate the Unit Under Test (UUT)
	BCD2SEG uut (
		.bcd(bcd), 
		.display(display)
	);

	initial begin
		// Initialize Inputs
		bcd = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever begin
			#5 bcd = 1;
		end
	end
      
endmodule

