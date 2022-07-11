module u7442(
    input a,
    input b,
    input c,
    input d,
    output [9:0] out);

    assign out[0] = ~((~a)&(~b)&(~c)&(~d)); // 0000
    assign out[1] = ~((~a)&(~b)&(~c)&( d)); // 0001
    assign out[2] = ~((~a)&(~b)&( c)&(~d)); // 0010
    assign out[3] = ~((~a)&(~b)&( c)&( d)); // 0011
    assign out[4] = ~((~a)&( b)&(~c)&(~d)); // 0100
    assign out[5] = ~((~a)&( b)&(~c)&( d)); // 0101
    assign out[6] = ~((~a)&( b)&( c)&(~d)); // 0110
    assign out[7] = ~((~a)&( b)&( c)&( d)); // 0111
    assign out[8] = ~(( a)&(~b)&(~c)&(~d)); // 1000
    assign out[9] = ~(( a)&(~b)&(~c)&( d)); // 1001

endmodule
