`timescale 1ns / 1ps

module parity_checker(d,p,e);
input [7:0]d;
input p;
output e;
wire [6:1]i;
wire ep;
assign i1 = d[0]^d[1];
assign i2 = i1^d[2];
assign i3 = i2^d[3];
assign i4 = i3^d[4];
assign i5 = i4^d[5];
assign i6 = i5^d[6];
assign ep = i6^d[7];
assign e = ep^p;
endmodule
