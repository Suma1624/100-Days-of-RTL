`timescale 1ns / 1ps

module simple_dpr_tb;

reg clk,wr_en; 
reg [11:0] addr_0,addr_1;  
reg [7:0] data_in;   
wire [7:0] data_out ;

simple_dpr DUT(clk,wr_en,addr_0,addr_1,data_in,data_out);

initial begin
clk=1'b1;
forever #5 clk=~clk;
end

initial begin

wr_en = 1'b1;    //write data
data_in = 8'haa;
addr_0 = 12'd0;      
#10;
    
data_in = 8'hbb;
addr_0 = 12'd1;      
#10;

data_in = 8'hcc;
addr_0 = 12'd2;      
#10;
 
wr_en = 1'b0;       //read operation
data_in = 8'bz;
addr_1 = 12'd0;   
#10;
$display("Read data from address_0: %h", data_out);     
 
addr_1 = 12'd1;
#10;
$display("Read data from address_1: %h", data_out);   

addr_1 = 12'd2;
#10;
$display("Read data from address_1: %h", data_out);   

end

initial begin
$monitor("wr_en: %h  addr_0: %h  addr_1: %h  data_in: %h  data_out: %h", wr_en, addr_0, addr_1, data_in, data_out);
#70 $finish;
end
endmodule

