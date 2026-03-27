module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);
    dlatch part1(
        .d(sw[0]),
        .q(led[0]),
        .notq(led[1]),
        .e(btnC)
    );
    memory part2(
        .data(sw[15:8]),
        .addr(sw[7:6]),
        .store(btnC),
        .memory(led[15:8])
    );

endmodule
