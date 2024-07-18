`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2024 09:57:39
// Design Name: 
// Module Name: HS_tb
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


module HS_tb;
reg a_t,b_t;
wire diff_t,br_t;

HS dut(.a(a_t),.b(b_t),.diff(diff_t),.br(br_t));

initial begin
a_t=0;b_t=0;
#10 a_t=1;b_t=0;
#10 a_t=0;b_t=1;
#10 a_t=1;b_t=1;
#10 $stop;
end

endmodule
