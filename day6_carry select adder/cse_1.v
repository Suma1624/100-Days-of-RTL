`timescale 1ns / 1ps

module cse_1(a,b,cin,s,cout);
input [7:0]a,b;
input cin;
output [7:0]s;
output cout;
wire [3:0]s1,s2;
wire p,m,n;
rca_4 u0(a[3:0],b[3:0],cin,s[3:0],p);
rca_4 u1(a[7:4],b[7:4],1'b0,s1[3:0],m);
rca_4 u2(a[7:4],b[7:4],1'b1,s2[3:0],n);
mux_2x1#(4) u3(s1[3:0],s2[3:0],p,s[7:4]);
mux_2x1#(1) u4(m,n,p,cout);
endmodule

module mux_2x1(a0,a1,s,y);
parameter N=4;
input [N-1:0]a0,a1;
input s;
output [N-1:0]y;
assign y=(s==1'b0)?a0:a1;
endmodule