// ROUNAK MODI & VEENA NAGAR
//17CO236 & 17C0151
//15 october 2018
`include "halfadder.v"
module fulladder(a,b,c,sum,carry);
	input a,b,c;
	output sum,carry;
	wire temp,temp1,temp2;

halfadder d1(.a(a),.b(b),.sum(temp),.carry(temp1));
halfadder d2(.a(temp),.b(c),.sum(sum),.carry(temp2));

or(carry,temp1,temp2);

endmodule
