module register4 (
    input c,
    input reset,
    input [3:0] d,
    output reg [3:0] q
);
  always @(posedge c or posedge reset) begin
        if (reset)
            q <= 4'b0000;
        else
            q <= d;
    end
endmodule
