// ROUNAK MODI & VEENA NAGAR
//17CO236 & 17C0151
//Full adder from half adder(s)
module test;
reg [31:0] input1;//All inputs declared as registers
reg [31:0] input2;
reg cy_in;
 
wire [31:0] answer;    //All ouputs declared as wires
wire carry_out,overflow;

N_bit_adder f1(input1,input2,cy_in,answer,carry_out,overflow); //module called

initial begin
$dumpfile("test.vcd");   //to generate gtkwave
$dumpvars(0,test);
end


initial begin
  input1 = 1011;   //initialing inputs with random value
  input2 = 1027;
  cy_in=0;   //for addition
  #100;
  	input1=1011;
  	input2=1027;
  	cy_in=1;   //for subtraction
 end
 initial begin
 	$monitor("input1=%b input2=%b answer=%b carryout=%b overflow=%b",input1,input2,answer,carry_out,overflow);
 end
   initial #300 $finish;    
endmodule
