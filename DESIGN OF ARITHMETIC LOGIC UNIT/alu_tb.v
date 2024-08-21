`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 22:02:39
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();
reg [2:0]sel;
reg [3:0]a,b;
wire [7:0]y;

alu dut(.sel(sel),.a(a),.b(b),.y(y));

integer i;

initial begin
a=4'b1101;b=4'b1011;sel=0;
for(i = 1; i < 8; i = i+ 1)begin
    #10
    sel = i;
end

#10
$finish();

end
endmodule
