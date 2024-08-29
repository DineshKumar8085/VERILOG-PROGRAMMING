`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 19:25:08
// Design Name: 
// Module Name: ring_counter
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


module ring_counter (input clk,rst,output reg [3:0]q);
always@(posedge clk)
    begin
        if(rst)
        q<=4'd1;
        else
            begin
             case(q)
                4'd1:q=4'd2;
                4'd2:q=4'd4;
                4'd4:q=4'd8;
                4'd8:q=4'd1;
                default:q=4'd1;
                endcase
                
            end
        
    end
endmodule
