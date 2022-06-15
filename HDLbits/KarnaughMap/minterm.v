module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
);

    // f = d3 + m7 + d11 + m15 + m2
    // f = cd + a'b'c
    assign out_sop = (c & d) | (~a & ~b & c);
    // f' = m0 + m1 + m4 + m5 + m6 + d8 + m9 + m10 + d11 + d12 + m13 + m14
    // f' = c' + ab' + bd'
    // f = (c)(a'+b)(b'+d)
    assign out_pos = c & (~a | b) & (~b | d);



endmodule
