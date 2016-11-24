module test_CircuitTwelve;
reg D, clk, rst;
wire Q;
//integer i;
DFF1 DFF_inst(Q,D,clk,rst);

initial
begin
	D=1'b0;clk=1'b1;rst=1'b0;
	#20
	D=1'b0;clk=~clk;rst=1'b1;
	#20
	D=1'b1;clk=~clk;rst=1'b0;
	#20
	D=1'b0;clk=~clk;rst=1'b1;
	#20
	D=1'b1;clk=~clk;rst=1'b0;
	#20
	D=1'b1;clk=~clk;rst=1'b1;
end
endmodule