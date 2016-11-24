module DFF(Q,D,Clk);
output Q;
input D,Clk;
reg Q; //required in sequential circuits
always @(posedge Clk) //this is a postive clock edge; for negative
	Q <= D;
endmodule