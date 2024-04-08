`timescale 1ns / 1ps

module mg_3_tb;
reg [2:0]a;
wire y;
mg_3 DUT(a,y);
initial begin
$monitor("%b is the majority input of %b",y,a);
end 
initial begin
a=3'b000; #10;
a=3'b001; #10;
a=3'b010; #10;
a=3'b011; #10;
a=3'b100; #10;
a=3'b101; #10;
a=3'b110; #10;
a=3'b111; #10;
$finish;
end
endmodule
