module alu(a,b,alu_op,result);
input a,b,alu_op;
output result,result1;
/*
assign c1=a&b;
assign c2=a|b;
assign c3= ~(a&b);
assign c4= ~(a|b);
assign c5= a+b;
assign c6= a-b;    */


always @(*)
begin
     case(alu_op)
	4'b0010:
	result= a+b;

	4'b0110:
	result=a-b;
	4'b0000:
	result=a&b;
	4'b0001:
	result=a|b;
	4'b1111:
	result=~(a&b);
	4'b1110:
	result=~(a|b);
      endcase
end


endmodule

