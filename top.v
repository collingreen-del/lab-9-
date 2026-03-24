module top(
    input [15:0] sw,
    input btnC,
    input btnU, btnL,
    input btnD, btnR, 
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
        //mem[addr] <= data;
        en = 1;
        demux8 D1(
            .in(line),
            .sel(btnD, btnR),
            .data[0](sw[9:8]),
            .data[1](sw[11:10]),
            .data[2](sw[13:12]),
            .data[3](sw[15:14]),
            
            
           
            
    end

    
    //assign led[15:8] = mem[addr];
            en = 1;
        mux8 M1(
            .mem[0](led[9:8]),
            .mem[1](led[11:10]),
            .mem[2](led[13:12]),
            .mem[3](led[15:14]),
            .sel({btnU, btnl}),
            .out(line)

    
    assign led[7:2] = 0;

endmodule
