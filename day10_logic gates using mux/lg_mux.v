`timescale 1ns / 1ps

module lg_mux(a,s,and_0,or_0,not_0,nand_0,nor_0,xor_0,xnor_0);
input a,s;
output and_0,or_0,not_0,nand_0,nor_0,xor_0,xnor_0;
mux u0(1'b0,a,s,and_0);
mux u1(a,1'b1,s,or_0);
mux u2(1'b1,1'b0,a,not_0);
mux u3(1'b1,not_0,s,nand_0);
mux u4(not_0,1'b0,s,nor_0);
mux u5(a,not_0,s,xor_0);
mux u6(not_0,a,s,xnor_0);
endmodule


module mux(a0,a1,s,y);
input a0,a1,s;
output y;
assign y = s ? a1 : a0 ;
endmodule
