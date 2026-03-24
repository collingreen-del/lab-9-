module dff (
    input c,
    input reset,
    input d,
    output reg q
);
    always @(posedge c or posedge reset) begin
        if (reset)
            q <= 0;
        else
            q <= d;
    end
endmodule
