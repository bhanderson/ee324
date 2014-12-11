`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:20:06 12/09/2014 
// Design Name: 
// Module Name:    Project7 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Project7(
    input CLK,
    input RST,
    input REC,
    input PLAY,
	output [7:0] led,
    output ANOUT,
    output ANEN,
    output ANGAIN,
    output SCLK,
    input SDATA,
    output NCS,
    output [7:0] SEG,
    output [3:0] AN,
    output [22:0] MEMADR,
    output MEMCLK,
    output MEMADV,
    output MEMCRE,
    output MEMCE,
    output MEMOE,
    output MEMWE,
    output MEMLB,
    output MEMUB,
    inout [15:0] MEMDATA
    );
wire done, sample_clk, PLAYBTN, mem_ready;
reg mem_start, mem_write;
wire [11:0] odata, idata;
reg start;
reg [2:0] p_state, n_state;
	
PmodMICRefComp mic(.CLK(CLK), .RST(RST), .SDATA(SDATA), .SCLK(SCLK), .NCS(NCS),
					.DATA(idata), .START(start), .DONE(done));
					
BtnDebounce play(.clk(CLK), .btn(PLAY), .btn_out(PLAYBTN));

BtnDebounce rec(.clk(CLK), .btn(REC), .btn_out(RECBTN));

Sample_clk_div div(.clk(CLK), .rst(RST), .sample_clk(sample_clk));

PWM p(.clk(CLK), .rst(RST), .en(1'b1), .val(odata), .o(ANOUT));

MemCtrl mem(.A(MEMADR), .CRE(MEMCRE), .CE(MEMCE), .OE(MEMOE), .WE(MEMWE),
				.LB(MEMLB), .UB(MEMUB), .DATA(MEMDATA), .CLK(clk), .RST(RST),
				.IDATA(idata), .ODATA(odata), .WRI(mem_write),
				.ACK(mem_start), .DONE(mem_ready));

always @(posedge(clk)) begin
	p_state <= n_state;
end

always @(sample_clk, PLAYBTN, RECBTN, done, mem_ready, p_state) begin
	mem_write <= 1'b0;
	mem_start <= 1'b0;
	start <= 1'b0;
	
	case (p_state)
		0:
		begin
			if (sample_clk == 1'b0) n_state <= 1;
			else n_state <= 0;
		end
		1:
		begin
			if (sample_clk && RECBTN && done && ~PLAYBTN) n_state <= 2;
			else if (sample_clk && PLAYBTN) n_state <= 6;
			else n_state <= 1;
		end
		2:
		begin
			n_state <= 3;
			start <= 1'b1;
		end
		3:
		begin
			start <= 1'b0;
			if (done && mem_ready) n_state <= 4;
			else n_state <= 3;
		end
		4:
		begin
			mem_start <= 1'b1;
			mem_write <= 1'b1;
			n_state <= 5;
		end
		5:
		begin
			if (mem_ready) n_state <= 0;
			else n_state <= 5;
		end
		6:
		begin
			if (mem_ready) n_state <= 7;
			else n_state <= 6;
		end
		7:
		begin
			mem_write <= 1'b0;
			mem_start <= 1'b1;
			n_state <= 8;
		end
		8:
		begin
			mem_write <= 1'b1;
			if (mem_ready) n_state <= 0;
			else n_state <= p_state;
		end
		default:
		begin
			mem_write <= 1'b0;
			mem_start <= 1'b0;
			start <= 1'b0;
			n_state <= 0;
		end
	endcase
end




assign MEMCLK = 1'b0, MEMADV = 1'b0, ANGAIN = 1'b1, ANEN = 1'b1;
assign led[7] = sample_clk;
assign led[6] = SCLK;
assign led[5] = MEMDATA[0];
assign led[4] = mem_ready;
assign led[3] = RECBTN;
assign led[2] = PLAYBTN;
assign led[1] = RST;
assign led[0] = 7'b0;
endmodule
