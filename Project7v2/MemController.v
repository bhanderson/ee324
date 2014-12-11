`timescale 1ns / 1ps

module MemCtrl(
	// memory interface
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
	// system interface
	input sCLK, // 10Mhz clk 100ns
	input RST,
	input REC,
	input PLAY,
	inout [15:0] DATA,
	output reg RDY,
	output recLED,
	output playLED
    );
	
// asynchronous settings
assign CRE = 'b0, ADV = 'b0, CLK = 'b0, LB = 'b0, UB = 'b0, CE = 'b0;
assign DQ = (WE) ? 'bZ : DATA; // if write is enabled write to the data
assign DATA = (OE) ? DQ : 'bZ;
assign recLED = recS;
assign playLED = playS;
reg [3:0] pS, nS;
reg [22:0] readAddr, writeAddr;
reg recS = 0, playS = 0;

always @(REC) begin
	if (REC) recS <= ~recS;
end
always @(PLAY) begin
	if (PLAY) playS <= ~playS;
end

always @(sCLK, RST, pS, nS)begin
	if (RST) begin
		A <= writeAddr;
		OE <= 'b1; // disable output buffer
		WE <= 'b1; // disable write buffer
		readAddr <= 'b0;
		writeAddr <= 'b0;
		pS <= 'b0;
		nS <= 'b0;
	end else if (sCLK) begin
		pS <= nS;
	end else
	begin
		RDY <= 'b0;
		OE <= 'b1;
		WE <= 'b1;
		case (pS)
		0:
		begin
			RDY <= 'b1;
			if (recS) nS <= 1;
			else if (playS) nS <= 2;
			else begin
				nS <= 0;
				writeAddr <= 0;
				readAddr <= 0;
			end
		end
		1:
		begin
			A <= writeAddr;
			nS <= 3;
		end
		3:
		begin
			WE <= 'b0; // enable write
			nS <= 5;
		end
		5:
		begin
			WE <= 'b1; // end write
			nS <= 0;
			writeAddr <= writeAddr + 1;
		end
		2:
		begin
			OE <= 'b0;
			A <= readAddr;
			nS <= 4;
		end
		4:
		begin
			OE <= 'b1;
			nS <= 0;
			if (readAddr < writeAddr)
				readAddr <= readAddr + 1;
			else
				readAddr <= 0;
		end
		default:
			nS <= 0;
		endcase
	end
end

endmodule
