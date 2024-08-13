`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 17:57:10
// Design Name: 
// Module Name: sipo_reg_tb
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


module sipo_reg_tb();
reg clk,rst,si;
wire [3:0] po;

sipo_reg dut(.clk(clk),.rst(rst),.si(si),.po(po));

initial begin
clk = 0;
rst = 0;
si = 0;
#5 rst=1'b1;
#5 rst=1'b0;
#10 si=1'b0;
#10 si=1'b1;
#10 si=1'b0;
#10 si=1'b1;
#10 si=1'b0;
#10 si=1'bx;
end
always #5 clk = ~clk;
initial #150 $finish;
endmodule
