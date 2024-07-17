`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 10:38:45
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a_t,b_t,cin_t;
wire sum_t,cout_t;

full_adder dut(.a(a_t),.b(b_t),.cin(cin_t),.sum(sum_t),.cout(cout_t));

initial begin
a_t = 0; b_t = 0; cin_t = 0;
#10
a_t = 0; b_t = 0; cin_t = 1;
#10
a_t = 0; b_t = 1; cin_t = 0;
#10
a_t = 0; b_t = 1; cin_t = 1;
#10
a_t = 1; b_t = 0; cin_t = 0;
#10
a_t = 1; b_t = 0; cin_t = 1;
#10
a_t = 1; b_t = 1; cin_t = 0;
#10
a_t = 1; b_t = 1; cin_t = 1;
#10
$finish();
end
endmodule
