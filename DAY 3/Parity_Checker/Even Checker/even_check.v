module ep(input a,b,c,p,output e);
  always @(a or b or c or p);
  assign e=(a^b^c^p);
endmodule
