`timescale 1ns / 1ps
module Sample_clk_div_test;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire sample_clk;

	// Instantiate the Unit Under Test (UUT)
	Sample_clk_div uut (
		.clk(clk), 
		.rst(rst), 
		.sample_clk(sample_clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 1;
		// Add stimulus here
		
	end
	
	always
	#5 clk = ~clk;
	
endmodule

