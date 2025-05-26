module piso_tb;
        reg [3:0]pi;
        reg clk,clr,load;
        wire so;

        piso uut(
                .pi(pi),.clk(clk),.clr(clr),.load(load),.so(so));

        initial begin
                $dumpfile("a.vcd");
                $dumpvars();
        end
        initial begin
                clk=1;
                  $monitor($time,"pi=%b,clk=%b,clr=%b,load=%b,so=%b",pi,clk,clr,load,so);
                forever #5 clk=~clk;
        end
        initial begin


                clr=1;clr=0;

                load=0;
                pi=4'b0111;#5;

                load=1;#5;
                load=1;#5;
                load=1;#5;
                load=1;#5;

                $finish;
        end
        endmodule
