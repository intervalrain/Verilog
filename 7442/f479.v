`include "u7442.v"

module f479(
    input a,
    input b,
    input c,
    input d,
    output f1);

    wire [9:0] o;

    u7442 u1(a,b,c,d,o);

    assign f1 = ~(o[4] & o[7] & o[9]);

endmodule

