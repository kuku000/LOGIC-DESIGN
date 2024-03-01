`timescale 1ns/1ns

module H5TB;
reg a,b,c;
wire f;

POS t1(a,b,c,f);

initial begin

a=1'b0; b=1'b0; c=1'b0;

#10 a=1'b0; b=1'b0; c=1'b1;
#10 a=1'b0; b=1'b1; c=1'b0;
#10 a=1'b0; b=1'b1; c=1'b1;
#10 a=1'b1; b=1'b0; c=1'b0;
#10 a=1'b1; b=1'b0; c=1'b1;
#10 a=1'b1; b=1'b1; c=1'b0;
#10 a=1'b1; b=1'b1; c=1'b1;
end
endmodule