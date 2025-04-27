module jktb;
reg j,k;
wire q,qb;
jk uut (.j(j),.k(k),.q(q),.qb(qb));
initial begin
$dumpfile("jk.vcd");
$dumpvars;
$monitor ($time,"j=%b,k=%b,q=%b,qb=%b",j,k,q,qb);
j=0; k=0;
#5 j=0; k=0;
#5 j=1; k=0;
#5 j=0; k=1;
#5 j=1; k=1;
end
endmodule
