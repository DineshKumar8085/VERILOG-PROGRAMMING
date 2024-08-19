`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 18:54:37
// Design Name: 
// Module Name: pipo_reg
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


module pipo_reg(clk,rst,pi,po);
input clk,rst;
input [3:0] pi;
output reg [3:0] po;
wire [3:0] pi;
always @(posedge clk)
begin
if (rst)
po<= 4'b0000;
else
po <= pi;
end
endmodule
