`timescale 1ns / 1ps

module ha_1_tb;
reg a,b;
wire s,c;
ha_1 DUT(a,b,s,c);
initial
begin
a=1'b0; b=1'b0;
#10 a=1'b0; b=1'b1;
#10 a=1'b1; b=1'b0;
#10 a=1'b1; b=1'b1;
#10 $finish;
end
endmodule
