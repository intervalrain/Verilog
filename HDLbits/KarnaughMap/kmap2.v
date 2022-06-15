module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  );

    // a'd' + b'c' + acd + a'bc
    wire w1, w2, w3, w4;

    assign w1 = (~a)&(~d);
    assign w2 = (~b)&(~c);
    assign w3 = a&c&d;
    assign w4 = (~a)&b&c;

    assign out = w1|w2|w3|w4;
endmodule
