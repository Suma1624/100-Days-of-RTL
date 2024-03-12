`timescale 1ns / 1ps



module logic_behavioural_tb;
reg a,b;
wire and_1,or_1,nand_1,nor_1,not_1,xor_1,xnor_1;
logic_behavioural DUT(a,b,and_1,or_1,nand_1,nor_1,not_1,xor_1,xnor_1);
initial
begin
a=1'b0; b=1'b0;
#10 a=1'b0; b=1'b1;
#10 a=1'b1; b=1'b0;
#10 a=1'b1; b=1'b1;
#10 $finish;
end
endmodule
