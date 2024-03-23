`timescale 1ns / 1ps

module decoder_3x8_tb;

//variable declaration
reg [2:0]a;
reg en;
wire [7:0]y;

//instantiation
decoder_3x8 DUT(a,en,y);

//intialization and test vectors
initial
begin
en=1;a=3'b000;
#10 en=1;a=3'b001;
#10 en=1;a=3'b010;
#10 en=1;a=3'b011;
#10 en=1;a=3'b100;
#10 en=1;a=3'b101;
#10 en=1;a=3'b110;
#10 en=1;a=3'b111;
#10 $finish;
end
endmodule