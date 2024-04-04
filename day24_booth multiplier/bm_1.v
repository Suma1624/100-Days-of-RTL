`timescale 1ns / 1ps

module bm_1(q,m,R);
input signed [3:0]q,m;
output reg signed [7:0]R;
reg [1:0]op;
reg q0;
reg [3:0]m_comp;
integer i;

always@(q,m) begin
R=8'b0;
q0=1'b0;
m_comp=-m;

for(i=0; i<4; i=i+1)
begin
op = {q[i],q0};
case(op)
2'b10: R[7:4]=R[7:4] + m_comp;
2'b01: R[7:4]=R[7:4] + m;
endcase
R = R>>1;
R[7] = R[6];
q0 = q[i];
end
end
endmodule

