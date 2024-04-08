`timescale 1ns / 1ps

module mg_7(a,y);
input [6:0]a;
output y;
wire [1:0]x;
assign x[0] = a[0]&a[1] | a[1]&a[2] | a[2]&a[0];
assign x[1] = a[3]&a[4] | a[4]&a[5] | a[5]&a[3];

assign y = x[0]&x[1] | x[1]&a[6] | x[0]&a[6];
endmodule
