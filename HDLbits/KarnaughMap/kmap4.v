module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  );

    always @(*) begin
        if (a == b && c != d)
            out = 1;
        else if (a != b && c == d)
            out = 1;
        else
            out = 0;
    end

endmodule

