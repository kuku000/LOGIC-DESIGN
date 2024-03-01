`timescale 1ns/1ns

module Xor_TB;
reg a,b;
wire f;

Xor TB_XOR(a,b,f);
initial begin
a=1'b0; b=1'b0;
#10 a=1'b0; b=1'b1;
#10 a=1'b1; b=1'b0;
#10 a=1'b1; b=1'b1;
 #10 $finish;
end
endmodule