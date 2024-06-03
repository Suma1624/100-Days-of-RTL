`timescale 1ns / 1ps

module lfsr_8(clk,rst,op);
input clk, rst;
output [7:0]op;
reg [7:0] data;
always @(posedge clk) begin
if (rst)
data <= 8'hff; 
else
data <= {data[6:0], data[7] ^ data[5] ^ data[3] ^ data[1]};
end
assign op = data;

endmodule