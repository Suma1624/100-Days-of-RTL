`timescale 1ns / 1ps

module gated_sr(S,R,clk,Q,Q_not);
input S,R,clk;
output reg Q,Q_not;

always@(*)
begin
Q_not = ~Q;
if (clk) begin
case ({S,R})
2'b00 : Q <= Q;
2'b01 : Q <= 1'b0;
2'b10 : Q <= 1'b1;
2'b11 : Q <= 1'bx; 
endcase
end
else Q <= 1'b0;   
end
endmodule