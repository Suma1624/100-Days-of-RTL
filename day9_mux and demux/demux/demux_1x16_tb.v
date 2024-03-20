`timescale 1ns / 1ps

module demux_1x16_tb;
reg a;
reg [3:0]s;
wire [15:0]y;
demux_1x16 DUT(a,s,y);
initial
begin
$monitor("input:%d selection line:%d output:%d",a,s,y);
end
initial
begin
a=1'b0; s=4'b1000;
#10 a=1'b1; s=4'b0001;
#10 a=1'b1; s=4'b0010;
#10 a=1'b1; s=4'b0011;
#10 a=1'b1; s=4'b0100;
#10 a=1'b1; s=4'b0101;
#10 a=1'b1; s=4'b0110;
#10 a=1'b1; s=4'b0111;
#10 a=1'b1; s=4'b1000;
#10 a=1'b1; s=4'b1001;
#10 a=1'b1; s=4'b1010;
#10 a=1'b1; s=4'b1011;
#10 a=1'b1; s=4'b1100;
#10 a=1'b1; s=4'b1101;
#10 a=1'b1; s=4'b1110;
#10 a=1'b1; s=4'b1111;

#10 $finish;
end
endmodule
