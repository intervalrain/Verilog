module top_module (
    input a,
    input b,
    input c,
    input d,
    output out1,
    output out2
);

    mod_a u1(out1,out2,a,b,c,d);

endmodule

// there is a module mod_a(output out1, output out2, input a, input b, input c,
// input d);

