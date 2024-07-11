`timescale 1ns / 1ps

module true_dpr(clk,wr_en_0,wr_en_1,in_0,in_1,addr_0,addr_1,out_0,out_1);
input clk,wr_en_0,wr_en_1;
input [7:0]in_0,in_1;
input [11:0]addr_0,addr_1;
output reg [7:0]out_0,out_1;

reg [7:0] ram [4095:0];

always@(posedge clk) begin
if (wr_en_0)
ram[addr_0] <= in_0;
else
out_0 <= ram[addr_0];
end

always@(posedge clk) begin
if (wr_en_1)
ram[addr_1] <= in_1;
else
out_1 <= ram[addr_1];
end
endmodule
