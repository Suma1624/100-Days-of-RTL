`timescale 1ns / 1ps


module sr_1(a,s,y);
input [3:0]a;
input s;
output [3:0]y;
wire r;
wire [7:0]x;
not_1 u0(s,r);
and_1 u1(r,a[0],x[0]);
and_1 u2(s,a[1],x[1]);
and_1 u3(r,a[1],x[2]);
and_1 u4(s,a[2],x[3]);
and_1 u5(r,a[2],x[4]);
and_1 u6(s,a[3],x[5]);
and_1 u7(r,a[3],x[6]);
and_1 u8(s,1'b0,x[7]);
or_1 u9(x[0],x[1],y[0]);
or_1 u10(x[2],x[3],y[1]);
or_1 u11(x[4],x[5],y[2]);
or_1 u12(x[6],x[7],y[3]);
endmodule