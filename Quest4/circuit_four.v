module Half_Add(X,Y,S,C);
output S,C;
input X,Y;

xor(S,X,Y);
and(C,X,Y);
endmodule

module Full_Add(X,Y,Z,S,C);
output S,C;
input X,Y,Z;
wire D1,D2,D3;

Half_Add H1(X,Y,D3,D1);
Half_Add H2(D3,Z,S,D2);
or(C,D1,D2);

endmodule