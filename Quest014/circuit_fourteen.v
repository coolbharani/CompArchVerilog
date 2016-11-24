module TFF(T,clk,rst,q);
input T,clk,rst;
output q;
reg q;
always @(posedge clk or negedge rst) begin
	if (~rst) begin
		// reset
		q<=1'b0;
		
	end
	else if (T) begin
		q<=!q;
	end
end
endmodule