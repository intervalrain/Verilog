`include "u7442.v"

module f124(
    input a,
    input b,
    input c,
    input d,
    output f1;

    wire [9:0] o;

    u7442 u1(a,b,c,d,o);

    assign f1 = ~(o[1] & o[2] & o[4]);

endmodule
