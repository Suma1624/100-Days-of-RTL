`timescale 1ns / 1ps

module add_n_tb;
reg [7:0]a,b;
wire [7:0]s;
wire cout;
add_n DUT(a,b,s,cout);
initial
begin
a=8'h40; b=8'h03;
#10 a=8'h45; b=8'h32;
#10 a=8'haa; b=8'h44;
#10 a=8'ha4; b=8'h66;
#10 $finish;
end
endmodule
