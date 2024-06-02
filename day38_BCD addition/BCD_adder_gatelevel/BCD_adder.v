`timescale 1ns / 1ps

module bcd_adder(a,b,c,sum,carry); 
input [3:0]a,b; 
input c; 
output[3:0]sum; 
output carry; 
wire [3:0]s;
wire [1:0]w;

rca_4 u0(a,b,c,s,c1);
rca_4 u1(s,{1'b0,carry,carry,1'b0},1'b0,sum,c2);
and u2(w[0],s[3],s[2]);
and u3(w[1],s[3],s[1]);
or u4(carry,w[0],w[1],c1);
endmodule

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

module fa_1(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
assign s=a^b^cin;
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule
