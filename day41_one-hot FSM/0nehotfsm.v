`timescale 1ns / 1ps

module onehotfsm(clk,rst,state,op);
input clk,rst;
output reg [3:0]state;
output reg [1:0]op;
parameter [3:0]idle=4'b0001,
s1=4'b0010,
s2=4'b0100,
s3=4'b1000;
always@(posedge clk) begin
if (rst) begin
state <= idle;
op <=2'b00;
end
else begin
case(state)
idle: begin op <= 00; state <= s1; end
s1: begin op <= 01; state <= s2; end
s2: begin op <= 10; state <= s3; end
s3: begin op <= 11; state <= idle; end
default: state <= idle;
endcase
end
end
endmodule
