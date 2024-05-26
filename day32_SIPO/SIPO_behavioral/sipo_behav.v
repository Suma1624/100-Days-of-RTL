`timescale 1ns / 1ps

module sipo_behav(clk,rst,s_in,p_out);
input clk,rst,s_in;
output reg [3:0]p_out;

always@(posedge clk) begin
if (rst) begin
p_out <= 1'b0;
end
else begin
p_out[3]<= s_in;
p_out[2]<= p_out[3];
p_out[1]<= p_out[2];
p_out[0]<= p_out[1];
end
end
endmodule