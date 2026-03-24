module top (
    input c,
    input reset,
    input x,
    output [3:0] count,
    output fsm_out
);

    // Counter
    counter4 c1 (
        .c(c),
        .reset(reset),
        .count(count)
    );

    // FSM
    fsm f1 (
        .c(c),
        .reset(reset),
        .x(x),
        .y(fsm_out)
    );

endmodule
