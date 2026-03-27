module memory(
input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
    );
    
    
bytememory mem0(
.store(s0),
.data(data),
.memory(m0)

);
bytememory mem1(
.store(s1),
.data(data),
.memory(m1)

);
bytememory mem2(
.store(s2),
.data(data),
.memory(m2)

);
bytememory mem3(
.store(s3),
.data(data),
.memory(m3)

);

wire [7:0] m0,m1,m2,m3;
    
    assign memory = 
    (addr == 2'b00) ? m0:
    (addr == 2'b01) ? m1:
    (addr == 2'b10) ? m2:
                     m3;
wire s0,s1,s2,s3;
assign s0 = (addr == 2'b00) ? store : 1'b0;
assign s1 = ( addr == 2'b01) ? store : 1'b0;
assign s2 = ( addr == 2'b10) ? store : 1'b0;
assign s3 = ( addr == 2'b11) ? store : 1'b0;
endmodule

