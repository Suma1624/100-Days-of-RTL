`timescale 1ns / 1ps

module prior_encoder_8x3_tb;
reg [7:0]y;
wire [2:0]a;
prior_encoder_8x3 DUT(y,a);
always
begin
y= $random;
#10;
end

endmodule
