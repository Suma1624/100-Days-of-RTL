`timescale 1ns / 1ps


module usr_1(clk,rst,right_in,left_in,par_in,sel,out);
input clk,rst,right_in,left_in;
input [7:0]par_in;
input[1:0]sel;
output reg [7:0]out;

always @(posedge clk) begin
if (rst)
out <= 0;
else begin
case(sel)
0: out <= out; //No change
1: out <= {right_in, out[7:1]}; //Right shift
2: out <= {out[6:0], left_in}; //Left shift
3: out <= par_in; //Parallel load
endcase
end
end
endmodule
