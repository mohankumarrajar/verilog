module sr_tb;
        reg s,r;
        wire q,qb;

  srl uut(.s(s),.r(r),.q(q),.qb(qb));

        initial begin
                $dumpfile("srl.vcd");
                $dumpvars();

                $monitor($time,"s=%b,r=%b,q=%b,qb=%b",s,r,q,qb);

                s=0;r=1;
                #5 s=0;r=0;
                #5 s=0;r=1;
                #5 s=1;r=0;
                #5 s=1;r=1;

        end
        endmodule
