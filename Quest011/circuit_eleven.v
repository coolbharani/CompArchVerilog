module decoder(out,in);
input [0:2] in;
output [0:7] out;

wire [0:2] notin;

not(notin[0],in[0]);
not(notin[1],in[1]);
not(notin[2],in[2]);
and(out[0],notin[0],notin[1],notin[2]);
and(out[1],notin[0],notin[1],in[2]);
and(out[2],notin[0],in[1],notin[2]);
and(out[3],notin[0],in[1],in[2]);
and(out[4],in[0],notin[1],notin[2]);
and(out[5],in[0],notin[1],in[2]);
and(out[6],in[0],in[1],notin[2]);
and(out[7],in[0],in[1],in[2]);
endmodule

module fadder(s,c,in);
input [0:2] in;
output s,c;
wire [0:7] d_out;

decoder d(d_out,in);
assign s = d_out[1] | d_out[2] | d_out[4] | d_out[7];
assign c = d_out[3] | d_out[5] | d_out[6] | d_out[7];
endmodule
