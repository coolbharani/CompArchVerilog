module mux4to1(out,in,sel);
input [0:3] in;
input [0:1] sel;
output out;
wire n0,n1,a1,a2,a3,a4;
not(n0,sel[0]);
not(n1,sel[1]);
and(a1,in[0],n1,n0);
and(a2,in[1],n0,sel[1]);
and(a3,in[2],sel[0],n1);
and(a4,in[3],sel[0],sel[1]);
or(out,a1,a2,a3,a4);
endmodule

module mux16to1(out,in,sel);
input [0:15] in;
input [0:3] sel;
output out;
wire n0,n1;
wire [0:3] ma;
mux4to1 m1(ma[0],in[0:3],sel[2:3]);
mux4to1 m2(ma[1],in[4:7],sel[2:3]);
mux4to1 m3(ma[2],in[8:11],sel[2:3]);
mux4to1 m4(ma[3],in[12:15],sel[2:3]);
mux4to1 m(out,ma,sel[0:1]);
endmodule