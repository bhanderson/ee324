`timescale 1ns / 1ps

module MemCtrl(
				// memory interface
				output [22:0] A,	// address of the ram
				output ADV,			// address valid when high
				output CE,			// chip enable low
				output OE,			// output enable low
				output WE,			// write enable low
				output LB,			// lower byte enable
				output UB,			// upper byte enable
				inout [15:0] DATA,	// data values
				output mCLK,		// output clock to memory
				// system interface
				input CLK,
				input RST,
				input REC,
				input PLAY,
				inout [15:0] SDATA
				);

reg [3:0] pS, nS; // states
assign ADV = 1'b0, mCLK = 1'b0;

always @(posedge(clk) or RST) begin
	if(RST) begin
		A <= 'b0;
		LB <= 'b0;
		UB <= 'b0;
		CE <= 'b1;
	end else pS <= nS;
end

endmodule
