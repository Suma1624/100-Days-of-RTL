`timescale 1ns / 1ps

module cmp_n(a,b,l,g,e);
parameter N=16;
input [N-1:0]a,b;
output l,g,e;
reg l=0,g=0,e=0;
always@(*) begin
if (a<b) begin
l=1'b1; g=1'b0; e=1'b0;
end
else if (a>b) begin
l=1'b0; g=1'b1; e=1'b0;
end
else begin
l=1'b0; g=1'b0; e=1'b1;
end
end
endmodule
