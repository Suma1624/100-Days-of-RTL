`timescale 1ns / 1ps


module true_dpr_tb;
reg clk,wr_en_0,wr_en_1;
reg [7:0]in_0,in_1;
reg [11:0]addr_0,addr_1;
wire [7:0]out_0,out_1;

true_dpr DUT(clk,wr_en_0,wr_en_1,in_0,in_1,addr_0,addr_1,out_0,out_1);
 
initial begin
clk= 1'b1;
forever #5 clk = ~clk;
end

initial begin

clk = 1;
wr_en_0 = 0;
wr_en_1 = 0;
in_0 = 0;
in_1 = 0;
addr_0 = 0;
addr_1 = 0;
#5;

// Write to address 0 and 1
addr_0 = 12'h001;
in_0 = 8'haa;
wr_en_0 = 1;
#10;
wr_en_0 = 0;

addr_1 = 12'h002;
in_1 = 8'hbb;
wr_en_1 = 1;
#10;
wr_en_1 = 0;

// Read from address 0 and 1
addr_0 = 12'h001;
addr_1 = 12'h002;
#10;

 // Check the output
 $display("Output at addr_0: %h (Expected: aa)", out_0);
 $display("Output at addr_1: %h (Expected: bb)", out_1);

$stop;
end
    
initial begin
$monitor("wr_en_0:%h  wr_en_1:%h  data_in_0:%h  data_in_1:%h  address_0:%h  address_1:%h  data_out_0:%h  data_out_1:%h", wr_en_0,wr_en_1,in_0,in_1,addr_0,addr_1,out_0,out_1);
#80 $finish;
end

endmodule
