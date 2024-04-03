`timescale 1ns / 1ps


module ped_1_tb;
reg clk,d;
wire det;
ped_1 DUT(clk,d,det);
always
forever #8 clk = ~clk;
initial begin
clk = 0;
d = 0;
#10 d = 1;
#15 d=0;
#20 d=1;
#10 d=0;
#15 d=1;
#20 d=0;
#15 d=1;
#20 $finish;
end
endmodule
