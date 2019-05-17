// ROUNAK MODI & VEENA NAGAR
//17CO236 & 17C0151
//15 october 2018
`include "halfadder.v"
module halfadder_tb;
	reg [0:0] a;
	reg [0:0] b;
	wire [0:0] sum;
	wire [0:0] carry;


halfadder d(
	  .a(a),
	  .b(b),
	  .sum(sum),
	  .carry(carry)
);

initial begin
	$dumpfile("halfadder.vcd");
	$dumpvars(0,halfadder_tb);
	$monitor("sum=%b , carry=%b",sum,carry);
	a[0]=0;
	b[0]=1;
	
	#10 a[0]=1;
	    b[0]=1;
	#10	 $finish;
end

endmodule

