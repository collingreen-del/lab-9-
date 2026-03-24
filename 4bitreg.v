module counter4 (
    input c,
    input reset,
    output reg [3:0] count
);
    always @(posedge c or posedge reset) begin
        if (reset)
            count <= 0;
        else
            count <= count + 1;
    end
endmodule
