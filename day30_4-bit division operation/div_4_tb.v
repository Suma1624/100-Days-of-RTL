`timescale 1ns / 1ps

module div_4_tb;
reg [3:0]a,b;
wire [3:0]q,r;
div_4 DUT(a,b,q,r);
initial begin
$monitor("a:%d  b:%d  quotient:%d  remainder:%d",a,b,q,r);
end
initial begin
a=7; b=2; #10;
a=13; b=3; #10;
a=4; b=9; #10;
a=15; b=5; #10;
a=7; b=7; #10;
a=3; b=9; #10;
$finish;
end
endmodule
