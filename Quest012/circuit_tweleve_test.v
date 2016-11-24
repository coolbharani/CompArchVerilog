module test_CircuitTwelve;
reg D, Clk;
wire Q;
//integer i;
DFF DFF_inst(Q,D,Clk);

initial
begin
	D=1'b0;Clk=1'b1;
	#20
	D=1'b0;Clk=~Clk;
	#20
	D=1'b1;Clk=~Clk;
	#20
	D=1'b0;Clk=~Clk;
	#20
	D=1'b1;Clk=~Clk;
	#20
	D=1'b0;Clk=~Clk;
end
endmodule