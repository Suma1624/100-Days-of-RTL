`timescale 1ns / 1ps

module jc_1_tb;
reg clk,rst;
wire [3:0]cnt;
jc_1 DUT(clk,rst,cnt);

initial begin
rst = 1;
#10; rst = 0;
end

always begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("clk=%b rst=%b count=%b",clk,rst,cnt);
#100 $finish;
end
endmodule

