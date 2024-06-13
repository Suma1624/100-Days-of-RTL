`timescale 1ns / 1ps

module onehotfsm_tb;
reg clk,rst;
wire [3:0] state;
wire [1:0] op;
onehotfsm DUT(clk,rst,state,op);
initial begin
clk = 0;
forever #5 clk = ~clk;
end 

initial begin
rst = 1;
#10 rst = 0;
end 

initial begin
$monitor("State: %b   Output: %b", state, op);
#100 $finish;
end
endmodule
