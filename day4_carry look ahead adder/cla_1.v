`timescale 1ns / 1ps

module cla_1(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output reg [3:0]s;
output reg cout;
reg [4:0]c;
reg [3:0]g,p;
integer i;
always@(*) 
begin
c[0]=cin;
for (i=0; i<4; i=i+1)
begin
g[i] = a[i]&b[i];
p[i] = a[i]^b[i];
s[i] = p[i]^c[i];
c[i+1] = g[i]|p[i]&c[i];
end
cout=c[4];
end
endmodule
