module updo(
        input clk,rst,up,
        output reg[3:0]count);

  always@(posedge clk)begin
          if(rst==0)begin
                  count<=4'b0;
  end
  else begin
          if(up) count<=count+1'b1;
          else count<=count-1'b1;
  end
end
endmodule
