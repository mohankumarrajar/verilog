module ep_tb;
        reg a,b,c;
        wire y;
  ep uut(
          .a(a),.b(b),.c(c),.y(y));

  initial begin
          $dumpfile("even.vcd");
          $dumpvars();

          $monitor($time,"a=%b,b=%b,c=%b,y=%b",a,b,c,y);

          #5 a=0;b=0;c=0;
            #5 a=0;b=0;c=1;
              #5 a=0;b=1;c=0;
                #5 a=0;b=1;c=1;
                  #5 a=1;b=0;c=0;
                    #5 a=1;b=0;c=1;
                      #5 a=1;b=1;c=0;
                        #5 a=1;b=1;c=1;
   end
                 endmodule
