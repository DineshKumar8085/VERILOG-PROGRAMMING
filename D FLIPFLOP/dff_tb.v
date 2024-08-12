`timescale 1ns / 1ps

module dff_tb;

    parameter CLK_PERIOD = 10; 

    // Signals
    reg D;
    reg clk;
    wire Q;

    d_flipflop DUT (
        .D(D),
        .clk(clk),
        .Q(Q)
    );

    always #((CLK_PERIOD / 2)) clk = ~clk;

    initial begin
        D = 0;
        clk = 0;
        #10 D = 1;
        #10 D = 0;
        #10 D = 1;
        #10 D = 0;
        #10 $stop;
    end

endmodule
