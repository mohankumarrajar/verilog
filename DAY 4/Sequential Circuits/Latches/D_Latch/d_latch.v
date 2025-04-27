module d_latch (
    input d,
    output reg q,
    output q_bar );

      assign q_bar = d;
      always @(*) begin
        if (d)
            q <= d;
     end

endmodule
