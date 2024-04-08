`timescale 1ns / 1ps

module mg_7_tb;
reg [6:0]a;
wire y;
mg_7 DUT(a,y);
initial begin
$monitor("%b is the majority input of %b",y,a);
end 
initial begin
a=7'b1010100; #10;
a=7'b0101010; #10;
a=7'b1010101; #10;
a=7'b0000000; #10;
a=7'b1110101; #10;
a=7'b1101110; #10;
a=7'b1000001; #10;
$finish;
end
endmodule
