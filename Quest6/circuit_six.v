module Mux(A,B,select,out);
input A,B,select;
output out;
assign out = select ?A:B; //assign out = (A&S)|(B&~S)
endmodule
