`timescale 1ns / 1ps



module logic_dataflow(a,b,and_1,or_1,nand_1,nor_1,not_1,xor_1,xnor_1);
input a,b;
output and_1,or_1,nand_1,nor_1,not_1,xor_1,xnor_1;
assign and_1 = a&b;
assign or_1 = a|b;
assign nand_1 = ~(a&b);
assign nor_1 = ~(a|b);
assign not_1 = ~a;
assign xor_1 = a^b;
assign xnor_1 = ~(a^b); 
endmodule
