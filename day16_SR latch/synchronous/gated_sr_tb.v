`timescale 1ns / 1ps

module gated_sr_tb;
reg S,R,clk;
wire Q,Q_not;
gated_sr DUT(S,R,clk,Q,Q_not);

always begin
clk=0;
forever #5 clk=~clk;
end

initial begin
S=1'b0; R=1'b0; #10
$display("S=%b, R=%b ==> Q=%b, Q_not=%b #Same State", S, R, Q, Q_not);
S=1'b0; R=1'b1; #10
$display("S=%b, R=%b ==> Q=%b, Q_not=%b #Reset", S, R, Q, Q_not);
S=1'b1; R=1'b0; #10
$display("S=%b, R=%b ==> Q=%b, Q_not=%b #Set", S, R, Q, Q_not);
S=1'b1; R=1'b1; #10
$display("S=%b, R=%b ==> Q=%b, Q_not=%b #Invalid state", S, R, Q, Q_not);
$finish;
end
endmodule