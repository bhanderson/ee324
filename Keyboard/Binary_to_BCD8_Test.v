`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:21:59 09/24/2014
// Design Name:   Binary_to_BCD8
// Module Name:   C:/Users/Bryce/Documents/GitHub/ee324/Keyboard/Binary_to_BCD8_Test.v
// Project Name:  Keyboard
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Binary_to_BCD8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Binary_to_BCD8_Test;

	// Inputs
	reg [7:0] A;

	// Outputs
	wire [3:0] ONES;
	wire [3:0] TENS;
	wire [1:0] HUNDREDS;
	
	reg [8:0] i;

	// Instantiate the Unit Under Test (UUT)
	Binary_to_BCD8 uut (
		.A(A), 
		.ONES(ONES), 
		.TENS(TENS), 
		.HUNDREDS(HUNDREDS)
	);

	initial begin
		// Initialize Inputs
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (i=0;i<260;i=i+1) begin
			#20 A <= i;
		end
	end
      
endmodule

