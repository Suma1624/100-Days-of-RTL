`timescale 1ns / 1ps

module add_n_tb;
reg [15:0]a,b;
wire [15:0]s;
wire cout;
add_n DUT(a,b,s,cout);
initial
begin
a=16'h2040; b=16'h0803;
#10 a=16'h2345; b=16'h5432;
#10 a=16'haaaa; b=16'h4444;
#10 a=16'ha4b4; b=16'h6666;
#10 $finish;
end
endmodule
