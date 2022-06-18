module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0] wire1;
    wire [7:0] wire2;

    assign wire1 = a > b ? b : a;
    assign wire2 = c > d ? d : c;
    assign min = wire1 > wire2 ? wire2 : wire1;


endmodule

