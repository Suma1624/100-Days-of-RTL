`timescale 1ns / 1ps


module freqdiv_5_tb;
reg clk, rst;
wire clk_5;

freqdiv_5 DUT(clk, rst, clk_5);

initial begin
clk= 1'b0;
forever #5 clk= ~clk;
end
initial begin
rst= 1'b1;
#10 rst= 1'b0;
#90 $finish;
end

endmodule
