`timescale 1ns / 1ps

module encoder_behav(y,a);
input[7:0]y;
output reg[2:0]a;
always@(y)
begin
if(y[7]==1)
a=3'b111;
else if(y[6]==1)
a=3'b110;
else if(y[5]==1)
a=3'b101;
else if(y[4]==1)
a=3'b100;
else if(y[3]==1)
a=3'b011;
else if(y[2]==1)
a=3'b010;
else if(y[1]==1)
a=3'b001;
else 
a=3'b000;
end
endmodule
