module even_check_tb;
reg a,b,c,p;
wire e;
even_check h(.a(a),.b(b),.c(c),.p(p),.e(e));
initial begin
  $dumpfile("even_check.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,c=%b,p=%b,e=%b",a,b,c,p,e);
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
