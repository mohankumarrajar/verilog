
module xortb;
 reg a,b;
 wire y;
 exor tb(a,b,y);
 initial begin
         $monitor("a=%b,b=%b,y=%b",a,b,y);

 a=0; b=0;#5;
 a=0; b=1;#5;
 a=1; b=0;#5;
 a=1; b=1;#5;
 end
 initial begin
         $dumpfile("xor.vcd");
         $dumpvars;
 end
endmodule
