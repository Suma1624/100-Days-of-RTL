`timescale 1ns / 1ps

module rca_4_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;
rca_4 DUT(a,b,cin,s,cout);
initial
begin
a=4'b1010; b=4'b1100; cin=1'b0;
#10 a=4'b1110; b=4'b1101; cin=1'b0;
#10 a=4'b1011; b=4'b1000; cin=1'b0;
#10 a=4'b1000; b=4'b1111; cin=1'b0;
#10 $finish;
end
endmodule
