`timescale 1ns / 1ps


module udc_1(clk, rst, c, Q);
    //clk->clock, rst->reset, c->up or down counter, 
    //Q->output count 
input clk,rst,c;
output reg [3:0] Q;

initial Q<=0;
always @(posedge clk)
begin
case({rst,c})
2'b10: Q<=0;
2'b11: Q<=0;
2'b00: Q<=Q+1;
2'b01: Q<=Q-1;
endcase
end 
endmodule
