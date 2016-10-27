module test_CircuitFour;
wire S,C;
reg x,y,z;

Full_Add F(x,y,z,S,C);
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
endmodule