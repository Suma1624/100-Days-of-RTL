`timescale 1ns / 1ps

module fsm1001_nov2(clk,rst,in,out);
input clk,rst,in;
output out;
parameter S0 = 4'b0000,
S1 = 4'b0001,
S2 = 4'b0010,
S3 = 4'b0011;
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
if (in) nextstate <= S0;
else nextstate <= S0;
end
default: nextstate <= S0;
endcase
end

assign out = (state == S3) && (in == 0)?1:0;

endmodule
