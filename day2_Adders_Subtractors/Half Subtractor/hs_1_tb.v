`timescale 1ns / 1ps

module hs_1_tb;
reg a,bin;
wire d,bout;
hs_1 DUT(a,bin,d,bout);
initial
begin
a=1'b0; bin=1'b0;
#10 a=1'b0; bin=1'b1;
#10 a=1'b1; bin=1'b0;
#10 a=1'b1; bin=1'b1;
#10 $finish;
end
endmodule