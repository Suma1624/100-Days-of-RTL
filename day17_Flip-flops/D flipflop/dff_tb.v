`timescale 1ns / 1ps

module dff_1_tb;
reg D,clk, rst;
wire Q,Q_not;
dff_1 DUT(D,clk,rst,Q,Q_not);

initial begin
clk=0;
D=0;
forever #5 clk=~clk;
end

initial begin
rst=1; #10;
rst=0;
forever #10 D=~D;
#10 $finish;
end 
initial begin
$monitor("\ clk:%d D:%d Q:%d Q_not:%d", clk,D,Q,Q_not);
#100 $finish;
end
endmodule

