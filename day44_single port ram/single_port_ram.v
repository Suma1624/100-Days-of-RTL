`timescale 1ns / 1ps

module single_port_ram(clk,addr,data_in,wr_en,data_out);
input clk,wr_en; 
input [11:0] addr;  
input [7:0] data_in;   
output reg [7:0] data_out ;

reg [7:0] ram [4095:0]; 

always @(posedge clk) begin
if(wr_en)  
ram[addr] <= data_in;
else  
data_out <= ram[addr];
end

endmodule