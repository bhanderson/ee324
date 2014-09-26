`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:04:27 09/25/2014
// Design Name:   SegToSSD
// Module Name:   C:/Users/Bryce/Documents/GitHub/ee324/Keyboardv3/SegToSSDTest.v
// Project Name:  Keyboardv3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SegToSSD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SegToSSDTest;

	// Inputs
	reg clk;
	reg [23:0] segments;

	// Outputs
	wire [3:0] an;
	wire [7:0] seg;

	// Instantiate the Unit Under Test (UUT)
	SegToSSD uut (
		.clk(clk), 
		.segments(segments), 
		.an(an), 
		.seg(seg)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		segments = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever begin
			#10 clk = ~clk;
			segments = 24'b110000001111100110100100;
		end
		
	end
      
endmodule

