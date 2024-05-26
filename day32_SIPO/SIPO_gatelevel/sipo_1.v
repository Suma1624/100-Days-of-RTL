`timescale 1ns / 1ps

module sipo_1(clk,rst,s_in,p_out);
input clk,rst,s_in;
output [3:0]p_out;
dff_1 u0(s_in,clk,rst,p_out[3]);
dff_1 u1(p_out[3],clk,rst,p_out[2]);
dff_1 u2(p_out[2],clk,rst,p_out[1]);                               
dff_1 u3(p_out[1],clk,rst,p_out[0]);
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