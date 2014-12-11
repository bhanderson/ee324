`timescale 1ns / 1ps

module MemoryCtrl(
    output reg [22:0] A,
    output CLK,
    output ADV,
    output CRE,
    output CE,
    output reg OE,
    output reg WE,
    output LB,
    output UB,
    inout [15:0] DQ,
    input WAIT,
    input sCLK,
    input REC,
    input PLAY,
	input RST,
	inout [15:0] DATA
    );
integer count;
reg slowCLK;
always @(posedge(sCLK)) begin
	if(count < 10)
		count = count + 1;
	else begin
		count = 0;
		slowCLK = ~slowCLK;
	end
end

reg [3:0] pS, nS;

always @(posedge(slowCLK)) begin
	pS <= nS;
end

assign CE = 1'b0, LB = 1'b0, UB = 1'b0, CRE = 1'b0, ADV = 1'b0, CLK = 1'b0;
assign DQ = (WE) ? 'bZ : DATA;
assign DATA = (OE) ? 'bZ : DQ;
always @(REC or PLAY or RST) begin
	A <= 0;
	nS <= 0;
	OE <= 1'b1;
	WE <= 1'b1;
	case (pS)
		0:
		begin
			if (REC) nS <= 1;
			else if (PLAY) nS <= 3;
			else nS <= 0;
		end
		1:
		begin
			WE <= 1'b0;
			nS <= 2;
		end
		2:
		begin
			WE <= 1'b1;
			if (A > 8000000) A <= 0;
			else A <= A + 1;
			nS <= 0;
		end
		3:
		begin
			OE <= 1'b0;
			nS <= 4;
		end
		4:
		begin
			OE <= 1'b1;
			if (A > 8000000) A <= 0;
			else A <= A + 1;
			nS <= 0;
		end
		default:
			nS <= 0;	
	endcase
end

endmodule
