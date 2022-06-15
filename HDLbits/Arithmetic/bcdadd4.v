module top_module (
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );

    wire [2:0] wl;

    bcd_fadd u0 (a[ 3: 0], b[ 3: 0],   cin, wl[0], sum[ 3: 0]);
    bcd_fadd u1 (a[ 7: 4], b[ 7: 4], wl[0], wl[1], sum[ 7: 4]);
    bcd_fadd u2 (a[11: 8], b[11: 8], wl[1], wl[2], sum[11: 8]);
    bcd_fadd u3 (a[15:12], b[15:12], wl[2],  cout, sum[15:12]);

endmodule

// there is a module bcd_fadd
//
// module bcd_fadd (
//    input [3:0] a,
//    input [3:0] b,
//    input       cin,
//    output      cout,
//    output [3:0] sum );
