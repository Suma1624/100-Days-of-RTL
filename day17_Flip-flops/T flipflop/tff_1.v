`timescale 1ns / 1ps

module tff_1(T,clk,Q,Q_not);
input T,clk;
output reg Q,Q_not;
initial Q=0;
always@(posedge clk)
begin
Q = (~T&Q)|(T&~Q);
Q_not = ~Q;
end
endmodule