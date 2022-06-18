module top_module (
    input clk,
    input [7:0] d,
    input [1:0] sel,
    output [7:0] q
);

    wire [7:0]w1,w2,w3;
    my_dff8 u1(clk, d, w1);
    my_dff8 u2(clk, w1, w2);
    my_dff8 u3(clk, w2, w3);

    always @(*) begin
        case(sel)
            0: q = d;
            1: q = w1;
            2: q = w2;
            3: q = w3;
        endcase
    end

endmodule

// there is a module my_dff8(input clk, input [7:0] d, output [7:0] q);
