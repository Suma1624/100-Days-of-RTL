`timescale 1ns / 1ps


module bs_1(a,s,y);
input [7:0]a;
input [2:0]s;
output [7:0]y;

mux_8x1 u0(a[7:0],s[2:0],y[0]);
mux_8x1 u1({a[0],a[7:1]},s[2:0],y[1]);
mux_8x1 u2({a[1:0],a[7:2]},s[2:0],y[2]);
mux_8x1 u3({a[2:0],a[7:3]},s[2:0],y[3]);                                        
mux_8x1 u4({a[3:0],a[7:4]},s[2:0],y[4]);
mux_8x1 u5({a[4:0],a[7:5]},s[2:0],y[5]);
mux_8x1 u6({a[5:0],a[7:6]},s[2:0],y[6]);
mux_8x1 u7({a[6:0],a[7]},s[2:0],y[7]);

endmodule
