module jkfftb;
reg j,k,clk,rs;
wire q,qb;
jkff uut(j,k,clk,rs,q,qb);
initial begin
$dumpfile("jk.vcd");
$dumpvars;
end
initial begin
clk=1;
forever #5 clk=~clk;
end
initial begin
#10 j=0; k=0; #15;
$display($time,"j=%b,k=%b,clk=%b,q=%b,qb=%b",j,k,clk,q,qb);
#15 j=0; k=1;  #30;
$display($time,"j=%b,k=%b,clk=%b,q=%b,qb=%b",j,k,clk,q,qb);
#20 j=1; k=0;  #45;
$display($time,"j=%b,k=%b,clk=%b,q=%b,qb=%b",j,k,clk,q,qb);
#25 j=1; k=1;  #50;
$display($time,"j=%b,k=%b,clk=%b,q=%b,qb=%b",j,k,clk,q,qb);
#95;
$finish;
end
endmodule
