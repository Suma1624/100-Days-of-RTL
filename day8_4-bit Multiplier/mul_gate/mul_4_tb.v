`timescale 1ns / 1ps

module mul_4_tb;
reg [3:0]a,b;
wire [7:0]p;
mul_4 DUT(a,b,p);
initial
begin
$monitor("The product of a=%b and b=%b is p=%b",a,b,p);
end
initial
begin
a=1001; b=1100;
#10 a=4'b0101; b=4'b1010;
#10 a=4'b0110; b=4'b0010;
#10 a=4'b0100; b=4'b1110;
#10 a=4'b0111; b=4'b1010;
#10 a=4'b1101; b=4'b1011;
#10 $finish;
end
endmodule
