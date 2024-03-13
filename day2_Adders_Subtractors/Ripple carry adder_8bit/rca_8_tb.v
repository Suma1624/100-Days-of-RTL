`timescale 1ns / 1ps

module rca_8_tb;
reg [7:0]a,b;
reg cin;
wire [7:0]s;
wire cout;
rca_8 UUT(a,b,cin,s,cout);
initial
begin
a=8'b10011100; b=8'b01100010; cin=1'b0;
#10 a=8'b11001010; b=8'b10110011; cin=1'b0;
#10 a=8'b00101001; b=8'b01010101; cin=1'b0;
#10 $finish;
end
endmodule