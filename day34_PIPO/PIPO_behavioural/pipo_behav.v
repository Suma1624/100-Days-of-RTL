`timescale 1ns / 1ps


module pipo_behav(clk,rst,p_in,p_out);
input [3:0]p_in;
input clk,rst;
output reg [3:0]p_out;

always@(posedge clk) begin
if(rst) begin
p_out =4'b0000;
end
else begin
p_out = p_in;
end
end

endmodule
