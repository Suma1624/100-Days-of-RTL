`timescale 1ns / 1ps

module udc_1_tb;
reg clk,rst,c;
wire [3:0] Q;
udc_1 DUT(clk, rst, c, Q);

initial clk = 0;
always #10 clk = ~clk;

	
initial begin
$monitor("rst=%b count=%b Q=%b",rst,c,Q);
end

initial
begin
rst = 1;  c= 0;
#20 rst = 1;  c = 1;
#40 rst = 0;  c = 0;
#40 rst = 0;  c = 0;
#40 rst = 0;  c = 0;
#40 rst = 0;  c = 0;
#40 rst = 0;  c = 0;
#40 rst = 0;  c = 1;
#40 rst = 0;  c = 1;
#40 rst = 0;  c = 1;
#40 rst = 0;  c = 1;
#40 rst = 0;  c = 1;
#20 $finish;
end
      
endmodule
