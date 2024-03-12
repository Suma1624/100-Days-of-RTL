`timescale 1ns / 1ps



module logic_structural(a,b,and_1,or_1,nand_1,nor_1,not_1,xor_1,xnor_1);
input a,b;
output and_1,or_1,nand_1,nor_1,not_1,xor_1,xnor_1;
and u0(and_1,a,b);
or u1(or_1,a,b);
nand u2(nand_1,a,b);
nor u3(nor_1,a,b);
not u4(not_1,a);
xor u5(xor_1,a,b);
xnor u6(xnor_1,a,b);
endmodule
