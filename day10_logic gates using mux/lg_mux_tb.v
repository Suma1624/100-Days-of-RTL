`timescale 1ns / 1ps

module lg_mux_tb;
reg a,s;
wire and_0,or_0,not_0,nand_0,nor_0,xor_0,xnor_0;
lg_mux DUT(a,s,and_0,or_0,not_0,nand_0,nor_0,xor_0,xnor_0);
initial begin
a=1'b0; s=1'b0;
#10 a=1'b0; s=1'b1;
#10 a=1'b1; s=1'b0;
#10 a=1'b1; s=1'b1;
#10 $finish;
end
endmodule
