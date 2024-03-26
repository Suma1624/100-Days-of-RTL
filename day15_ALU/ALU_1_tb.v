`timescale 1ns / 1ps

module ALU_1_tb;
 reg [7:0] A;
 reg [7:0] B;
 reg [3:0] Op;
 wire [7:0] R;
 wire e;
 
 ALU_1 DUT(A, B, Op, e, R);

 initial 
 begin
 $monitor("\t Result= %b \n",R);
 end

 initial 
 begin
 A = 225;
 B = 200;
 $display(" Inputs are: %b and %b \n", A,B);
 Op = 0; #10;
 Op = 1; #10;
 Op = 2; #10;
 Op = 3; #10;
 Op = 4; #10;
 Op = 5; #10;
 Op = 6; #10;
 Op = 7; #10;
 Op = 8; #10;
 Op = 9; #10;
 Op = 10; #10;
 Op = 11; #10;
 Op = 12; #10;
 Op = 13; #10;
 Op = 14; #10;
 Op = 15;
 #10 $finish;
 end
 endmodule
   
 
