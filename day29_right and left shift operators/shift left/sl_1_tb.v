`timescale 1ns / 1ps

module sl_1_tb;
reg [3:0]a;
reg s;
wire [3:0]y;
sl_1 DUT(a,s,y);
initial begin
$monitor("given number:%b   after left shift:%b",a,y);
end
initial begin
s=1'b1; a=4'b0111; #10;
a=4'b1001; #10;
a=4'b1010; #10;
a=4'b0110; #10;
a=4'b0101; #10;
a=4'b1100; #10;
$finish;
end
endmodule
