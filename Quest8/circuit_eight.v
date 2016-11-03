module decoder_2x4_df
( D,A,B,enable
);
output [0:3] D;
input A,B,enable;
// assign D[0] = ~(~A & ~B & ~enable),
// 	   D[1] = ~(~A & B & ~enable),
// 	   D[2] = ~(A & ~B & ~enable),
// 	   D[3] = ~(A & B & ~enable);

assign {D[0], D[1], D[2], D[3]} = { ~(~A & ~B & ~enable),
	   								 ~(~A & B & ~enable),
	   								 ~(A & ~B & ~enable),
	   								 ~(A & B & ~enable)};  //Equivalent to the above assign
endmodule