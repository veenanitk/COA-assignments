// Veena Nagar 171CO151, Rounak Modi 171CO236
//decoder
//15 october 2018


`timescale 1ns/1ns
module decoder(a,y);
	input [3:0] a;
	output [15:0] y;
	reg [15:0] y;
	
	always @(a)
	begin
		assign 	y[0]=!a[0]&!a[1]&!a[2]&!a[3];
		assign	y[1]=!a[0]&!a[1]&!a[2]&a[3];
		assign	y[2]=!a[0]&!a[1]&a[2]&!a[3];
		assign	y[3]=!a[0]&!a[1]&a[2]&a[3];
		assign	y[4]=!a[0]&a[1]&!a[2]&!a[3];
		assign	y[5]=!a[0]&a[1]&!a[2]&a[3];
		assign	y[6]=!a[0]&a[1]&a[2]&!a[3];
		assign	y[7]=!a[0]&a[1]&a[2]&a[3];
		assign	y[8]=a[0]&!a[1]&!a[2]&!a[3];
		assign	y[9]=a[0]&!a[1]&!a[2]&a[3];
		assign	y[10]=a[0]&!a[1]&a[2]&!a[3];
		assign	y[11]=a[0]&!a[1]&a[2]&a[3];
		assign	y[12]=a[0]&a[1]&!a[2]&!a[3];
		assign	y[13]=a[0]&a[1]&!a[2]&a[3];
		assign	y[14]=a[0]&a[1]&a[2]&!a[3];
		assign	y[15]=a[0]&a[1]&a[2]&a[3];
	end
endmodule

//testbench code

module decoder_tb;
	reg [3:0] a;
	wire [15:0] y;
	
initial begin
	$dumpfile("q2_decoder.vcd");
	$dumpvars(0,decoder_tb);	
	$monitor ("a[0]=%b, a[1]=%b, a[2]=%b, a[3]=%b y[0]=%b",a[0],a[1],a[2],a[3],y[0]);
	a[0]=0;
	a[1]=0;
	a[2]=0;
	a[3]=0;
	
	#10 a[3]=1;
	#10 a[3]=0;
	#10 a[2]=1;
	#10 a[3]=1;
	#10 a[2]=0;
	#10 a[3]=0;
	#10 a[1]=1;
	#10 a[3]=1;
	#10 a[2]=1;
	#10 a[0]=1;
	
	#10 $finish;
end

decoder d(
	.a(a),
	.y(y)
);
endmodule





		
