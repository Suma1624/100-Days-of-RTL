`timescale 1ns / 1ps

module mux_16x1(a,s,y);
input [15:0]a;
input [3:0]s;
output y;
wire [3:0]p;
mux_8x1 u0(a[7:0],s[2:0],p[0]);
mux_8x1 u1(a[15:8],s[2:0],p[1]);

mux_21 u2(p[1:0],s[3],y);
endmodule


module mux_8x1(a,s,y);
input [7:0]a;
input [2:0]s;
output y;
wire [1:0]p;
mux_4x1 u0(a[3:0],s[1:0],p[0]);
mux_4x1 u1(a[7:4],s[1:0],p[1]);

mux_21 u2(p[1:0],s[2],y);
endmodule


module mux_4x1(a,s,y);
input [3:0]a;
input [1:0]s;
output y;
wire [1:0]p;
mux_21 u0(a[1:0],s[0],p[0]);
mux_21 u1(a[3:2],s[0],p[1]);

mux_21 u2(p[1:0],s[1],y);
endmodule


module mux_21(a,s,y);
input [1:0]a;
input s;
output y;
assign y = s?a[1]:a[0];
endmodule