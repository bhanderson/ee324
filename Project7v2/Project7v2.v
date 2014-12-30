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
	input sdata,
	// switches
	input [7:0] sw
    );

assign anen = 'b1, angain = 'b1;
assign rst = btn[0], play = btn[1], rec = btn[2];
//assign Led[0] = play, Led[1] = rec, Led[2] = micData, Led[3] = pwmdata;
wire [11:0] micData;
wire micdone;
MicCtrl MicCtrl (
    .clk(clk),
    .rst(rst),
    .sdata(sdata),
    .sclk(sclk),
    .ncs(ncs),
    .odata(micData),
	.done(micdone),
	.sample_clk(sample_clk)
    );
wire [15:0] pwmdata;
wire pwmdone;
PWM p(.clk(clk), .rst(rst), .en(play), .val(pwmdata), .o(anout), .done(pwmdone));

//assign Led = (rec) ? micData : pwmdata;


reg [22:0] address;
wire memdone, membusy;
reg mclk;
integer count;
always @(posedge(clk)) begin
	if(count < 10) begin
		count <= count + 1;
		mclk <= 0;
	end
	else begin
		count <= 0;
		mclk <= 1;
	end
end


always @(posedge(memdone)) begin
	if(rec || play)begin
		address <= address + 1;
	end
	else
		address <= 0;
end

assign Led = address;
micron memory (
    .clk(mclk), 
    .reset(rst), 
    .start(1'b1), 
    .op(~play),
    .addr(address), 
    .datain(micData), 
    .dataout(pwmdata), 
    .done(memdone), 
    .busy(membusy), 
    .MemOE(MemOE), 
    .MemWE(MemWR), 
    .MemAdv(MemAdv), 
    .MemClk(MemClk), 
    .MemCE(RamCS), 
    .MemCRE(RamCRE), 
    .MemUB(RamUB), 
    .MemLB(RamLB), 
    .MemAddr(MemAdr), 
    .MemData(MemDB), 
    .FlashCS(FlashCS)
    );



endmodule
