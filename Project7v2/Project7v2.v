`timescale 1ns / 1ps

module Project7v2(
	input clk, // system clk
	// memory stuff
	output MemOE,
	output MemWR,
	output MemAdv,
	input MemWait,
	output MemClk,
	output RamCS,
	output RamCRE,
	output RamUB,
	output RamLB,
	output [22:0] MemAdr,
	inout [15:0] MemDB,
	// LED
	output [7:0] Led,
	input [2:0] btn,
	// speaker
	output anout,
	output anen,
	output angain,
	// mic
	output sclk,
	output ncs,
	input sdata
    );

assign anen = 'b1, angain = 'b1;
assign rst = btn[0], play = btn[1], rec = btn[2];
assign Led[0] = play, Led[1] = rec, Led[2] = micData, Led[3] = memData;
wire [11:0] micData;

MicCtrl MicCtrl (
    .clk(clk),
    .rst(rst),
    .sdata(sdata),
    .sclk(sclk),
    .ncs(ncs),
    .data(micData)
    );
	
wire [11:0] pwmIn;
wire [15:0] memData;

PWM p(.clk(clk), .rst(rst), .en(play), .val(memData[11:0]), .o(anout));

assign memData = (rec) ? micData : 'bZ;

assign pwmIn = (play) ? memData : 0;
MemoryCtrl MemCtrl (
    .A(MemAdr), 
    .CLK(MemClk), 
    .ADV(MemAdv), 
    .CRE(RamCRE), 
    .CE(RamCS), 
    .OE(MemOE), 
    .WE(MemWR), 
    .LB(RamLB), 
    .UB(RamUB), 
    .DQ(MemDB), 
    .WAIT(MemWait), 
    .sCLK(clk), 
    .REC(rec), 
    .PLAY(play),
	.RST(rst),
    .DATA(memData)
    );

endmodule
