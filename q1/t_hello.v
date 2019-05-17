// ROUNAK MODI & VEENA NAGAR
//17CO236 & 17C0151
//Hello World program in verilog


`timescale 1ns/1ps

module test;
reg  clk;
hello f(clk);   //instance: hello module

initial begin   //beginning of 0th clock cycle
	clk=1'b1;
	repeat (99)     //ends after 100 clock cycles
		#1 clk=~clk;
end
endmodule
