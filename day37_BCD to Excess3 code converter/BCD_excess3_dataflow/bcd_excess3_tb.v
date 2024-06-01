`timescale 1ns / 1ps

module bcd_excess3_tb;
reg [3:0]a;
wire [3:0]y;
bcd_excess3 DUT(a,y);
initial begin
a = 4'b0000;
#10 a = 4'b0001;
#10 a = 4'b0010;
#10 a = 4'b0011;
#10 a = 4'b0100;
#10 a = 4'b0101;
#10 a = 4'b0110;
#10 a = 4'b0111;
#10 a = 4'b1000;
#10 a = 4'b1001;
end
initial begin
$monitor("BCD:%b   Excess3 code:%b",a,y);
#100 $finish;
end 
endmodule
