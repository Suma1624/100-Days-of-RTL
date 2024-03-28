`timescale 1ns / 1ps

module jkff_1(J, K, clk, Q);
input J,K,clk;
output reg Q;

always@(posedge clk)
begin
if (clk) begin
case({J,K})
2'b00: Q <= Q;
2'b01: Q <= 1'b0;
2'b10: Q <= 1'b1;
2'b11: Q <= ~Q;
endcase
end
else Q <= 1'b0; 
end
endmodule
