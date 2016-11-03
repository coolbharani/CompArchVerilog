module test_CircuitSix;
wire Y;
reg x,y,z;

Mux M(Y,x,y,z);
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
		$monitor("I0=%b I1=%b S=%b Y=%b time=%0d",x,y,z,Y,$time);
endmodule