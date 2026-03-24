`timescale 1ns/1ps

module testbench;

    reg c;
    reg reset;
    reg x;

    wire [3:0] count;
    wire fsm_out;

    top uut (
        .c(c),
        .reset(reset),
        .x(x),
        .count(count),
        .fsm_out(fsm_out)
    );

    // Clock generation
    always #5 c = ~c;

    initial begin
        c = 0;
        reset = 1;
        x = 0;

        #10 reset = 0;

        #10 x = 1;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #50 $finish;
    end

endmodule
