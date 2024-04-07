`timescale 1ns / 1ps

module bs_behav(a,s,y);
input [7:0]a;
input [2:0]s;
output reg [7:0]y;
always@(*)
begin
case(s)
0: y = a;
1: y = {a[0],a[7:1]};
2: y = {a[1:0],a[7:2]};
3: y = {a[2:0],a[7:3]};
4: y = {a[3:0],a[7:4]};
5: y = {a[4:0],a[7:5]};
6: y = {a[5:0],a[7:6]};
7: y = {a[6:0],a[7]};
endcase
end
endmodule
