`timescale 1ns / 1ps

module prior_encoder_4x2(y,a);
input[3:0]y;
output reg[1:0]a;
always@(*)
begin
if(y[3]==1)
a=3'b011;
else if(y[2]==1)
a=3'b010;
else if(y[1]==1)
a=3'b001;
else 
a=3'b000;
end
endmodule
