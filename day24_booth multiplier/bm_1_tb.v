`timescale 1ns / 1ps

module bm_1_tb;
reg signed [3:0] q,m;
wire signed [7:0] R;

bm_1 DUT(q,m,R);

initial begin
q= 3; m= 5; #10;
q= 4; m= -6; #10;
q= -3; m= -7; #10;
q= 8; m= 3; #10;
q= 6; m= -2; #10;
q= -5; m= -6; #10;
end

initial begin
$monitor("%d * %d = %d",q,m,R);
#60 $finish;
end
endmodule
