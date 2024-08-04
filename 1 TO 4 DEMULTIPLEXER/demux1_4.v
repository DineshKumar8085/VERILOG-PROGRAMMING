`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 13:43:12
// Design Name: 
// Module Name: demux1_4
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


module demux1_4(d,s0,s1,y0,y1,y2,y3);
input d;
input s0,s1;
output y0,y1,y2,y3;
wire a,b;
not g1(a,s0);
not g2(b,s1);
and g3(y0,d,a,b);
and g4(y1,d,a,s1);
and g5(y2,d,s0,b);
and g6(y3,d,s0,s1);
endmodule
