module top_module (
    input c,
    input d,
    output [3:0] mux_in
);
    assign mux_in[0] = c|d;  // 0111
    assign mux_in[1] = 1'b0; // 0000
    assign mux_in[2] = ~d;   // 1001
    assign mux_in[3] = c&d;  // 0010

endmodule
