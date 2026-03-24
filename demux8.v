  module demux8(
    input en, 
    input [1:0] sel,
    input [7:0] in,
    output [7:0] data [3:0]
    
    );
     
    assign data[0] = (en && sel == 2'b00) ? in : 8'b00000000,
    assign data[1] = (en && sel == 2'b01) ? in : 8'b00000000,
    assign data[2] = (en && sel == 2'b10) ? in : 8'b00000000,
    assign data[3] = (en && sel == 2'b11) ? in : 8'b00000000,
      
    endmodule
