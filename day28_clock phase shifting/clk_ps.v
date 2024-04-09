`timescale 1ns / 1ps

module clk_ps(rst,clk,clk_0,clk_90,clk_180,clk_270);
input rst,clk;
output clk_0,clk_90,clk_180,clk_270;
reg div_2;
reg [1:0]count;

always@(posedge clk or posedge rst)
begin
if (rst)
count <= 0;
else 
count <= {~count[0],count[1]};
end

always@(posedge clk or posedge rst)
begin
if (rst)
div_2 <= 0;
else
div_2 <= ~div_2;
end

assign clk_0 = count[1];
assign clk_90 = count[1]^div_2;
assign clk_180 = ~clk_0;
assign clk_270 = ~clk_90;
endmodule
