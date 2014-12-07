`timescale 1ns / 1ps

module Project6(
    output anout,
    output anen,
    output angain,
	 output sclk,
	 input sdata,
	 output ncs,
    input clk,
    input rst,
	 input btn,
	 output [7:0] led
    );
	 
wire done, sample_clk;
wire [11:0] data;
reg [2:0] present_state, next_state;
reg start;

PmodMICRefComp mic(.CLK(clk), .RST(rst), .SDATA(sdata), .SCLK(sclk), .nCS(ncs), .DATA(data), .START(start), .DONE(done));

Sample_clk_div(.clk(clk), .rst(rst), .sample_clk(sample_clk));

PWM(.clk(clk), .rst(rst), .en(1'b1), .val(data[11:4]), .o(anout));

always @(posedge(clk)) begin
	present_state <= next_state;
end
always @(posedge(sample_clk)) begin
	case (present_state)
		0:
		begin
			if (!sample_clk)
				next_state <= 1;
			else
				next_state <= 0;
		end
		1:
		begin
			next_state <= 2;
			start <= 1'b1;
		end
		2:
		begin
			start <= 1'b0;
			if (done)
				next_state <= 0;
		end
		default:
		begin
			start <= 1'b0;
			next_state <= 0;
		end
	endcase
end

assign anen = 1'b1;
assign angain = 1'b1;
assign led[7:0] = data[11:4];


endmodule
