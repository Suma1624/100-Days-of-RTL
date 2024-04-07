`timescale 1ns / 1ps

module bs_behav_tb;
reg [7:0]a;
reg [2:0]s;
wire [7:0]y;
integer i;
bs_behav DUT(a,s,y);
initial begin
$monitor("input:%b shift:%d output:%b",a,s,y);
end
initial begin
for (i=0; i<8; i=i+1) begin
a = 8'b00001111; s=i; #10;
end
$finish;
end
endmodule
