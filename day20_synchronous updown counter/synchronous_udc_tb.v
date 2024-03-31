`timescale 1ns / 1ps

module synchronous_udc_tb;
reg clk;
reg rst;
reg c;
wire [3:0]Q;
wire [3:0]Q_not;
synchronous_udc DUT(clk,rst,c,Q,Q_not);
initial begin
clk = 1; rst =1; c=0;
#20; clk = 1; rst = 0; c =0;
#20; clk=1; rst = 0; c=1;
#20;
end
always
forever #2 clk = ~clk;
	
initial begin
$monitor("time=%g clk=%b rst=%b count=%b Q=%b Q_not=%b",$time,clk,rst,c,Q,Q_not);
#60 $finish;
end
     
endmodule
