// ROUNAK MODI & VEENA NAGAR
//17CO236 & 17C0151
//15 october 2018
//Full adder from half adder(s)s

module t_register;
reg [31:0]d;
reg reset,clock;
wire [31:0]q,q1;

register m(d,clock,reset,q,q1);
initial
begin
    $dumpfile("register.vcd");
    $dumpvars(0, t_register);
    $monitor("Time:%0t\nClock:%d  reset:%d d:%d q:%d\n",$time,clock,reset,d,q);
 
    clock=0;
    d=0;
    reset=0;
end    
    

    always
    begin 
        #10 
        clock=~clock;
    end

    initial
    begin
    #15   
		d=1047483647;
    #30
		d=-1;
    #20   
		d=-1047483648;
    #10
		reset=1;
    #30   
		d=167462746;
    #20
		reset=0;
		d=-20593375;
    #15  
		d=54972792;
    #20
		d=-1024;
    
    $finish;
    end


endmodule
