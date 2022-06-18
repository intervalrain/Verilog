module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire cin1, cin2;

    add16 u1(a[15:0], b[15:0], 0   , sum[15:0], cin1);
    add16 u2(a[31:16],b[31:16],cin1,sum[31:16],cin2);

endmodule
// there is a module add16(input[15:0] a, input[15:0] b, input cin, output[15:
// 0] sum, output cout );
