module fa(a, b, carry, sum);
    
input wire [3:0]a, b;
input wire carry;
output [4:0] sum;
// reg    [4:0] sum;

assign carry = a & b;
assign sum = a ^ b;

endmodule