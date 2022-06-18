module top_module(
    input a,
    input b,
    output out);

    mod_a inst1(
        .in1 (a),
        .in2 (b),
        .out (out)
    );

endmodule

// there is a module mod_a(in1, int2, out);
