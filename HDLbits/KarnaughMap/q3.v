module top_module (
    input [4:1] x,
    output f );

    // x[2]x[4] + x[1]'x[3]
    assign f = (x[2] & x[4]) | (~x[1] & x[3]);

endmodule
