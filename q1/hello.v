// ROUNAK MODI & VEENA NAGAR
//17CO236 & 17C0151
//Hello World program in verilog
// 14 oct 2018
module hello(input clk);  //input is clock signal

always @ (clk)            //clock is the trigger and on becoming 1 message is printed
begin
	$monitor("%0d Hello World\n",$time);       //print message and its timestamp
end
endmodule
