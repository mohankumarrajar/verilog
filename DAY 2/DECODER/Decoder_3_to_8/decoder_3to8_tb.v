module decoder_3to8_dataflow_tb;
    reg [2:0] in;
    reg enable;
    wire [7:0] out;
    
    decoder_3to8_dataflow dut(
        .in(in),
        .enable(enable),
        .out(out)
    );
    
    initial begin     
        $dumpfile("decoder_dataflow.vcd");
        $dumpvars(0, decoder_3to8_dataflow_tb);
        
        enable = 0;
        in = 3'b000;
        #10;
        enable = 1;
        in = 3'b000;
        #10;
        in = 3'b001;
        #10;
        in = 3'b010;
        #10;
        in = 3'b011;
        #10;
        in = 3'b100;
        #10;
        in = 3'b101;
        #10;
        in = 3'b110;
        #10;
        in = 3'b111;
        #10;
        enable = 0;
        #10;
        $finish;
    end
    initial begin
      $monitor("time = %0t, enable = %b, in = %b, out = %b", 
                 $time, enable, in, out);
    end
endmodule
