`timescale 1ns / 1ps

module fsm1001_nov2_tb;
reg clk,rst,in;
wire out;
fsm1001_nov2 DUT(clk,rst,in,out);

initial begin
clk = 1'b0;
forever #5 clk = ~clk;
end

initial begin
rst = 1'b1;
in = 1'b0;
#10 rst = 1'b0;
#10 in = 1'b1;
#10 in = 1'b0;
#10 in = 1'b0;
#10 in = 1'b1;
#10 in = 1'b0;
#10 in = 1'b1;
#10 in = 1'b0;
#10 in = 1'b0;
#10 in = 1'b1;
#10 in = 1'b0;
end

initial begin
$monitor("clk: %b input: %b output: %b", clk,in,out);
#140 $finish;
end
endmodule