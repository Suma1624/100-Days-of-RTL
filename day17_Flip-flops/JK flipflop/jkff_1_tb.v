`timescale 1ns / 1ps

module jkff_1_tb;
reg J,K,clk;
wire Q;
jkff_1 DUT(J,K,clk,Q);

always begin
clk=0;
forever #5 clk=~clk;
end

initial begin
J=1'b0; K=1'b0; #10
$display("J=%b, K=%b ==> Q=%b #Same state ", J, K, Q);
J=1'b0; K=1'b1; #10
$display("J=%b, K=%b ==> Q=%b#Reset", J, K, Q);
J=1'b1; K=1'b0; #10
$display("J=%b, K=%b ==> Q=%b #Set", J, K, Q);
J=1'b1; K=1'b1; #10
$display("J=%b, K=%b ==> Q=%b #Toggle", J, K, Q);
$finish;
end
endmodule
