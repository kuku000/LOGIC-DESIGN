`timescale 1ns/1ns;

module And_TB;

wire f;
reg a,b;

And TB_AND(a,b,f);

initial begin
a=1'b0; b=1'b0; 
#10 a=1'b0; b=1'b1; 
#10 a=1'b1; b=1'b0; 
#10 a=1'b1; b=1'b1; 
end
endmodule