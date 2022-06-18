module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire sel;
    wire [15:0] wire0, wire1;
    add16 (a[15: 0], b[15: 0], 1'b0, sum[15:0], sel);
    add16 (a[31:16], b[31:16], 1'b0, wire0, );
    add16 (a[31:16], b[31:16], 1'b1, wire1, );


    assign sum[31:16] = sel ? wire1 : wire0;

endmodule

