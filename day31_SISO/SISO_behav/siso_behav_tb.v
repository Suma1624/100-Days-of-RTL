`timescale 1ns / 1ps

module siso_behav_tb;
reg clk,rst,s_in;
wire s_out;
siso_behav DUT(clk,rst,s_in,s_out);

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
$monitor("clk: %d rst: %d serial_in: %b serial_out: %b",clk,rst,s_in,s_out);
#140 $finish;
end
endmodule
