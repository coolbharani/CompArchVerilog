module Simple_Circuit_Two(X,Y,S,C);
output S,C;
input X,Y;

xor(S,X,Y);
and(C,X,Y);
endmodule