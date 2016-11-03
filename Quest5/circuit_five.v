module Mux(I0,I1,S,Y);
output Y;
input I0, I1, S;
wire w1,w2,w3;

not(w3,S);
and(w1,I0,S);
and(w2,I1,w3);
or(Y,w1,w2);
endmodule
