`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:01:52 09/25/2014
// Design Name:   SSD
// Module Name:   C:/Users/Bryce/Documents/GitHub/ee324/Keyboardv2/SSD_Test.v
// Project Name:  Keyboardv2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SSD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SSD_Test;

	// Inputs
	reg clk;
	reg [15:0] hex;

	// Outputs
	wire [7:0] seg;
	wire [4:0] an;

	// Instantiate the Unit Under Test (UUT)
	SSD uut (
		.clk(clk), 
		.hex(hex), 
		.seg(seg), 
		.an(an)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		hex = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever begin
			#1 clk = ~clk;
			#5 hex = hex + 1;
		end
	end
      
endmodule

