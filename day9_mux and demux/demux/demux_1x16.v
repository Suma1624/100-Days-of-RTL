`timescale 1ns / 1ps

module demux_1x16(a,s,y);
input a;
input [3:0]s;
output [15:0]y;
wire [3:0]p;
demux_1x4 u0(a,s[1:0],p[3:0]);

demux_1x4 u1(p[0],s[3:2],y[3:0]);
demux_1x4 u2(p[1],s[3:2],y[7:4]);
demux_1x4 u3(p[2],s[3:2],y[11:8]);
demux_1x4 u4(p[3],s[3:2],y[15:12]);
endmodule

module demux_1x4(a,s,y);
input a;
input [1:0]s;
output [3:0]y;
wire [1:0]p;
demux_1x2 u0(a,s[0],p[1:0]);

demux_1x2 u1(p[0],s[1],y[1:0]);
demux_1x2 u2(p[1],s[1],y[3:2]);
endmodule

module demux_1x2(a,s,y);
input a,s;
output [1:0]y;
assign {y[0],y[1]} = s ? {1'b0,a} : {a,1'b0} ;
endmodule
