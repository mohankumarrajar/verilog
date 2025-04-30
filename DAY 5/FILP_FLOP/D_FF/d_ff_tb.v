module dff_tb;
reg d,clk,rst;
wire q,qb;
  dff uut(d,clk,rst,q,qb);
initial begin
  $dumpfile ("dff.vcd");
$dumpvars;
end
initial begin
clk=1;
forever #5 clk=~clk;
end
initial begin
#10 d=0; rst=1; rst=0; #15;
  $display($time,"d=%b,clk=%b,rst=%b,q=%b,qb=%b",d,clk,rst,q,qb); #5
#15 d=1; #18;
  $display($time,"d=%b,clk=%b,rst=%b,q=%b,qb=%b",d,clk,rst,q,qb); #10
#80;
$finish;
end
endmodule
