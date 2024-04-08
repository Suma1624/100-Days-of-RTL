`timescale 1ns / 1ps

module mg_5_tb;
reg [4:0]a;
wire y;
integer i;
mg_5 DUT(a,y);
initial begin
$monitor("%b is the majority input of %b",y,a);
end 
initial begin
for (i=0; i<32; i=i+1) begin
a=i; #10;
end 
$finish;
end
endmodule
