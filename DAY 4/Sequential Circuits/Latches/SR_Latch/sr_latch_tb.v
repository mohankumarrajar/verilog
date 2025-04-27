module sr_latch_tb;
    reg S,R;
    wire Q,Q_bar;

    sr_latch uut (.S(S),.R(R),.Q(Q),.Q_bar(Q_bar) );


    initial begin

        $dumpfile("sr_latch.vcd");
        $dumpvars(1);

        $monitor("Time = %0d, S = %b, R = %b, Q = %b, Q_bar = %b", $time, S, R, Q, Q_bar);


       #10;
            S = 1; R = 0;
        #10;
            S = 0; R = 0;
        #10;
            S = 0; R = 1;
        #10;
            S = 0; R = 0;
        #10;
            S = 1; R = 1;
        #10;
            S = 0; R = 0;
        #10;
            S = 1; R = 0;
        #10;
        S = 0; R = 0;
        #10;
        S = 0; R = 1;
        #10;

       end

endmodule
