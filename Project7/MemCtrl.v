`timescale 1ns / 1ps

module MemCtrl(
    output reg [22:0] A,	// Address input
    output CRE,			// Control reg enable
    output CE,			// Chip enable
    output reg OE,			// Output enable
    output reg WE,			// Write enable
    output LB,			// Lower byte enable
    output UB,			// Upper byte enable
    inout [15:0] DATA,	// Data inout
    input CLK,			
    input RST,
    input [15:0] IDATA,
    output [15:0] ODATA,
    input WRI,
    input ACK,
    output reg DONE
    );
reg [3:0] p_state = 0, n_state = 0;
reg [15:0] p_dlat, n_dlat;
reg [22:0] p_write, n_write, p_read, n_read, p_add, n_add;
integer count;

always @(posedge(RST) or posedge(CLK)) begin
	if (RST == 1'b1) begin
		p_state <= 0;
		p_dlat <= 'b0;
		p_write <= 'b0;
		p_read <= 'b0;
		count <= 0;
	end else begin
		if (p_state == 2 || p_state == 6) begin
			if (count > 6) begin
				p_state <= n_state;
				p_add <= n_add;
				p_dlat <= n_dlat;
				p_write <= n_write;
				p_read <= n_read;
				count <= 0;
			end
		end else begin
			p_state <= n_state;
			p_add <= n_add;
			p_dlat <= n_dlat;
			p_write <= n_write;
			p_read <= n_read;
		end
		count <= count + 1;
	end
end


always @(p_state or DATA or IDATA or WRI or ACK or p_add or p_dlat or p_read or
			p_write) begin
	DONE <= 1'b0;
	n_write <= p_write;
	n_read <= p_read;
	//DATA = 'bZ;
	OE <= 1'b1;
	WE <= 1'b1;
	n_dlat <= p_dlat;
	A <= p_read;
	
	case (p_state)
		0:
		begin
			DONE <= 1'b1;
			if (WRI == 1'b0 && ACK== 1'b1)
				n_state <= 9;
			else if (WRI == 1'b1 && ACK == 1'b1)
				n_state <= 8;
			else
				n_state <= 0;
		end
		
		1:
		begin
			OE <= 1'b0;
			n_state <= 2;
		end
		
		2:
		begin
			OE <= 1'b0;
			n_state <= 3;
			n_dlat <= DATA;
		end
		
		3:
		begin
			n_dlat <= DATA;
			n_state <= 4;
		end
		
		4:
		begin
			n_state <= 0;
			if (p_read < p_write)
				n_read <= p_read + 1;
			else
				n_read <= 'b0;
		end
		
		5:
		begin
			WE <= 1'b0;
			A <= p_write;
			n_state <= 6;
		end
		
		6:
		begin
			WE <= 1'b0;
			A <= p_write;
			n_state <= 7;
		end
		
		7:
		begin
			A <= p_write;
			n_state <= 0;
		end
		
		8:
		begin
			A <= p_write;
			n_state <= 5;
			if (p_write < 8000000)
				n_write <= p_write + 1;
			else begin
				n_read <= 'b0;
				n_write <= 'b0;
			end
		end
		
		9:
		begin
			n_state <= 1;
		end
		
		default:
			n_state <= 0;
	
	endcase
end


assign LB = 1'b0, UB = 1'b0, CRE = 1'b0, CE = 1'b0, DATA = (WE && ~OE) ? 'bZ : IDATA;
endmodule
