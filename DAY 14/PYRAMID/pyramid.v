module pyramid;
  integer i,j,space,rows;

  initial begin
    rows=5;
    for(i=0;i<rows;i=i+1)begin
      for(space=0;space<rows-i-1;space=space+1)
        $write("");
      for(j=0;j<(2*i+1);j=j+1)
        $write("*");
      $display("");
    end
  end
endmodule
