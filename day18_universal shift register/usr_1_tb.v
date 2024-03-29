`timescale 1ns / 1ps

module usr_1_tb;

reg clk,rst,right_in,left_in;
reg [1:0]sel;
reg [7:0]par_in;
wire [7:0]out;

usr_1 DUT(clk,rst,right_in,left_in,par_in,sel,out);

always #2 clk = ~clk;
initial begin
$monitor("sel:%b parallel_in:%b left_in:%b right_in:%b parallel_out:%b",sel,par_in,left_in,right_in,out);
clk = 0; rst = 1;
#3 rst = 0;

par_in = 8'b11000101;
left_in = 1'b1;
right_in = 1'b1;

sel = 3; #10; 
sel = 1; #10;
sel = 3; #10;
sel = 2; #10;
sel = 0; #10;
$finish;
end

endmodule