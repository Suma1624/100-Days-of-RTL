`timescale 1ns / 1ps

module parity_generator_tb;
reg [7:0]d;
wire ep,op;
parity_generator DUT(d,ep,op);
initial
begin
 d=8'b10110010;
#10 d=8'b11001000;
#10 d=8'b11111011;
#10 d=8'b10111110;
#10 d=8'b00101010;
#10 d=8'b01110101;
#10 d=8'b01010011;
#10 $finish;
end
endmodule
