module top_module (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output [15:0] q
);

    always @(posedge clk) begin
        if (resetn == 1'b0) begin
            q <= 16'd0;
        end
        else begin
            case(byteena)
                0: q <= q;
                1: q <= {q[15:8], d[7:0]};
                2: q <= {d[15:8], q[7:0]};
                3: q <= d;
            endcase
        end
    end

endmodule
