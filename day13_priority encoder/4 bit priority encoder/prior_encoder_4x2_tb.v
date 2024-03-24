`timescale 1ns / 1ps

module prior_encoder_4x2_tb;
reg [3:0]y;
wire [1:0]a;
prior_encoder_4x2 DUT(y,a);
always
begin
y= $random;
#10;
end

endmodule
