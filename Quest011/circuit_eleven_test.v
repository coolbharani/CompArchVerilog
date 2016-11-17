module test_CircuitEleven;
wire s,c;
reg [0:2] in;

fadder f(s,c,in);
initial
begin
	in[0]=0;in[1]=0;in[2]=0;
	#20
	in[0]=0;in[1]=0;in[2]=1;
	#20
	in[0]=0;in[1]=1;in[2]=0;
	#20
	in[0]=0;in[1]=1;in[2]=1;
	#20
	in[0]=1;in[1]=0;in[2]=0;
	#20
	in[0]=1;in[1]=0;in[2]=1;
	#20
	in[0]=1;in[1]=1;in[2]=0;
	#20
	in[0]=1;in[1]=1;in[2]=1;
	#20
	in[0]=0;in[1]=0;in[2]=0;
end
initial
	$monitor("z=%b y=%b x=%b s=%b c=%b time=%0d",in[0],in[1],in[2],s,c,$time);
endmodule