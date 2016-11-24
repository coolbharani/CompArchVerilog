module DFF1(Q,D,clk,rst);
output Q;
input D,clk, rst;
reg Q; 
always @(posedge clk or negedge rst)
	if (rst) Q <= 1'b0; //same as if(rst == 0)
		// reset
	else Q=D;
endmodule