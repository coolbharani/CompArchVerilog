module Circuit_Three(A,B,C,F1,F2);
output F1,F2;
input A,B,C;
wire T1, T2, T3, L, E1, E2, E3;

and(T2,A,B,C);
or(T1,A,B,C);
and(E1,A,B);
and(E2,A,C);
and(E3,B,C);
or(F2,E1,E2,E3);
not(L,F2);
and(T3,L,T1);
or(F1,T2,T3);

endmodule