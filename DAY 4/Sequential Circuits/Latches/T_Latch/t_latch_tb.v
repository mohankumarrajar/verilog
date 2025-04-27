module tb;
reg t;
wire q,qb;
t uut(.t(t),.q(q),.qb(qb));
initial begin
$dumpfile("t.vcd");
$dumpvars;
$monitor ($time,"t=%b,q=%b,qb=%b",t,q,qb);
t=0;
#5 t=0;
#5 t=1;
  #5 t=0;
end
endmodule
