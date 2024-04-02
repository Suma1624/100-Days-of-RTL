`timescale 1ns / 1ps

module jc_1(clk,rst,cnt);
input clk,rst;
output reg [3:0]cnt;

always@(posedge clk)
begin
if (rst) 
cnt <= 0;
else
cnt <= {~cnt[0],cnt[3:1]};
end
endmodule