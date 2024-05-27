`timescale 1ns / 1ps


module piso_1(clk,rst,s,p_in,s_out);
input clk,rst,s;
input [3:0]p_in;
output s_out;
wire x;
wire [0:2]q;
wire [8:0]y;
not_1 u0(s,x);
dff_1 u1(p_in[0],clk,rst,q[0]);
and_1 u2(q[0],s,y[0]);
and_1 u3(x,p_in[1],y[1]);
or_1 u4(y[0],y[1],y[2]);
dff_1 u5(y[2],clk,rst,q[1]);
and_1 u6(q[1],s,y[3]);
and_1 u7(x,p_in[2],y[4]);
or_1 u8(y[3],y[4],y[5]);
dff_1 u9(y[5],clk,rst,q[2]);
and_1 u10(q[2],s,y[6]);
and_1 u11(x,p_in[3],y[7]);
or_1 u12(y[6],y[7],y[8]);
dff_1 u13(y[8],clk,rst,s_out);
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


module or_1(input a,b,output c);
assign c=a|b;
endmodule

module and_1(input a,b,output c);
assign c=a&b;
endmodule
