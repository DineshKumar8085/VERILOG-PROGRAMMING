`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 10:56:55
// Design Name: 
// Module Name: mux_4_1_tb
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


module mux_4_1_tb();
reg a_t,b_t,c_t,d_t,s0_t,s1_t;
wire out_t;

mux_4_1 dut(.a(a_t),.b(b_t),.c(c_t),.d(d_t),.s0(s0_t),.s1(s1_t),.out(out_t));

initial begin
a_t = 1'b1;
b_t = 1'b0;
c_t = 1'b1;
d_t = 1'b0;

#10 s0_t = 0; s1_t = 0;
#10 s0_t = 0; s1_t = 1;
#10 s0_t = 1; s1_t = 0;
#10 s0_t = 1; s1_t = 1;
#10 $finish;
end
endmodule
