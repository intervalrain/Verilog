`timescale 1ps/1ps
`include "lab0.v"

// testbench for lab0

module stimulus;
    // inputs
    reg x;
    reg y;
    // outputs
    wire z;
    // Instantiate the Unit Under Test(UUT)
    lab0 uut (
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin
        
    $dumpfile("lab0_tb.vcd");
    $dumpvars(0, stimulus);

    x = 0;
    y = 0;

    #20 x = 1;
    #20 y = 1;
    #20 y = 0;
    #20 x = 1;
    #40;
    end

    initial begin
        $monitor("x=%d, y=%d, z=%d \n", x, y, z);
    end
    

endmodule