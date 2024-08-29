`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 19:38:16
// Design Name: 
// Module Name: ring_counter_tb
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


module ring_counter_tb();
reg clk,rst;
wire [3:0] q;

ring_counter dut(clk,rst,q);

initial
		begin
				clk = 1'b0;
				rst = 1'b0;
				
		end
		always #5 clk = ~clk;
		initial
	begin
		rst = 1'b1;
		#10;
		rst = 1'b0;
		#150 $finish;
	end
endmodule
