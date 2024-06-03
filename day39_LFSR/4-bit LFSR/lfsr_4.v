`timescale 1ns / 1ps


module lfsr_4(clk,rst,op);
input clk, rst;
output [3:0]op;
reg [3:0] data;
always @(posedge clk) begin
if (rst)
data <= 4'hf; 
else
data <= {data[2:0],(data[3]^data[2])};
end
assign op = data;

endmodule
