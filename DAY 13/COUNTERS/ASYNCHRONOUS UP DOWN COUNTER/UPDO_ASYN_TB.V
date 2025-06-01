module updo_asyn_tb;
reg clk,rst,up;
wire [3:0]count;

updo_asyn uut(.clk(clk),.rst(rst),.up(up),.count(count));

initial begin
        $dumpfile("dump.vcd");
        $dumpvars();

        $monitor($time,"clk=%b,rst=%b,up=%b,count=%b",clk,rst,up,count);
        clk=0;rst=0;

        up=1;

        #4;
        rst=1;

        #50;

        rst=0;

        #4;
        rst=1;up=0;

        #63;
        $finish;
end
always #5 clk=~clk;
endmodule
