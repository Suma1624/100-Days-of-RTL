`timescale 1ns / 1ps

module gray_bin(g,b);
input [3:0]g;
output [3:0]b;

buf u3(b[3],g[3]);
xor u0(b[2],b[3],g[2]);
xor u1(b[1],b[2],g[1]);
xor u2(b[0],b[1],g[0]);
	    
endmodule
