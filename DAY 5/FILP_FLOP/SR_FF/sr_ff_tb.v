module srff_tb;
  reg s,r,clk,rst;
  wire q,qb;
srff uut(.s(s),.r(r),.clk(clk),.rst(rst),.q(q),.qb(qb));
 initial begin                                              
  $dumpfile("srff.vcd");
  $dumpvars;
end
 initial begin
 clk=1;
 forever #5 clk=~clk;
end
 initial begin
  #10 s=0; r=0; rst=1;
  #10 rst = 0;
  $display($time,"s=%b,r=%b,rst=%b,q=%b,qb=%b",s,r,rst,q,qb);
  #10 s=0; r=0; #5;                                            
    $display($time,"s=%b,r=%b,rst=%b,q=%b,qb=%b",s,r,rst,q,qb);
  #10 s=0; r=1; #6;                                             
    $display($time,"s=%b,r=%b,rst=%b,q=%b,qb=%b",s,r,rst,q,qb);
  #10 s=1; r=0; #10;
  $display($time,"s=%b,r=%b,rst=%b,q=%b,qb=%b",s,r,rst,q,qb);
  #10 s=1; r=1; #18;
  $display($time,"s=%b,r=%b,rst=%b,q=%b,qb=%b",s,r,rst,q,qb); 
    #80;
  $finish;
end
endmodule
