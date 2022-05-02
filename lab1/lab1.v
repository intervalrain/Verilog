//F(x0, x1, x2, x3, x4) = x0x3x4' + x3'x4 + x0'x2 + x0'x4

module lab1(x0, x1, x2, x3, x4, F);
input x0, x1, x2, x3, x4;
output F;

wire not_x0, not_x3, not_x4, p1, p2, p3, p4;

not n1(not_x0, x0), n2(not_x3, x3), n3(not_x4, x4);
and a1(p1, x0, x3, not_x4), 
    a2(p2, not_x3, x4), 
    a3(p3, not_x0, x2),
    a4(p4, not_x0, x4);
or  o1(F, p1, p2, p3, p4);

endmodule