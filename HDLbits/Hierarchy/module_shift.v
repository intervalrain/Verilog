module top_module ( input clk, input d, output q );

    wire w1, w2;

    my_dff u1(clk, d, w1);
    my_dff u2(clk, w1, w2);
    my_dff u3(clk, w2, q);

endmodule

// there is a module my_diff(input clk, input d, input q);
