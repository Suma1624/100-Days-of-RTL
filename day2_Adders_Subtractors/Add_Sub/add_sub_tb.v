`timescale 1ns / 1ps

module add_sub_tb;
reg [3:0]a,b;
reg en;
wire [3:0]s;
wire cout;
add_sub DUT(a,b,en,s,cout);
initial
begin
a=4'b1010; b=4'b0101; 
en=1'b0;
#20 $display("a=%b b=%b sum=%b, carry=%b",a,b,s,cout);
en=1'b1;
#10 $display("a=%b b=%b diff=%b, borrow=%b",a,b,s,cout);
#10 $finish;
end 
endmodule