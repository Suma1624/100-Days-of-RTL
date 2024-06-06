`timescale 1ns / 1ps


module freqdiv_4(clk,rst,clk_4);
input clk, rst;
output clk_4;
wire clk_2;

dff_1 u0(~clk_4, clk, rst, clk_2);
dff_1 u1(clk_2, clk, rst, clk_4);

endmodule

module dff_1(D, clk, rst, Q);
input D, clk, rst;
output reg Q;

always@(posedge clk) begin
if ({rst})
Q <= 1'b0;
else 
Q <= D;
end 
endmodule