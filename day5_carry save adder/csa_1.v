`timescale 1ns / 1ps

module csa_1(a,b,c,s,cout);
input [3:0]a,b,c;
output [3:0]s;
output [1:0]cout;
wire [3:0]s1,c1;
wire [3:0]s2,c2;
fa_1 u0(a[0],b[0],c[0],s1[0],c1[0]);
fa_1 u1(a[1],b[1],c[1],s1[1],c1[1]);
fa_1 u2(a[2],b[2],c[2],s1[2],c1[2]);
fa_1 u3(a[3],b[3],c[3],s1[3],c1[3]);

fa_1 u4(c1[0],s1[1],1'b0,s2[0],c2[0]);
fa_1 u5(c1[1],s1[2],c2[0],s2[1],c2[1]);
fa_1 u6(c1[2],s1[3],c2[1],s2[2],c2[2]);
fa_1 u7(c1[3],1'b0,c2[2],s2[3],c2[3]);
assign s[0]=s1[0];
assign s[1]=s2[0];
assign s[2]=s2[1];
assign s[3]=s2[2];
assign cout[0]=s2[3];
assign cout[1]=c2[3];
endmodule

module fa_1(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
assign s=a^b^cin;
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule
