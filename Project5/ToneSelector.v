`timescale 1ns / 1ps
module ToneSelector(
    input ps2clk,
    input [7:0] keyin,
    output reg [9:0] tonediv
    );
always @(posedge(ps2clk)) begin
	case (keyin)
		8'h0D : tonediv <= 373;
		8'h16 : tonediv <= 352;
		8'h15 : tonediv <= 333;
		8'h1E : tonediv <= 314;
		8'h1D : tonediv <= 296;
		8'h24 : tonediv <= 280;
		8'h25 : tonediv <= 264;
		8'h2d : tonediv <= 249;
		8'h2e : tonediv <= 235;
		8'h2c : tonediv <= 222;
		8'h36 : tonediv <= 209;
		8'h35 : tonediv <= 198;
		8'h3c : tonediv <= 187;
		8'h3e : tonediv <= 176;
		8'h43 : tonediv <= 166;
		8'h46 : tonediv <= 157;
		8'h44 : tonediv <= 148;
		8'h4d : tonediv <= 140;
		8'h4e : tonediv <= 132;
		8'h54 : tonediv <= 125;
		8'h55 : tonediv <= 118;
		8'h5b : tonediv <= 111;
		default : tonediv <= 10'b1111111111;
	endcase
end

endmodule
