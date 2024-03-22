`timescale 1ns / 1ps

module parity_checker_tb;
reg [7:0]d;
reg p;
wire e;
parity_checker DUT(d,p,e);
initial
begin
d=8'b10110010; p=1'b1;
#10 d=8'b11001000; p=1'b1;
#10 d=8'b11111011; p=1'b1;
#10 d=8'b10111110; p=1'b0;
#10 d=8'b00101010; p=1'b1;
#10 d=8'b01110101; p=1'b0;
#10 d=8'b01010011; p=1'b1;
#10 $finish;
end
endmodule
