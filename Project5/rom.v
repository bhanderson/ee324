`timescale 1ns / 1ps
module rom(
//	input wire clk,
//	input wire ren,
	input wire[9:0] addr,
	output wire[9:0] data
	);
	 
	reg [9:0] rom[1023:0];
//	reg [7:0] addr_ff; 
	initial $readmemh("sine2.hex",rom,0,1023);
		
//	always @(posedge clk) begin
//		if(ren==1'b1) begin
//			addr_ff <= addr;
//		end
//	end
		
	assign data = rom[addr]; 
	 
	 
endmodule
