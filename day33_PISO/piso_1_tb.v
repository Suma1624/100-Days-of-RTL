`timescale 1ns / 1ps

module piso_1_tb;
reg clk,rst,s;
reg [3:0]p_in;
wire s_out;
piso_1 DUT(clk,rst,s,p_in,s_out);

initial begin
forever #1 clk=~clk;
end

initial begin
rst=0;
clk=0;
s=0;
p_in=4'b1001;
#2 s=1;
#10 s=0;
p_in=4'b1010;
#2 s=1;
end
initial begin
$monitor("shift: %d clk: %d rst: %d parallel_in: %b serial_out: %b",s,clk,rst,p_in,s_out);
#25 $finish;
end
endmodule