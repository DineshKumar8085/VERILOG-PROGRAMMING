`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 09:56:05
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
reg a_t,b_t;
wire sum_t,carry_t;

half_adder dut(.a(a_t),.b(b_t),.sum(sum_t),.carry(carry_t));

initial begin
a_t=0;b_t=0;
#10 a_t=1;b_t=0;
#10 a_t=0;b_t=1;
#10 a_t=1;b_t=1;
#10 $stop;
end
endmodule
