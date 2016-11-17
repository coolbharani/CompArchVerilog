module test_CircuitTen;
wire out;
reg [0:15] in;
reg [0:3] sel;

mux16to1 mux(out,in,sel);

initial
	begin
		in =16'b1000000000000000; sel=4'b0000;
		#3
		in =16'b0100000000000000; sel=4'b0001;
		#3
		in =16'b0010000000000000; sel=4'b0010;
		#3
		in =16'b0001000000000000; sel=4'b0011;
		#3
		in =16'b0000100000000000; sel=4'b0100;
		#3
		in =16'b0000010000000000; sel=4'b0101;
		#3
		in =16'b0000001000000000; sel=4'b0110;
		#3
		in =16'b0000000100000000; sel=4'b0111;
	end
initial
	$monitor("in=%b | sel=%b | out=%b | time=%0d",in,sel,out,$time);
endmodule