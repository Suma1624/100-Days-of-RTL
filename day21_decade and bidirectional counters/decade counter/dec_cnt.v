`timescale 1ns / 1ps


module dec_cnt(clk,rst,cnt);
input clk,rst;
output reg [3:0]cnt;
always@(posedge clk)
begin
if (rst)
cnt <= 4'd0;
else if (cnt >= 4'd0 && cnt < 4'd9)
cnt <= cnt + 4'd1;
else
cnt <= 4'd0;
end
endmodule
