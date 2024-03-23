`timescale 1ns / 1ps

module decoder_behav(a,y);
input [2:0]a;
output reg [7:0]y;
always@(*)
begin
y=0;
case(a)	
3'b000 : y[0] = 1'b1;
3'b001 : y[1] = 1'b1;
3'b010 : y[2] = 1'b1;
3'b011 : y[3] = 1'b1;
3'b100 : y[4] = 1'b1;
3'b101 : y[5] = 1'b1;
3'b110 : y[6] = 1'b1;
3'b111 : y[7] = 1'b1;
default: y = 0;
endcase
end
endmodule
