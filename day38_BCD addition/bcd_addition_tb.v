`timescale 1ns / 1ps

module bcd_addition_tb;
reg [3:0]a,b;
reg c;
wire [3:0]sum;
wire carry;
bcd_addition DUT(a,b,c,sum,carry);
initial begin
a=7; b=7; c=0; 
#10 a=15; b=3; c=0;
#10 a=9; b=13; c=0;
#10 a=3; b=4; c=0;
#10 a=14; b=16; c=0;
end
initial begin
$monitor("a:%d b:%d sum:%d carry:%d",a,b,sum,carry);
#50 $finish;
end
endmodule
