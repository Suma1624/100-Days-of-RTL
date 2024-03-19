`timescale 1ns / 1ps

module mul_1(a,b,p);
input [3:0]a,b;
output reg [7:0]p;
integer i;

always@(*) begin
p=0;
for (i=0; i<4; i=i+1) begin
if (b[i]) begin
p = p + (a << i);
end
end
end
endmodule
