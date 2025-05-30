module up_tb;
reg clk,rst;
wire [3:0]count;

up uut (.clk(clk),.rst(rst),.count(count));

initial begin
        $dumpfile("gaot.vcd");
        $dumpvars();
        $monitor($time,"clk=%b,rst=%b,count=%b",clk,rst,count);

         clk=0;
         #5 rst=0;
         #5 rst=1;

         #45;
         $finish;
 end
         always #5 clk=~clk;

 endmodule
