
module notgatetb;
 reg a;
 wire y;
notgate dut(a,y);
initial begin
$monitor("a=%b,y=%b",a,y);
 a=0;#5;
 a=1;#5;
 $display("a=%b,y=%b",a,y);
 end
 initial begin
         $dumpfile("notgate.vcd");
         $dumpvars;
 end
endmodule
