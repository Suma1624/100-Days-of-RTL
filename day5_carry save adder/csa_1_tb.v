`timescale 1ns / 1ps

module csa_1_tb;
reg [3:0]a,b,c;
wire [3:0]s;
wire [1:0]cout;
csa_1 DUT(a,b,c,s,cout);
initial
begin
a=4'b1111; b=4'b1101; c=4'b0010;
#10 a=4'b0011; b=4'b0101; c=4'b1010;
#10 a=4'b1001; b=4'b1111; c=4'b0110;
#10 a=4'b1011; b=4'b1101; c=4'b1110;
#10 a=4'b1111; b=4'b1100; c=4'b0111;
#10 a=4'b0111; b=4'b0101; c=4'b0010;
#10 $finish;
end
endmodule
