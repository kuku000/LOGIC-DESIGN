module fulladder(a,b,cin,cout,sum);

input a,b,cin;

output sum;

output cout;

assign sum=a^b^cin;

assign cout=a&b
