`timescale 1ns / 1ps


module clk_ps_tb;
reg rst,clk;
wire clk_0,clk_90,clk_180,clk_270;
clk_ps DUT(rst,clk,clk_0,clk_90,clk_180,clk_270);
initial begin
clk = 0;
forever #2 clk = ~clk;
end
initial begin
rst = 1;
#5 rst = 0;
#60 $finish;
end
endmodule
