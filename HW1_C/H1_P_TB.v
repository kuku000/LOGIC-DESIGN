`timescale 1ns/1ns

module H1_TB;

reg Cin;//+-
reg [3:0] A,B;//input
wire [3:0] S;//result
wire Cout;   //cout

 sub_fulladder f1 (A,B,Cin,S,Cout);

initial begin 

A=4'b0000; B=4'b0000; Cin=1'b0;
#10 A=4'b0000; B=4'b0001; Cin=1'b0;//0+1
#10 A=4'b0111; B=4'b0000; Cin=1'b0;//7+0
#10 A=4'b0001; B=4'b0001; Cin=1'b0;//1+1
#10 A=4'b1111; B=4'b0111; Cin=1'b1;//-8-7
#10 A=4'b0010; B=4'b0001; Cin=1'b1;//2-1
#10 A=4'b0010; B=4'b0010; Cin=1'b1;//2-2
#10 A=4'b0111; B=4'b0001; Cin=1'b0;//7+1
#10 A=4'b0011; B=4'b0001; Cin=1'b0;//3+1
#10 A=4'b1111; B=4'b0001; Cin=1'b0;//-1+1
#10 $finish;
end
endmodule