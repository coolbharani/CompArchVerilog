module JKFF(J,K,clk,rst,q);
input J,K,clk,rst;
output q;
reg q;
always @(posedge clk) begin
	if (J==1 & K==1) begin
		q<=~q; //Toggles
		
	end
	else if (J==1 & K==0) begin
		q<=1; //Set
	end
	else if(J==0 & K==1) begin
		q<=0; //Reset
	end
	else if(J==0 & K==0) begin
		q<=q; //No Change
	end
end
always @(posedge rst) begin
	q <= 0;
end
endmodule