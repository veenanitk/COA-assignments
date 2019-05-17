// ROUNAK MODI & VEENA NAGAR
//17CO236 & 17C0151
// 14 oct 2018
//DFF using master-slave 

module DFF(d,reset,clk,q,qbar);
input d,reset,clk;
output q,qbar;
Master S(d,reset,clk,q_temp,qbar_temp);
Master M(q_temp,reset,clk,q,qbar);
endmodule

module Master(d,reset,clk,q,qbar);
input d,reset,clk;
output reg q,qbar;

initial begin
q=0;
end

always @(posedge clk)begin
	if(!reset)begin
	q<=d;
	qbar<=!d;
	end
	else begin
	q<=1'bx;
	qbar<=1'bx;
	end

end

endmodule

