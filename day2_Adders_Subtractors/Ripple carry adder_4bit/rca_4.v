`timescale 1ns / 1ps

module rca_4(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire [2:0]c;
fa_1 u0(a[0],b[0],cin,s[0],c[0]);
fa_1 u1(a[1],b[1],c[0],s[1],c[1]);
fa_1 u2(a[2],b[2],c[1],s[2],c[2]);
fa_1 u3(a[3],b[3],c[2],s[3],cout);
endmodule
