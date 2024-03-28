`timescale 1ns / 1ps

module dff_1(D, clk, rst, Q, Q_not);
input D, clk, rst;
output reg Q,Q_not;

always@(posedge clk) begin
if ({rst})
Q <= 1'b0;
else 
Q <= D;
Q_not <= ~D;
end 
endmodule

