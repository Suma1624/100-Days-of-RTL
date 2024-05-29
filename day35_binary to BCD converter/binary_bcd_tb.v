`timescale 1ns / 1ps


module binary_bcd_tb;
reg [7:0]b_in;
wire [3:0]b0,b1,b2;
wire [11:0]bcd;
binary_bcd DUT(b_in,b0,b1,b2,bcd);

initial begin
b_in=76;
#10 b_in=136;
#10 b_in=29;
#10 b_in=248;
#10 b_in=10;
end
initial begin
$monitor("binary_data:%b  decimal_form:%d  BCD:%b",b_in,b_in,bcd);
#50 $finish;
end
endmodule
