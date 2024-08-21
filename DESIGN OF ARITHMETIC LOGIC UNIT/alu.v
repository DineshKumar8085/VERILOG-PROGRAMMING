`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 21:45:44
// Design Name: 
// Module Name: alu
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


module alu(a,b,y,sel);
input [2:0]sel;
input [3:0]a,b;
output reg [7:0]y;
always @(a,b,sel)
begin
case(sel)
3'b000: y=a+b;
3'b001: y=a-b;
3'b010: y=a*b;
3'b011: y=a&b;
3'b100: y=a|b;
3'b101: y=~(a^b);
3'b110: y=~a;
3'b111: y=b>>3;
default: y=8'b00000000;
endcase
end
endmodule
