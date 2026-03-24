module mux8(
    input [7:0] mem [3:0]
    input [2:0] sel,
    input en,
    output [7:0] Y
    input 
);

assign Y =
    (en == 0) ? 8'b00000000 :
    (sel == 2'b00) ? mem[0]:
    (sel == 2'b01) ? mem[1]:
    (sel == 2'b10) ? mem[2]:
                     mem[3]:
    
                    
                     

endmodule
