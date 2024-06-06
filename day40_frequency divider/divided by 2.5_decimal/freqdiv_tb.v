`timescale 1ns / 1ps

module freqdiv_tb;
reg clk, rst;
wire clk_new;

freqdiv DUT(clk, rst, clk_new);

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
