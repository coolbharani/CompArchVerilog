module Mux(m_out, A, B, select);
output m_out;
input A,B,select;
reg m_out;
always @(A or B or select) begin //or - Not same as |
	if (select == 1) begin
		m_out = A;
	end
	else begin
		m_out = B;
	end
end
endmodule