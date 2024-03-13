`timescale 1ns / 1ps


module fs_1(a,b,bin,d,bout);
input a,b,bin;
output d,bout;
assign x=a^b;
assign d=bin^x;
assign n1=~a;
assign y=b&n1;
assign n2=~x;
assign z=bin&n2;
assign bout=y|z;
endmodule