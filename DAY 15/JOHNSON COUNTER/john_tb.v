module john_tb;
reg clk,rst;
wire[3:0]q;

john uut(.clk(clk),.rst(rst),.q(q));

always #5 clk=~clk;

initial begin
        rst=1;clk=0;


        #15 rst=0;


end
initial begin $monitor($time,"clk=%b,rst=%b,q=%b",clk,rst,q);
#1155 $finish;
end
endmodule
