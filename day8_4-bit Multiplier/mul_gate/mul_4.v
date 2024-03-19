`timescale 1ns / 1ps

module mul_4(a,b,p);
input [3:0]a,b;
output [7:0]p;
wire[11:0]c,s;
and_1 u0(a[0],b[0],p[0]);
fa_1 u1(a[0]&b[1],a[1]&b[0],1'b0,s[0],c[0]);
fa_1 u2(a[1]&b[1],a[2]&b[0],c[0],s[1],c[1]);
fa_1 u3(a[2]&b[1],a[3]&b[0],c[1],s[2],c[2]);
fa_1 u4(a[3]&b[1],1'b0,c[2],s[3],c[3]);

fa_1 u5(a[0]&b[2],s[1],1'b0,s[4],c[4]);
fa_1 u6(a[1]&b[2],s[2],c[4],s[5],c[5]);
fa_1 u7(a[2]&b[2],s[3],c[5],s[6],c[6]);
fa_1 u8(a[3]&b[2],c[3],c[6],s[7],c[7]);

fa_1 u9(a[0]&b[3],s[5],1'b0,s[8],c[8]);
fa_1 u10(a[1]&b[3],s[6],c[8],s[9],c[9]);
fa_1 u11(a[2]&b[3],s[7],c[9],s[10],c[10]);
fa_1 u12(a[3]&b[3],c[7],c[10],s[11],c[11]);

assign p[1]=s[0];
assign p[2]=s[4];
assign p[3]=s[8];
assign p[4]=s[9];
assign p[5]=s[10];
assign p[6]=s[11];
assign p[7]=c[11];
endmodule
