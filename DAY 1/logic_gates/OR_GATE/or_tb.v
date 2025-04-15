
module orgatetb;
 reg a,b;
 wire y;
 orgate dut (a,b,y);
 initial begin
 $monitor("a=%b,b=%b,y=%b",a,b,y);

 a=0; b=0;#5
 a=0; b=1;#5
 a=1; b=0;#5
 a=1; b=1;#5;//$display ("a=%b",b=%b,c=%y);
end
initial begin
        $dumpfile("orgate.vcd");
        $dumpvars;
end
endmodule
