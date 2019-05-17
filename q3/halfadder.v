// ROUNAK MODI & VEENA NAGAR
//17CO236 & 17C0151
//15 october 2018
module halfadder(a,b,sum,carry);
input a,b;
output sum,carry;
assign sum=a^b;
assign carry=a&b;
endmodule



