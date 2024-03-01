//林耕澤_E94084032

module FA(a,b,cin,sum,cout);//FULL_ADDER

input a,b,cin;
output sum,cout;

assign sum=a^b^cin;
assign cout=a&b|a&cin|b&cin;

endmodule

module subBCD(A,B,k,Cout);
input [3:0] A,B;        //input
input k;
output [8:0] Cout;      //result
reg [8:0] Cout;
wire [3:0] S,C,D;
wire OV;                //overflow
integer i;
integer j=10;

assign D[0]=B[0]^k;   //check +or-
assign D[1]=B[1]^k;
assign D[2]=B[2]^k;
assign D[3]=B[3]^k;
assign OV=C[2]^C[3];  //check overflow or not

FA F1(A[0],D[0],k,S[0],C[0]);   //call one bit fulladder
FA F2(A[1],D[1],C[0],S[1],C[1]);
FA F3(A[2],D[2],C[1],S[2],C[2]);
FA F4(A[3],D[3],C[2],S[3],C[3]);

always@(*) begin     

  if(OV==1)begin
       i=(-16)*C[3]+8*S[3]+4*S[2]+2*S[1]+1*S[0]; //binary to normal 
    if(i<0)begin
          i=-i;
          Cout[8]=1;      //-
          Cout[7:4]=i/j;  //Tens of Dec
          Cout[3:0]=i%j;  //Digits of dec
     end
    else begin
          Cout[8]=0;      //+
          Cout[7:4]=i/j;  //Tens of Dec
          Cout[3:0]=i%j;  //Digits of dec  
     end
end
    else begin
       i=(-8)*S[3]+4*S[2]+2*S[1]+1*S[0];//binary to normal  
     if(i<0) begin
       i=-i;
       Cout[8]=1;             //-
       Cout[7:4]=i/j;         //Tens of Dec
       Cout[3:0]=i%j;         //Digits of dec
     end
    else begin       
       Cout[8]=0;             //+
       Cout[7:4]=i/j;         //Tens of Dec
       Cout[3:0]=i%j;         //Digits of dec
     end
end
end
endmodule

          





