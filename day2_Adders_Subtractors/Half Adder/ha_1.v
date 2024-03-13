`timescale 1ns / 1ps

module ha_1(a,b,s,c);
input a,b;
output s,c;
assign s=a^b;
assign c=a&b;
endmodule
