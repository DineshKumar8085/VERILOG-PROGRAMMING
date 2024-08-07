`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 17:51:08
// Design Name: 
// Module Name: sipo_reg
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


module sipo_reg(clk,rst,si,po);
input clk, si,rst;
output [3:0] po;
reg [3:0] tmp;
reg [3:0] po;
always @(posedge clk)
begin
if (rst)
tmp <= 4'b0000;
else
tmp <= tmp << 1;
tmp[0] <= si;
po = tmp;
end
endmodule
