`timescale 1ns / 1ps

module ksa_1_tb;
reg [7:0]a,b;
reg cin;
wire [7:0]sum;
wire cout;
ksa_1 UUT(a,b,cin,sum,cout);
initial begin
$monitor("a:%b b:%b sum:%b Carry:%b",a,b,sum,cout);
end
initial 
begin
a=8'b10101000; b=8'b01110101; cin=1'b0;
#10 a=8'b10111001; b=8'b11110111; cin=1'b0;
#10 a=8'b10101101; b=8'b00100101; cin=1'b0;
#10 a=8'b10000000; b=8'b11000100; cin=1'b0;
#10 a=8'b10111111; b=8'b00101110; cin=1'b0;
#10 $finish;
end
endmodule