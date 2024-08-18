`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 18:42:41
// Design Name: 
// Module Name: piso_reg_tb
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


module piso_reg_tb();
reg ld,clk,rst;
reg [3:0] in;
wire q;

piso_reg dut(.in(in),.ld(ld),.clk(clk),.rst(rst),.q(q));

initial 
    begin
      clk = 1'b1;
      forever #5 clk = ~clk;
    end
     initial 
    begin
      rst=1;
      #10 rst=0;ld=1;in=4'b0111;
      #10 ld=0;in=0;
      #30 $finish;
    end
endmodule
