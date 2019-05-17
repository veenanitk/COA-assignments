// ROUNAK MODI & VEENA NAGAR
//17CO236 & 17C0151
// 14 oct 2018
//DFF using behavioral modelling

module DFF(d,reset,clk,q,qbar);

input d,reset,clk;

output reg q,qbar;

always @(posedge clk) begin
	
q<=d&(!reset);
qbar<=!q;

end

endmodule
