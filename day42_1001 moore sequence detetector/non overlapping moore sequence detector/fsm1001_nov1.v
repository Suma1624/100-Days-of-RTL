`timescale 1ns / 1ps

module fsm1001_nov1(clk,rst,in,out);
input clk,rst,in;
output reg out;
parameter S0 = 4'b0000,
S1 = 4'b0001,
S2 = 4'b0010,
S3 = 4'b0011,
S4 = 4'b0100;
reg [3:0]state,nextstate;

always@(posedge clk) begin
if (rst) state <= S0;
else state <= nextstate;
end

always@(state,in) begin
case(state)
S0: begin 
if (in) nextstate <= S1;
else nextstate <= S0;
end
S1: begin
if (in) nextstate <= S1;
else nextstate <= S2;
end
S2: begin
if (in) nextstate <= S1;
else nextstate <= S3;
end
S3: begin
if (in) nextstate <= S4;
else nextstate <= S0;
end
S4: begin
if (in) nextstate <= S1;
else nextstate <= S0;
end
default: nextstate <= S0;
endcase
end

always@(state) begin
case(state)
S0: out <= 0;
S1: out <= 0;
S2: out <= 0;
S3: out <= 0;
S4: out <= 1;
default: out <= 0;
endcase
end

endmodule

