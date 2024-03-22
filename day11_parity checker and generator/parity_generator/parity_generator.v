`timescale 1ns / 1ps
module parity_generator(d,ep,op);
input [7:0]d;
output ep,op;
wire [6:1]i;
assign i1 = d[0]^d[1];
assign i2 = i1^d[2];
assign i3 = i2^d[3];
assign i4 = i3^d[4];
assign i5 = i4^d[5];
assign i6 = i5^d[6];
assign ep = i6^d[7];
assign op = ~(ep);
endmodule
