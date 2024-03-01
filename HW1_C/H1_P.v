//lin-keng-tse_E94084032
module fulladder(a,b,cin,sum,cout);//fulladder

input a,b,cin;
output sum,cout;

assign sum=a^b^cin;  
assign cout=a&b|a&cin|b&cin;

endmodule 

 module sub_fulladder(A,B,Cin,S,Cout);

input [3:0] A,B;//input
input Cin;      //+-
output [3:0] S; //result
output Cout;
wire [2:0] w;   //connect between two fulladders
wire [3:0] d;   
assign d[0]=Cin^B[0];//determine 2'complement is needed or not
assign d[1]=Cin^B[1];
assign d[2]=Cin^B[2];
assign d[3]=Cin^B[3];
fulladder f1(A[0],d[0],Cin,S[0],w[0]);//call fulladder
fulladder f2(A[1],d[1],w[0],S[1],w[1]);
fulladder f3(A[2],d[2],w[1],S[2],w[2]);
fulladder f4(A[3],d[3],w[2],S[3],Cout);



endmodule