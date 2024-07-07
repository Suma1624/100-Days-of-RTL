`timescale 1ns / 1ps


module single_port_ram_tb;
reg clk,wr_en; 
reg [11:0] addr;  
reg [7:0] data_in;   
wire [7:0] data_out ;

single_port_ram DUT(clk,addr,data_in,wr_en,data_out);

initial begin
clk=1'b1;
forever #5 clk=~clk;
end

initial begin
data_in = 8'h3f;
addr = 12'd0;      
wr_en = 1'b1;    //write data
#10;
    
data_in = 8'hd4;
addr = 12'd1;      
#10;
    
data_in = 8'hcd;
addr = 12'd2;      
#10;

data_in = 8'hz;  
addr = 12'd0;      
wr_en = 1'b0;       //read operation
#10;
    
addr = 12'd1;     
#10;
    
addr = 12'd2;
#10;
end

initial begin
$monitor("write enable: %b  address: %b  data_in: %b  data_out: %b", wr_en, addr, data_in, data_out);
#60 $finish;
end
endmodule
