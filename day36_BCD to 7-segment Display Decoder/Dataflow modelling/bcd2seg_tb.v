`timescale 1ns / 1ps

module bcd2seg_tb;
reg [3:0]bcd;
wire [6:0]seg_7;
integer i;
bcd2seg DUT(bcd,seg_7);

initial begin
for(i=0; i<10; i=i+1) begin
bcd=i;
#10;
end
end

initial begin
$monitor("BCD: %b  7-segment display: %b",bcd,seg_7);
#100 $finish;
end
endmodule
