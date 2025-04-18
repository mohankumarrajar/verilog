module bintogray_tb;
        parameter n=4;
        reg[n-1:0]bin;
        wire [n-1:0]gray;

  bintogray bintogray(.bin(bin),.gray(gray));
  initial begin
          $dumpfile("bintogray.vcd");
          $dumpvars();
          $monitor($time,"bin=%b,gray=%b",bin,gray);

          #5 bin=4'b0010;
          #5 bin=4'b0100;
  end
  endmodule                                                                                                         ~               
