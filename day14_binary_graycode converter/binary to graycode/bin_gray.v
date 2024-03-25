`timescale 1ns / 1ps


module bin_gray(b,g);
input [3:0]b;
output [3:0]g;

buf u3(g[3],b[3]);
xor u0(g[2],b[2],b[3]);
xor u1(g[1],b[1],b[2]);
xor u2(g[0],b[0],b[1]);
	    
endmodule