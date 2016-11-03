module test_CircuitNine;
wire [3:0] sum;
wire c_out;
reg [3:0] A, B;
reg c_in;

binary_adder b(sum, c_out, A, B, c_in);

initial
begin
	A = 4'hb; B=4'hd; c_in = 0;
	#20
	A = 4'hb; B=4'hd; c_in = 0;
end
initial
	$monitor("A=%h B=%h c_out=%b sum=%h time=%0d",A,B,c_out,sum,$time);
endmodule