`timescale 1ns / 1ps
module dff (
    input D,  // Data input
    input clk,  // Clock input
    output reg Q  // Output Q
);

    always @(posedge clk) begin
        Q <= D;
    end

endmodule

