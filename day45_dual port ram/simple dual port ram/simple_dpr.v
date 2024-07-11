`timescale 1ns / 1ps

module simple_dpr(clk,wr_en,addr_0,addr_1,data_in,data_out);
input clk,wr_en;
input [11:0]addr_0,addr_1;
input [7:0]data_in;
output reg [7:0]data_out;

reg [7:0] ram [4095:0];

always@(posedge clk) begin //Write
if (wr_en)
ram[addr_0] <= data_in;
end

always@(posedge clk) begin //Read
data_out <= ram[addr_1];
end

endmodule