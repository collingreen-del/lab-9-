module fsm (
    input c,
    input reset,
    input x,
    output reg y
);

  
    parameter IDLE = 2'b00,
              WAIT = 2'b01,
              DONE = 2'b10;

    reg [1:0] state, next_state;

  
    always @(posedge c or posedge reset) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end

    
    always @(*) begin
        case (state)
            IDLE: next_state = x ? WAIT : IDLE;
            WAIT: next_state = x ? DONE : IDLE;
            DONE: next_state = IDLE;
            default: next_state = IDLE;
        endcase
    end

  
    always @(*) begin
        case (state)
            IDLE: y = 0;
            WAIT: y = 0;
            DONE: y = 1;
            default: y = 0;
        endcase
    end

endmodule
