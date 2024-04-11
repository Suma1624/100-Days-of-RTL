`timescale 1ns / 1ps

module div_4(a,b,q,r);
input [3:0]a,b;
output [3:0]q,r;
wire [6:0]x;
wire[7:0]p;
wire [8:0]t;
wire [4:0]s;
not_1 u0(b[0],x[0]);
not_1 u1(b[1],x[1]);
not_1 u2(b[2],x[2]);
not_1 u3(b[3],x[3]);
and_3 u4(x[1],x[2],x[3],p[0]);
and_1 u5(a[3],x[0],p[1]);
mux_2_1 u6(a[3],p[1],p[0],p[2]);
and_3 u7(p[0],a[3],b[0],q[3]);
sb_1 u8(a[2],b[0],1'b0,p[3],t[0],s[0]);
sb_1 u9(p[2],b[1],t[0],p[3],t[1],s[1]);
or_3 u10(t[1],b[2],b[3],p[3]);
or_1 u11(b[0],b[1],p[4]);
not_1 u12(p[3],x[4]);
and_1 u13(p[4],x[4],q[2]);
sb_1 u14(a[1],b[0],1'b0,p[5],t[2],s[2]);
sb_1 u15(s[0],b[1],t[2],p[5],t[3],s[3]);
sb_1 u16(s[1],b[2],t[3],p[5],t[4],s[4]);
or_1 u17(t[4],b[3],p[5]);
or_1 u18(p[4],b[2],p[6]);
not_1 u19(p[5],x[5]);
and_1 u20(p[6],x[5],q[1]);
sb_1 u21(a[0],b[0],1'b0,t[8],t[5],r[0]);
sb_1 u22(s[2],b[1],t[5],t[8],t[6],r[1]);
sb_1 u23(s[3],b[2],t[6],t[8],t[7],r[2]);
sb_1 u24(s[4],b[3],t[7],t[8],t[8],r[3]);
or_1 u25(p[6],b[3],p[7]);
not_1 u26(t[8],x[6]);
and_1 u27(p[7],x[6],q[0]);
endmodule

module and_3(a,b,c,y);
input a,b,c;
output y;
assign y = a&b&c;
endmodule

module sb_1(a,b,bin,ctrl,bout,y);
input a,b,bin,ctrl;
output bout,y;
wire x;
fs_1 u0(a,b,bin,x,bout);
mux_2_1 u1(x,a,ctrl,y);
endmodule


module mux_2_1(a,b,s,y);
input a,b;
input s;
output y;
assign y = s?b:a;
endmodule