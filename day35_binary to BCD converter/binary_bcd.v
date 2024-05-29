`timescale 1ns / 1ps

module binary_bcd(b_in,b0,b1,b2,bcd);
input [7:0]b_in;
output reg [3:0]b0,b1,b2;
output reg [11:0]bcd;
integer i;
always@(b_in) begin
b0=0; b1=0; b2=0;
for(i=0; i<8; i=i+1) begin
if (b0>4) b0=b0+3;
if (b1>4) b1=b1+3; 
if (b2>4) b2=b2+3;
{b2,b1,b0} = {b2,b1,b0,b_in[7-i]};
end
bcd={b2,b1,b0};
end
endmodule
