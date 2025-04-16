module mux2to1_tb;
        reg a,b,s0;
        wire y;
 mux_2to1 uut(
         .a(a),.b(b),.s0(s0),.y(y)
 );
 initial begin
         $dumpfile("mux.vcd");
         $dumpvars();

         $monitor($time,"a=%b,b=%b,s0=%b,y=%b",a,b,s0,y);

         #5 s0=0;a=0;b=0;
         #5 s0=0;a=0;b=1;
         #5 s0=0;a=1;b=0;
         #5 s0=0;a=1;b=1;
         #5 s0=1;a=0;b=0;
         #5 s0=1;a=0;b=1;
         #5 s0=1;a=1;b=0;
         #5 s0=1;a=1;b=1;

 end
 endmodule
