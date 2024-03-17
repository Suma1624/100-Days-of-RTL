`timescale 1ns / 1ps

module cse_1_tb;
reg [7:0]a,b;
reg cin;
wire [7:0]s;
wire cout;
cse_1 DUT(a,b,cin,s,cout);
initial
begin
a=8'b01101101; b=8'b10010010; cin=1'b0;
#10 a=8'b10011100; b=8'b11101010; cin=1'b0;
#10 a=8'b11001010; b=8'b00110011; cin=1'b0;
#10 a=8'b10101001; b=8'b11010101; cin=1'b0;
#10 $finish;
end
endmodule
