module d_latch_tb;
    reg d;
    wire q;
    wire q_bar;

    d_latch uut (.d(d),.q(q),.q_bar(q_bar)
    );

        initial begin
        
           $dumpfile("d_latch_tb.vcd");
        $dumpvars();

        $monitor($time,"d=%b,,q=%b,q_bar=%b",d,q,q_bar);
         #10    d = 1;

       #10      d = 0;

         end
endmodule
