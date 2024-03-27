`timescale 1ns / 1ps

module sr_latch(S,R,Q,Q_not);
input S,R;
output Q,Q_not;
assign Q = ~(R|Q_not);
assign Q_not = ~(S|Q);
endmodule
