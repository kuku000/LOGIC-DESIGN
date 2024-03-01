//Lin-Keng-Tse_E94084032
module POS (a,b,c,f);

input a,b,c;
output f;

assign f=(~a|c)&(a|b|~c);

endmodule