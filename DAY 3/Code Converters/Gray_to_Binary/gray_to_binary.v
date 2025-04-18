module graytobin(
        input[3:0]gray,
        output[3:0]bin
  );
  assign bin=gray^(bin>>1);
  endmodule
