`timescale 1ns / 1ps

module fs_1_tb;
reg a,b,bin;
wire d,bout;
fs_1 DUT(a,b,bin,d,bout);
initial
begin
a=1'b0; b=1'b0; bin=1'b0;
#10 a=1'b0; b=1'b0; bin=1'b1;
#10 a=1'b0; b=1'b1; bin=1'b0;
#10 a=1'b0; b=1'b1; bin=1'b1;
#10 a=1'b1; b=1'b0; bin=1'b0;
#10 a=1'b1; b=1'b0; bin=1'b1;
#10 a=1'b1; b=1'b1; bin=1'b0;
#10 a=1'b1; b=1'b1; bin=1'b1;
#10 $finish;
end
endmodule
