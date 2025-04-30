module tff_tb;
reg t,clk,rst;
wire q,qb;
  tff uut(.t(t),.clk(clk),.rst(rst),.q(q),.qb(qb));
initial begin
  $dumpfile("tff.vcd");
  $dumpvars;
end
initial begin
clk=1;
forever #5clk=~clk;
end
initial begin
#10 t=0; rst=1; rst=0; #15;
$display($time,"t=%b,q=%b,qb=%b",t,q,qb); #18;
#20 t=1; #16;
$display($time,"t=%b,q=%b,qb=%b",t,q,qb); #25;
#45;
$finish;
end
endmodule
