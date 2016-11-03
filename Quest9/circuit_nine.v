module binary_adder(sum, c_out, A, B, c_in);
output [3:0] sum;
output c_out;
input [3:0] A, B;
input c_in;
assign {c_out, sum} = A + B + c_in;
endmodule

//     [3] [2] [1] [0]
//c_in  1   1   1   0
//a     1   0   1   1
//b     1   1   0   1
//   ----------------- 
//  1   1   0   0   0
//c_out sum