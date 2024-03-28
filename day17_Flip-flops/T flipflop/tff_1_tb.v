`timescale 1ns / 1ps

module tff_1_tb;
reg T,clk;
wire Q,Q_not;
tff_1 DUT(T,clk,Q,Q_not);
initial begin
$monitor("\t clk: %b T: %b  Q: %b Q_not: %b",clk,T,Q,Q_not);
end
initial
begin
clk=0;
forever 
#5 clk=~clk;
end
initial
begin
T=0;
#10 T=1;  #10 T=0; #10 T=1; #10 T=0;
#10 T=0; #10 T=1; #10 T=1; #10 T=1;
#10 $finish;
end
endmodule

