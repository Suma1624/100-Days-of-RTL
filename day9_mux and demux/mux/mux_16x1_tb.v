`timescale 1ns / 1ps

module mux_16x1_tb;
reg [15:0]a;
reg [3:0]s;
wire y;
mux_16x1 DUT(a,s,y);
initial begin
$monitor("input:%d selection line:%d output:%d",a,s,y);
end
initial begin
a=16'h3524; s=4'b1000;
#10 a=16'hfaaf; s=4'b1010;
#10 a=16'h5432; s=4'b0011;
#10 a=16'habcd; s=4'b1111;
#10 $finish;
end
endmodule
