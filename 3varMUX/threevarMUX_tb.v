`timescale 1ns/1ns
`include "threevarMUX.v"

module threevarMUX_tb;

reg A;
reg B;
reg C;

threevarMUX uut(A, B, C, OUT);

initial begin

    $dumpfile("threevarMUX_tb.vcd");
    $dumpvars(0, threevarMUX_tb);

    {A, B, C} = {1'b0, 1'b0, 1'b0}; #20;
    {A, B, C} = {1'b0, 1'b0, 1'b1}; #20;
    {A, B, C} = {1'b0, 1'b1, 1'b0}; #20;
    {A, B, C} = {1'b0, 1'b1, 1'b1}; #20;
    {A, B, C} = {1'b1, 1'b0, 1'b0}; #20;
    {A, B, C} = {1'b1, 1'b0, 1'b1}; #20;
    {A, B, C} = {1'b1, 1'b1, 1'b0}; #20;
    {A, B, C} = {1'b1, 1'b1, 1'b1}; #20;
    
    $display("Test complete");

end

endmodule