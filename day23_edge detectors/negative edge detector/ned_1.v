`timescale 1ns / 1ps

module ned_1(clk,d,det);
input clk,d;  //clock, data/signal that has to be detected
output det; //detector
reg dff;  //delayed version of signal
always@(posedge clk) begin
dff <= d;
end
assign det = (~d) & (dff);
endmodule

