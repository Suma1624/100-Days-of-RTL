`timescale 1ns / 1ps

module freqdiv_5(clk,rst,clk_5);
input clk,rst;
output clk_5;
wire[2:0] q;
wire temp;
mod5_cnt u0(clk,rst,q);
dff_1 u1(q[1],~clk, reset,temp);
or u2(clk_5, q[1],temp);
endmodule

module mod5_cnt(clk,rst,cnt);
input clk,rst;
output reg [3:0]cnt;
always@(posedge clk)
begin
if (rst)
cnt <= 4'd0;
else if (cnt == 4'd4)
cnt <= 4'd0;
else
cnt <= cnt + 4'd1;
end
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