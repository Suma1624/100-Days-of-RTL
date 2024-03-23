`timescale 1ns / 1ps

module encoder_behav_tb;
reg [7:0]y;
wire [2:0]a;
encoder_behav DUT(y,a);
initial
begin
y=8'b00000001; 
#20 y=8'b00000010; 
#20 y=8'b00000100; 
#20 y=8'b00001000; 
#20 y=8'b00010000; 
#20 y=8'b00100000; 
#20 y=8'b01000000; 
#20 y=8'b10000000; 
#20 $finish;
end
endmodule
