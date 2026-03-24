module mux8(
    input [7:0] data [3:0]
    input [2:0] sel,
    input en,
    output [7:0] Y
    input 
);

assign Y =
    (en == 0) ? 8'b00000000 :
    (sel == 2'b00) ? data[0]:
    (sel == 2'b01) ? data[1]:
    (sel == 2'b10) ? data[2]:
                     data[3]:
    
                    
                     

endmodule
