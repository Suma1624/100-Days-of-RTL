`timescale 1ns / 1ps


module hs_1(a,bin,d,bout);
input a,bin;
output d,bout;
assign d=a^bin;
assign bout=(~a)&bin;
endmodule