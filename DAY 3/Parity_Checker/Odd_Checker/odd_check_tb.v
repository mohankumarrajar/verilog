module odd_parity_tb;
reg a,b,c,p;
wire o;
odd_parity h(.a(a),.b(b),.c(c),.p(p),.o(o));
initial begin
  $dumpfile("odd_check.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,c=%b,p=%b,o=%b",a,b,c,p,o);
a=0; b=0; c=0; p=0; 
#5 a=0; b=0; c=0; p=0; 
#5 a=0; b=0; c=0; p=1; 
#5 a=0; b=0; c=1; p=0; 
#5 a=0; b=0; c=1; p=1; 
#5 a=0; b=1; c=0; p=0; 
#5 a=0; b=1; c=0; p=1; 
#5 a=0; b=1; c=1; p=0; 
#5 a=0; b=1; c=1; p=1; 
#5 a=1; b=0; c=0; p=0; 
#5 a=1; b=0; c=0; p=1; 
#5 a=1; b=0; c=1; p=0; 
#5 a=1; b=0; c=1; p=1; 
#5 a=1; b=1; c=0; p=0; 
#5 a=1; b=1; c=0; p=1; 
#5 a=1; b=1; c=1; p=0; 
#5 a=1; b=1; c=1; p=1; 


end
endmodule
