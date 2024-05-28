`timescale 1ns / 1ps

module pipo_1_tb;
reg clk,rst;
reg [3:0]p_in;
wire [3:0]p_out;
pipo_1 DUT(clk,rst,p_in,p_out);

initial begin
clk = 0;
forever #1 clk=~clk;
end

initial begin
rst=0;
#5 p_in=4'b1001;
#5 p_in=4'b1010;
#5 p_in=4'b1110;
end

initial begin
$monitor("clk: %d rst: %d parallel_in: %b parallel_out: %b",clk,rst,p_in,p_out);
#20 $finish;
end

endmodule
