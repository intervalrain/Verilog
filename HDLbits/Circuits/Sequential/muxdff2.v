module top_module (
    input clk,
    input w, R, E, L,
    output Q
);

    always@(posedge clk)begin
        casez ({L, E})
            2'b1z: Q <= R;
            2'b00: Q <= Q;
            2'b01: Q <= w;
        endcase
    end

endmodule

