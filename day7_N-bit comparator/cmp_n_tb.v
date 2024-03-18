`timescale 1ns / 1ps

module cmp_n_tb;
reg [15:0]a,b;
wire l,g,e;
cmp_n DUT(a,b,l,g,e);
initial
begin
$monitor("If a=%0d b=%0d --> lesser=%0d greater=%0d equal=%0d", a,b,l,g,e);
end
initial
begin
a=12; b=10;
#10 a=44; b=84;
#10 a=964; b=564;
#10 a=1111; b=1111;
#10 a=4884; b=8448;
#10 a=21212; b=12121;
#10 $finish;
end
endmodule
