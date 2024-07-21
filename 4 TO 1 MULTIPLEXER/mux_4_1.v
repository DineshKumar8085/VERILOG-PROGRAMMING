`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 10:52:14
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(a, b, c, d, s0, s1, out);
input a,b,c,d,s0,s1;
output reg out;
always @ (a or b or c or d or s0, s1)
begin

case ({s0,s1})
2'b00 : out = a;
2'b01 : out = b;
2'b10 : out = c;
2'b11 : out = d;
endcase

end
endmodule
