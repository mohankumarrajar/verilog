module down(
        input clk,rst,
        output reg [3:0]count);
 
        always@(posedge clk) begin

          if(rst==0)
                  count<=3'b111;
          else
                  count<=count+3'b001;
  end
  endmodule
