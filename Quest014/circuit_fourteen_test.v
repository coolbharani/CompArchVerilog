module Test_CircuitFourteen;
reg T, clk, rst;
wire q;
//integer i;
TFF TFF_inst(T,clk,rst,q);

initial
begin
	T=1'b0;clk=1'b1;rst=1'b0;
	#20
	T=1'b0;clk=~clk;rst=1'b1;
	#20
	T=1'b1;clk=~clk;rst=1'b0;
	#20
	T=1'b0;clk=~clk;rst=1'b1;
	#20
	T=1'b1;clk=~clk;rst=1'b0;
	#20
	T=1'b1;clk=~clk;rst=1'b1;
end
endmodule