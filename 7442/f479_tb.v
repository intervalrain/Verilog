`timescale 1ns/1ns
`include "f479.v"

module f479_tb;

reg a, b, c, d;
wire out;

f479 uut(a, b, c, d, out);

initial 
begin

    a = 0;
    b = 0;
    c = 0;
    d = 0;

    $monitor("%4dns monitor: {a,b,c,d}={%d,%d,%d,%d} | out=%d", $stime, a, b, c, d, out);

end

always #10 begin
    d = d + 1;
    $monitor("%4dns monitor: {a,b,c,d}={%d,%d,%d,%d} | out=%d", $stime, a, b, c, d, out);
end

always #20 begin
    c = c + 1;
end

always #40 begin
    b = b + 1;
end

always #80 begin
    a = a + 1;
end

always #150 $finish;

endmodule