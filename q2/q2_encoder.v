// Veena Nagar 171CO151, Rounak Modi 171CO236
//encoder
//15 october 2018

`timescale 1ns/1ns
module encoder(y,d);
	input [15:0] d;
	output [3:0] y;
	reg [3:0] y;
	
	always @(d)
	begin
		assign	y[3]=d[8]|d[9]|d[10]|d[11]|d[12]|d[13]|d[14]|d[15];
    		assign	y[2]=d[4]|d[5]|d[6]|d[7]|d[12]|d[13]|d[14]|d[15];
    		assign	y[1]=d[2]|d[3]|d[6]|d[7]|d[10]|d[11]|d[14]|d[15];
    		assign	y[0]=d[1]|d[3]|d[5]|d[7]|d[9]|d[11]|d[13]|d[15];
	end
endmodule

//test bench code

module encoder_tb();
	reg [15:0] d;
	wire [3:0] y;
	integer i;
initial begin
	$dumpfile("q2_encoder.vcd");
	$dumpvars(0,encoder_tb);
	
	for(i=0;i<15;i=i+1)
		begin
			d=0;
			d[i]=1;
		#10;
		end
	
#150 $finish;
end

encoder e(
	.y(y),
	.d(d)
);
endmodule	
