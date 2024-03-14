`timescale 1ns / 1ps

module add_n(a,b,s,cout);
parameter n=16;
input [n-1:0]a,b;
output [n-1:0]s;
output cout;
wire [n-1:0]c;
genvar i;
generate
for(i=0;i<n;i=i+1)
begin
if (i==0)
ha_1 u0(a[0],b[0],s[0],c[0]);
else
fa_1 u1(a[i],b[i],c[i-1],s[i],c[i]);
end
assign cout=c[n-1];
endgenerate
endmodule
