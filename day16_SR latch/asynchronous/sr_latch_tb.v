`timescale 1ns / 1ps

module sr_latch_tb;
reg S,R;
wire Q,Q_not;
sr_latch DUT(S,R,Q,Q_not);
initial begin
S=1'b0; R=1'b0; #10
$display("S=%b, R=%b ==> Q=%b, Q_not=%b #Undefined", S, R, Q, Q_not);
S=1'b0; R=1'b1; #10
$display("S=%b, R=%b ==> Q=%b, Q_not=%b #Reset", S, R, Q, Q_not);
S=1'b1; R=1'b0; #10
$display("S=%b, R=%b ==> Q=%b, Q_not=%b #Set", S, R, Q, Q_not);
S=1'b0; R=1'b0; #10
$display("S=%b, R=%b ==> Q=%b, Q_not=%b #Same as present state", S, R, Q, Q_not);
S=1'b1; R=1'b1; #10
$display("S=%b, R=%b ==> Q=%b, Q_not=%b #Invalid state", S, R, Q, Q_not);
$finish;
end
endmodule
