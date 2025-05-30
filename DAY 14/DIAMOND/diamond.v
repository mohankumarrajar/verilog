module diamond(
        input [1:0]select,
        input [3:0]in1,in2,in3,in4,
        output reg [3:0]out);

      always @ (*) begin

              if(select==2'b00)
                      out=in1;
              else if (select==2'b01)
                      out=in2;
              else if(select==2'b10)
                      out=in3;
              else
                      out=in4;

      end
      endmodule
