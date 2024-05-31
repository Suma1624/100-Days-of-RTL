`timescale 1ns / 1ps

module bcd2seg(bcd,seg_7);
input [3:0]bcd; 
output [6:0]seg_7;
wire a,b,c,d,e,f,g;

assign a = bcd[3]|bcd[1]|(bcd[2]~^bcd[0]);
assign b = (~bcd[2])|(bcd[1]~^bcd[0]);
assign c = bcd[2]|(~bcd[1])|(bcd[0]);    
assign d = bcd[3]|((~bcd[2])&(~bcd[0]))|((~bcd[2])&bcd[1])|(bcd[1]&(~bcd[0]))|(bcd[2]&(~bcd[1])&bcd[0]);
assign e = ~bcd[0]&(~bcd[2]|bcd[1]);
assign f = bcd[3]|(bcd[2]&(~bcd[1]|~bcd[0]))|((~bcd[1])&(~bcd[0]));
assign g = bcd[3]|(bcd[2]&(~bcd[1]))|(bcd[1]&(~bcd[2]|~bcd[0]));
assign seg_7= {a,b,c,d,e,f,g};

endmodule