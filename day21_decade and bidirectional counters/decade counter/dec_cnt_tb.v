`timescale 1ns / 1ps


module dec_cnt_tb;
reg clk,rst;
wire [3:0]cnt;
dec_cnt DUT(clk,rst,cnt);
initial begin
$monitor("clk=%b rst=%b count=%b",clk,rst,cnt);
end

always
forever #5 clk = ~clk;

initial begin
clk = 0; rst = 1;
#5 clk = 1; rst = 1;
#5 clk = 1; rst = 0;
#120; $finish;
end
endmodule
