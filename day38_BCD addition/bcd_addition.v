`timescale 1ns / 1ps

module bcd_addition(a,b,c,sum,carry);
input [3:0]a,b;
input c;
output reg [3:0]sum;
output reg carry;
reg [4:0]temp;
always@(a,b,c) begin
temp = a + b + c;
if (temp>9) begin
temp = temp +6;
carry = 1;
sum = temp[3:0];
end
else begin
carry = 0;
sum = temp[3:0];
end
end
endmodule
