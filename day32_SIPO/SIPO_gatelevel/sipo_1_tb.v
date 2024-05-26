`timescale 1ns / 1ps

module sipo_1_tb;
reg clk,rst,s_in;
wire [3:0]p_out;
sipo_1 DUT(clk,rst,s_in,p_out);

initial begin
clk =0;
s_in=0;
forever #5 clk=~clk;
end

initial begin
rst=1;
#10 rst=0;
#10 s_in=1;
#10 s_in=0;
#10 s_in=1;
#10 s_in=1;
#10 s_in=0;
#10 s_in=0;
#10 s_in=1;
#10 s_in=0;
#10 s_in=0;
end

initial begin
$monitor("clk: %d rst: %d serial_in: %b parallel_out: %b",clk,rst,s_in,p_out);
#100 $finish;
end
endmodule
