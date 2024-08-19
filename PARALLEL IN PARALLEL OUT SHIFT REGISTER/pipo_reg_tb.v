`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 18:57:29
// Design Name: 
// Module Name: pipo_reg_tb
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


module pipo_reg_tb();
reg clk,rst;
reg [3:0] pi;
wire [3:0] po;

pipo_reg dut(.clk(clk),.rst(rst),.pi(pi),.po(po));

initial begin
clk = 0;
rst = 0;
pi = 0;
#5 rst=1'b1;
#5 rst=1'b0;
#10 pi=4'b1000;
#10 pi=4'b1001;
#10 pi=4'b1011;
#10 pi=4'b1110;
#10 pi=4'b1111;
#10 pi=4'b0000;
#10 $finish;
end
always #5 clk = ~clk;
initial #150 $stop;
endmodule
