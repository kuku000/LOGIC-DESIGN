`timescale 1ns / 1ns



module tb_MUX();
reg niceplay;
reg clk;
reg rst; 
wire climax;
wire [7:0] count;
wire [2:0] contents;

 Dff dut(clk,niceplay,rst,climax,count,contents );

initial begin

  clk=0;

     forever #10 clk = ~clk;  
end 

initial begin 

 rst=1;

 niceplay <= 0;
 
 #10;

 rst=0;

 niceplay <= 1;

 #10;

 niceplay <= 0;

 #10;

 niceplay <= 1;
 
 #100;

 niceplay <= 0;

end 

endmodule 