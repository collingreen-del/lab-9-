  module demux8(
    input en, 
    input [1:0] sel,
    input [7:0] in,
    output [7:0] data
    
    );
     
    assign data[0] = (en && sel == 2'b00) ? in : 8'b00000000,
    assign data[1] = (en && sel == 2'b00) ? in : 8'b00000000,
    assign data[2] = (en && sel == 2'b00) ? in : 8'b00000000,
    assign data[3] = (en && sel == 2'b00) ? in : 8'b00000000,
    assign data[4] = (en && sel == 2'b00) ? in : 8'b00000000,
    assign data[5] = (en && sel == 2'b00) ? in : 8'b00000000,
    assign data[6] = (en && sel == 2'b00) ? in : 8'b00000000,
    assign data[7] = (en && sel == 2'b00) ? in : 8'b00000000,
    endmodule
