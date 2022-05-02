`timescale 1ns/1ns
`include "half_adder.v"

module half_adder_tb;

reg A;
reg B;

half_adder uut(A, B);

initial begin

    $dumpfile("half_adder_tb.vcd");
    $dumpvars(0, half_adder_tb);

    A = 0;
    B = 0;
    #20;

    A = 1;
    B = 0;
    #20;

    A = 1;
    B = 1;
    #20;

    A = 0;
    B = 1;
    #20;

    A = 0;
    B = 0;
    #20;

    $display("Test complete");

end

endmodule