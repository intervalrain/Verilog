module top_module (
    input [3:0] x,
    input [3:0] y,
    output [4:0] sum);

    wire [2:0] cout;

    fa u0(x[0],y[0],      0, sum[0], cout[0]);
    fa u1(x[1],y[1],cout[0], sum[1], cout[1]);
    fa u2(x[2],y[2],cout[1], sum[2], cout[2]);
    fa u3(x[3],y[3],cout[2], sum[3], sum[4]);

endmodule

module fa(
    input a, b, cin,
    output sum, cout);

    assign {cout, sum} = a + b + cin;

endmodule
