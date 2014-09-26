`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:15:18 09/25/2014
// Design Name:   KeyboardDecoder
// Module Name:   C:/Users/Bryce/Documents/GitHub/ee324/Keyboardv3/KeyboardDecoderTest.v
// Project Name:  Keyboardv3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: KeyboardDecoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module KeyboardDecoderTest;

	// Inputs
	reg data;
	reg clk;

	// Outputs
	wire [7:0] key;
	wire ready;

	// Instantiate the Unit Under Test (UUT)
	KeyboardDecoder uut (
		.data(data), 
		.clk(clk), 
		.key(key), 
		.ready(ready)
	);

	initial begin
		// Initialize Inputs
		data = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever begin
			#1 clk = ~clk;
			#1 data = 1;
			#1 data = 0;
		end
	end
      
endmodule

