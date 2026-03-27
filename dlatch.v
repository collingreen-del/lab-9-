module dlatch (
    input e,
    input d,
    output reg q,
    output notq
);
    always @(d,e) begin
        if (e)
            q <= d;
            
    end

    assign notq=~q;
    
endmodule
