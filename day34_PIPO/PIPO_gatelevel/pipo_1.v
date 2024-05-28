`timescale 1ns / 1ps

module pipo_1(clk,rst,p_in,p_out);
input clk,rst;
input [3:0]p_in;
output [3:0]p_out;

dff_1 u0(p_in[0],clk,rst,p_out[0]);
dff_1 u1(p_in[1],clk,rst,p_out[1]);
dff_1 u2(p_in[2],clk,rst,p_out[2]);
dff_1 u3(p_in[3],clk,rst,p_out[3]);

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