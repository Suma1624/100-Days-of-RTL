`timescale 1ns / 1ps

module fa_ha(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire [0:2]p;
ha_1 u0(a,b,p[0],p[1]);
ha_1 u1(p[0],cin,s,p[2]);
or_1 u2(p[1],p[2],cout);
endmodule
