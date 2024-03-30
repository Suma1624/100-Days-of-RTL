`timescale 1ns / 1ps

module ripple_udc(clk,rst,c,Q,Q_not);
input clk,rst,c;
output [3:0]Q,Q_not; 
wire [8:0] x;
wire c_not;

not_1 u0(c,c_not);

tff_2 u1(1'b1,clk,rst,Q[0],Q_not[0]);
tff_2 u2(1'b1,x[6],rst,Q[1],Q_not[1]);
tff_2 u3(1'b1,x[7],rst,Q[2],Q_not[2]);
tff_2 u4(1'b1,x[8],rst,Q[3],Q_not[3]);

and_1 u5(Q[0],c_not,x[0]);
and_1 u6(Q_not[0],c,x[1]);
and_1 u7(Q[1],c_not,x[2]);
and_1 u8(Q_not[1],c,x[3]);
and_1 u9(Q[2],c_not,x[4]);
and_1 u10(Q_not[2],c,x[5]);

or_1 u11(x[0],x[1],x[6]);
or_1 u12(x[2],x[3],x[7]); 
or_1 u13(x[4],x[5],x[8]); 
endmodule


module tff_2(t,clk,rst,Q,Q_not);
input t,clk,rst;
output reg Q,Q_not;
always@(negedge clk)
begin
if(rst==1) begin
Q = 1'b0; Q_not=1'b1; end
else
if(t==0) begin
Q=Q; Q_not=Q_not; end
else if(t==1) begin
Q=~Q; Q_not=~Q_not; end	
end
endmodule

module and_1(input a,b,output c);
assign c=a&b;
endmodule

module not_1(
    input a,
    output b
    );
assign b=~a;
endmodule

module or_1(input a,b,output c);
assign c=a|b;
endmodule