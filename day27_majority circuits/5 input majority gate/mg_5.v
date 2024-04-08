`timescale 1ns / 1ps

module mg_5(a,y);
input [4:0]a;
output y;
wire [9:0]x;
and u0(x[0],a[0],a[1],a[2]);
and u1(x[1],a[0],a[1],a[3]);
and u2(x[2],a[0],a[1],a[4]);
and u3(x[3],a[0],a[2],a[3]);
and u4(x[4],a[0],a[2],a[4]);
and u5(x[5],a[0],a[3],a[4]);
and u6(x[6],a[1],a[2],a[3]);
and u7(x[7],a[1],a[2],a[4]);
and u8(x[8],a[1],a[3],a[4]);
and u9(x[9],a[2],a[3],a[4]);
or u10(y,x[0],x[1],x[2],x[3],x[4],x[5],x[6],x[7],x[8],x[9]);
endmodule
