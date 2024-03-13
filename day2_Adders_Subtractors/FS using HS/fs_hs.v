`timescale 1ns / 1ps

module fs_hs(a,b,bin,d,bout);
input a,b,bin;
output d,bout;
wire [0:2]p;
hs_1 u0(a,b,p[0],p[1]);
hs_1 u1(p[0],bin,d,p[2]);
or_1 u2(p[2],p[1],bout);
endmodule