module bintogray_tb;

        reg[3:0]bin;
        wire [3:0]gray;

  bintogray bintogray(.bin(bin),.gray(gray));
  initial begin
          $dumpfile("bintogray.vcd");
          $dumpvars();
          $monitor($time,"bin=%b,gray=%b",bin,gray);

          #5 bin=4'b0000;
          #5 bin=4'b0001;
          #5 bin=4'b0010;
          #5 bin=4'b0011;
          #5 bin=4'b0100;
          #5 bin=4'b0101;
          #5 bin=4'b0110;
          #5 bin=4'b0111;
          #5 bin=4'b1000;
          #5 bin=4'b1001;
          #5 bin=4'b1010;
          #5 bin=4'b1011;
          #5 bin=4'b1100;
          #5 bin=4'b1101;
          #5 bin=4'b1110;
          #5 bin=4'b1111;

  end
  endmodule
