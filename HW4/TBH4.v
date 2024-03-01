`timescale 1ns/1ns

module tb4;

reg a,b,d,e,c;

wire f;


SOP t1(.a(a), .b(b), .d(d), .e(e),.f(f),.c(c));
 
initial begin
 a=1'b0;
 b=1'b0;
 d=1'b0;
 e=1'b0;
 c=1'b0;
#10 b=1'b1; //0100
#10 d=1'b1; //0110
#10 e=1'b1; //0111
#10 a=1'b1; //1111
#10 e=1'b0; //1110
#10 d=1'b0; //1100
#10 e=1'b1; //1101



end

endmodule
