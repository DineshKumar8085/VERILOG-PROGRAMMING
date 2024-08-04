`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 13:50:44
// Design Name: 
// Module Name: demux4_1_tb
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


module demux4_1_tb();
reg s0_t,s1_t,d_t;
wire y0_t,y1_t,y2_t,y3_t;

demux1_4 dut(.d(d_t),.s0(s0_t),.s1(s1_t),.y0(y0_t),.y1(y1_t),.y2(y2_t),.y3(y3_t));

initial begin
d_t = 1'b1;
#10 s0_t = 1'b0;s1_t = 1'b0;
#10 s0_t = 1'b1;s1_t = 1'b0;
#10 s0_t = 1'b0;s1_t = 1'b1;
#10 s0_t = 1'b1;s1_t = 1'b1;
#10 $finish; 
end
endmodule
