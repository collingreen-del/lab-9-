module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);

    
    wire D = sw[0];
    wire [1:0] addr = sw[7:6];
    wire [7:0] data = sw[15:8];

    
    reg Q;

    always @(btnC,d ) begin
        Q <= D;
    end

    assign led[0] = Q;
    assign led[1] = ~Q;

    
    reg [7:0] mem [3:0];

    always @(btnC, d) begin
        mem[addr] <= data;
    end

    
    assign led[15:8] = mem[addr];

    
    assign led[7:2] = 0;

endmodule
