module ring_tb;
reg clk,rst;
wire[3:0]q;

ring uut(.clk(clk),.rst(rst),.q(q));

        always #5 clk=~clk;

        initial begin
                clk=0;rst=0;

                #5 rst=1;

                #20 rst=0;

                #45 $finish;
        end
          initial begin

                $monitor($time,"clk=%b,rst=%b,q=%b",clk,rst,q);
        end
        endmodule
