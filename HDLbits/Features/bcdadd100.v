module top_module(
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire[99:0] carryin;

    generate
        genvar i;
        bcd_fadd(a[3:0], b[3:0], cin, carryin[0], sum[3:0]);
        for (i = 4; i < 400; i += 4) begin:adder
            bcd_fadd(a[i+3:i], b[i+3:i], carryin[i/4-1], carryin[i/4], sum[i+3:i]);
        end
        assign cout = carryin[99];
    endgenerate
endmodule

