module etob_tb;
        reg [3:0] bcd;
        wire [3:0] e;

  etob uut(
          .e(e), .bcd(bcd));

  initial begin
          $dumpfile("etobcd.vcd");
          $dumpvars();
          $monitor($time, " e=%b, bcd=%b", e, bcd);

          bcd = 4'b0000;

          #2 bcd = 4'b0011;
          #2 bcd= 4'b0100;
          #2 bcd= 4'b0101;
          #2 bcd= 4'b0110;
          #2 bcd = 4'b0111;
          #2 bcd= 4'b1000;
          #2 bcd = 4'b1001;
          #2 bcd = 4'b1010;
          #2 bcd = 4'b1011;
          #2 bcd = 4'b1100;
          #2 bcd = 4'b1101;
          #2 bcd = 4'b1110;
          #2 bcd = 4'b1111;
          #2 bcd = 4'b0000;
          #2 bcd = 4'b0001;
          #2 bcd = 4'b0010;


  end
endmodule
