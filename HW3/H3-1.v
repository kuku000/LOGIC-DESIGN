module And(a,b,f);
input a,b;
output f;
wire w;

nand(w,a,b);
nand(f,w,w);

endmodule
