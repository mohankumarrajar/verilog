
module nortb;
reg a,b;
wire y;
norgate uut(a,b,y);
initial begin
$monitor("a=%b,b=%b,y=%b",a,b,y);
a=0; b=0;
#5a=0; b=0;
#5a=0; b=1;
#5a=1; b=0;
#5a=1; b=1;
end 
initial begin
$dumpfile("nortb.vcd");
$dumpvars;
end
endmodule
