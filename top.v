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

        //mem[addr] <= data;
        wire [7:0] line;
        
        demux8 D1(
            .in(line),
            .sel({btnD, btnR}),
            .data({sw[9:8],[0]}),
            .data({[sw[11:10],[1]}),
            .data({sw[13:12], [2]}),
            .data({sw[15:14], [3]}),
            .en(1'b1)
                    );
            
            
           
        
    
    //assign led[15:8] = mem[addr];
        
        mux8 M1(
            .mem({led[9:8], [0]}),
            .mem({led[11:10], [1]}),
            .mem({led[13:12], [2]}),
            .mem({led[15:14], [3]}),
            .sel({btnU, btnl}),
            .out(line),
            .en(1'b1)
        );

    
    assign led[7:2] = 0;

endmodule
