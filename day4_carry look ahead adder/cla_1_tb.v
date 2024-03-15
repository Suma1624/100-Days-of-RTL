`timescale 1ns / 1ps

module cla_1_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;
cla_1 DUT(a,b,cin,s,cout);
initial
begin
a=4'b0010; b=4'b0100; cin=1'b0;
#10 a=4'b0110; b=4'b0101; cin=1'b0;
#10 a=4'b1010; b=4'b0110; cin=1'b0;
#10 a=4'b1110; b=4'b1101; cin=1'b0;
#10 a=4'b0100; b=4'b1100; cin=1'b0;
#10 a=4'b0011; b=4'b1100; cin=1'b0;
#10 a=4'b1110; b=4'b1111; cin=1'b0;
#10 a=4'b0110; b=4'b0101; cin=1'b1;
#10 a=4'b1010; b=4'b0110; cin=1'b1;
#10 a=4'b1110; b=4'b1101; cin=1'b1;
#10 $finish;
end
endmodule
