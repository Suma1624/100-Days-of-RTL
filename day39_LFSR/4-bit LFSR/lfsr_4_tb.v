`timescale 1ns / 1ps

module lfsr_4_tb;
reg clk, rst;
wire [3:0] op;

lfsr_4 DUT(clk, rst, op);

initial begin
clk = 0;
rst = 1;
#10 rst = 0;
end
always #5 clk = ~clk;
initial begin 
$monitor("\t\t clk: %b   lfsr_out: %b", clk, op);
#100 $finish;
end 
endmodule