module test_CircuitEight;
wire [0:3] D;
reg x,y,z;

decoder_2x4_df d(D,x,y,z);
initial
begin
	x=0;y=0;z=0;
	#20
	x=0;y=0;z=1;
	#20
	x=0;y=1;z=0;
	#20
	x=0;y=1;z=1;
	#20
	x=1;y=0;z=0;
	#20
	x=1;y=0;z=1;
	#20
	x=1;y=1;z=0;
	#20
	x=1;y=1;z=1;
	#20
	x=0;y=0;z=0;
end
	initial
	$monitor("D=%h x=%b y=%b z=%b time=%0d",D,x,y,z,$time);
endmodule