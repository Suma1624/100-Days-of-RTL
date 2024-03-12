`timescale 1ns / 1ps



module logic_behavioural(a,b,and_1,or_1,nand_1,nor_1,not_1,xor_1,xnor_1);
input a,b;
output reg and_1,or_1,nand_1,nor_1,not_1,xor_1,xnor_1;
always@(*)
begin
and_1 = a&b;
or_1 = a|b;
nand_1 = ~(a&b);
nor_1 = ~(a|b);
not_1 = ~a;
xor_1 = a^b;
xnor_1 = ~(a^b);
end
endmodule
