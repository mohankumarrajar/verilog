module btog (dout,din);
        input[3:0]din;
        output[3:0]dout;
        reg[3:0]dout;
  always@(din)
  begin
          case(din)
                  0:dout=0; 
                  1:dout=1;                                                                                                            
                  2:dout=3;            
                  3:dout=2;
                  4:dout=6;
                  5:dout=7;
                  6:dout=5;
                  7:dout=4;
                  8:dout=12;
                  9:dout=13;
                  10:dout=15;
                  11:dout=14;
                  12:dout=10;
                  13:dout=11;
                  14:dout=9;
                  15:dout=8;
           default:dout=4'0000;                                                                                          
          endcase
   end
   endmodule                                                                                                            ~               
