`timescale 1ns / 1ps

module fa_1(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
assign s=a^b^cin;
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule
