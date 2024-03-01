
module Xor(a,b,f);
input a,b;
output f;
wire [3:0]w;

nand(w[0],a,a);
nand(w[1],b,b);
nand(w[2],w[0],b);

nand(w[3],w[1],a);
nand(f,w[2],w[3]);

endmodule