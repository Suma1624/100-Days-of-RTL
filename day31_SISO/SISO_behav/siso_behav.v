`timescale 1ns / 1ps

module siso_behav(clk,rst,s_in,s_out);
input clk,rst,s_in;
output reg s_out;
reg [2:0]q;
always@(posedge clk) begin
if (rst) begin
s_out=0;
end
else begin
q[0] <= s_in;
q[1] <= q[0];
q[2] <= q[1];
s_out <= q[2];
end
end
endmodule
