`timescale 1ns / 1ps


module siso_1(clk, rst, s_in, s_out);
input clk,rst,s_in;
output s_out;
wire [2:0]q;
dff_1 u0(s_in,clk,rst,q[0]);
dff_1 u1(q[0],clk,rst,q[1]);
dff_1 u2(q[1],clk,rst,q[2]);
dff_1 u3(q[2],clk,rst,s_out);
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