module Test_CircuitFifteen;
reg J,K, clk, rst;
wire q;
//integer i;
JKFF JKFF_inst(J,K,clk,rst,q);
//Module to generate clock with period 10 time
initial
begin
	clk=0;
	repeat(7)
	#10 clk=~clk;
end
initial
begin
	J=0;K=0;rst=1;
	#10
	J=0;K=1;rst=0;
	#10
	J=1;K=0;rst=1;
	#10
	J=1;K=1;rst=0;
	#10
	J=0;K=0;rst=1;
end
endmodule