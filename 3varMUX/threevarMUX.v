module threevarMUX(
    input a,
    input b,
    input c,
    output out);

    wire [3:0] in;
    wire [1:0] sel;

    assign in = {c,c,1'b0,1'b1};
    assign sel = {a,b};

    four2oneMUX varMUX(in, sel, out);

endmodule

module four2oneMUX(
    input [3:0] in,
    input [1:0] sel,
    output out);

    assign out = in[sel];

endmodule