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
//
   input sCLK,
    input REC,
    input PLAY,
	input memselect,
	input RST,
	input ien,
	input [15:0] idata,
	input oen,
	output reg [15:0] odata
    );
integer count;
reg slowCLK;
always @(posedge(sCLK)) begin
	if(count < 20)
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

assign LB = 1'b0, UB = 1'b0, CRE = 1'b0, ADV = 1'b0, CLK = 1'b0, CE = 1'b0;
assign DQ = (WE) ? 'bZ : 8'b10101010;
//assign odata = (OE) ? 'bZ : DQ;

always @(pS) begin
	nS <= 0;
//	OE <= 1'b1;
//	WE <= 1'b1;
	case (pS)
		0:
		begin
			if (REC && ien) begin
				nS <= 1;
			end
			else if (PLAY && ien) begin
				nS <= 4;
			end
			else begin
				nS <= 0;
				A <= 0;
			end
		end
		1:
		begin
			WE <= 1'b0;
			nS <= 2;
		end
		2:
		begin
			WE <= 1'b1;
			nS <= 3;
		end
		3:
		begin
			if (A > 8000000) A <= 0;
			else A <= A + 1;
			nS <= 0;
		end
		4:
		begin
			OE <= 1'b0;
			odata <= DQ;
			nS <= 5;
		end
		5:
		begin
			OE <= 1'b1;
			nS <= 3;
		end
		default:
			nS <= 0;	
	endcase
end

endmodule
