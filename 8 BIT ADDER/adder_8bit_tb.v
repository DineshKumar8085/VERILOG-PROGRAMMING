`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 11:32:08
// Design Name: 
// Module Name: adder_8bit_tb
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


module adder_8bit_tb();
reg [7:0] a_t;
reg [7:0] b_t;
reg cin_t;
wire [7:0] sum_t;
wire cout_t;

adder_8bit dut(.a(a_t),.b(b_t),.cin(cin_t),.sum(sum_t),.cout(cout_t));

initial begin
a_t=8'b0;b_t=8'b0;cin_t=8'b0;
#10 a_t=8'b00000010;b_t=8'b00000011;cin_t=1'b0;
#10 a_t=8'b00000001;b_t=8'b00000001;cin_t=1'b0;
#10 a_t=8'b10000001;b_t=8'b10000001;cin_t=1'b0;
#10 a_t=8'b00011001;b_t=8'b00110001;cin_t=1'b0;
#10 a_t=8'b11111111;b_t=8'b00000001;cin_t=1'b0;
#10 a_t=8'b11111111;b_t=8'b11111111;cin_t=1'b0;
#10 $finish;

end 
endmodule
