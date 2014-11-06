`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2014 11:44:14 AM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    );

reg clk;
reg [10:0] addra;
wire [7:0] data;

    xilinx_single_port_ram_no_change #(
      .RAM_WIDTH(8),                       // Specify RAM data width
      .RAM_DEPTH(1024),                     // Specify RAM depth (number of entries)
      .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
      .INIT_FILE("D:\\sine2.hex")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
    ) inst1 (
      .addra(addra),    // Address bus, width determined from RAM_DEPTH
      .dina(8'd0),      // RAM input data, width determined from RAM_WIDTH
      .clka(clk),      // Clock
      .wea(1'b0),        // Write enable
      .ena(1'b1),        // RAM Enable, for additional power savings, disable port when not in use
      .rsta(1'b0),      // Output reset (does not affect memory contents)
      .regcea(1'b1),  // Output register enable
      .douta(data)     // RAM output data, width determined from RAM_WIDTH
    );
    
always
begin
    #5 clk <= ~clk;
end

initial
begin
    clk = 1'b0;
    addra = 'd0;
end

always @ (posedge clk)
begin
    #10 addra <= addra + 1'b1;
end

endmodule
