`include "alu.v" 
module alu_tb;
	reg [0:0] a;
	reg [0:0] b;
	reg [3:0] alu_op;
	wire [0:0] result;

alu d(
      .a(a),
      .b(b),
      .alu_op,
      .result(result));

initial begin
	$dumpfile("alu.vcd");
	$dumpvars(0,alu_tb);
	$monitor("RESULT=%b",result);
        a[0]=0;
	b[0]=0;
	alu_op=0000;
	
	#10 a[0]=1;
	    b[0]=0;
	    alu_op=0001;
	#10  
	     a[0]=1;;
	     b[0]=1;
	    alu_op=0110;
	#10
	     a[0]=1;
	     b[0]=0;
	    alu_op=1111 
        #10    $finish;
end


endmodule
