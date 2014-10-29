`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:11:39 09/25/2014 
// Design Name: 
// Module Name:    KeyboardDecoder 
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
////////////////////////////////////////////////////////////////////////////////////
//module KeyboardReader(clk, data, key);
//input clk, data;
//output [7:0] key;
//integer count;
//reg [10:0] latch;
//always @(negedge(clk)) begin
//	latch[count] = data;
//	count = count + 1;
//	if (count == 11) count = 1;
//end
//assign key = latch[8:1];
//endmodule
////module KeyboardReader(clk, data, scan_code, parity_error, rdy);
////// Port declarations
// input clk;              // PS_2 clock input
// input data;             // PS_2 data input
// output[7:0] scan_code;  // Scan_code output
// output parity_error;    // Parity output
// output rdy;             // Data ready output
// 
//// Internal Variables 
// reg[9:0] register;
// reg[3:0] counter;
// reg parity_error, rdy;
// 
// assign scan_code = register[9:2];
// assign parity = register[1];
// 
//// PS/2 logic
// always @ (negedge clk)
//  begin
//   register <= {register[8:0], data}; // receive data
//   if (counter == 4'b1011)
//     counter <= 4'b0000;
//   else
//     counter <= counter + 4'b1;
//  end
// 
//// PS/2 parity logic
// always @ (posedge clk)
//  begin
//   if (counter == 4'b1011)
//     if (!parity == ^scan_code) // parity check (odd parity)
//      rdy <= 1'b1;
//     else
//      parity_error <= 1'b1;
//   else  // not all 10 bits receiverd yet
//    begin
//     rdy <= 1'b0;
//     parity_error <= 1'b0;
//    end
//  end
// 
//endmodule
//

module KeyboardDecoder(clk, ps2d, ps2c, reset, key, ready, debug);
	// ports
	input clk;
	input ps2d;
	input ps2c;
	input reset;
	output [7:0] key;
	output ready;
	output reg [7:0] debug;
	
	// internal vars
	reg [10:0] temp;
	reg [3:0] count;
	reg ready = 1'b0;
	
	reg ps2c_ff1,ps2c_ff2;
	reg ps2c_falling;
	
	always@(posedge clk) begin
		ps2c_ff1<= ps2c;
		ps2c_ff2<=ps2c_ff1;
	end
	
	assign ps2_falling = (~ps2c_ff1) & ps2c_ff2;
	
	assign key = temp[8:1];
//	assign parity = temp[1];
	
	always @(posedge clk, posedge reset) begin
		if(reset==1'b1) begin
			count<=4'd0;
			temp <=11'd0;
			debug <=8'd0;
		end
		else begin
			if(ps2_falling==1'b1) begin
				temp[10:0] <= {ps2d , temp[10:1]};//{temp[8:0], ps2d};
				debug <=debug+1;
				if (count == 10)
					count <= 4'd0;
				else
					count <= count + 1'b1;
			end
		end
	end
	
//	assign parity = ( key[0] ^ key[1] ^ ...
	
//	always @(posedge ps2c) begin
//		if (count == 11)
//			if(!parity == ^key)
//				ready <= 1'b1;
//			else
//				ready <= 1'b0;
//	end

endmodule
