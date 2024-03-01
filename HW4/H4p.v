module SOP(a,b,d,e,c,f);
input a,b,d,e,c;
output f;
assign f=a|(b&~d)|e;

endmodule
