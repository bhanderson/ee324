`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:35:31 09/24/2014
// Design Name:   Clock_Divider
// Module Name:   C:/Users/Bryce/Documents/GitHub/ee324/Keyboard/Clock_Divider_Test.v
// Project Name:  Keyboard
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Clock_Divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Clock_Divider_Test;

	// Inputs
	reg clk;

	// Outputs
	wire clk_div;

	// Instantiate the Unit Under Test (UUT)
	Clock_Divider uut (
		.clk(clk), 
		.clk_div(clk_div)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever begin
			#1 clk = !clk;
		end
	end
      
endmodule

