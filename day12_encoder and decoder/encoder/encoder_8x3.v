`timescale 1ns / 1ps

module encoder_8x3(y,a);
input [7:0]y;
output [2:0]a;
assign a[0]=(y[1]|y[3]|y[5]|y[7]);
assign a[1]=(y[2]|y[3]|y[6]|y[7]);
assign a[2]=(y[4]|y[5]|y[6]|y[7]);
endmodule
