module encoder_4_to_2_tb;

    reg [3:0] in;
    wire [1:0] out;

    encoder_4_to_2 uut (
        .in(in),
        .out(out)
    );
 
    initial begin
        $dumpfile("encoder_4_to_2_tb.vcd");
        $dumpvars(0, encoder_4_to_2_tb);
  
        in = 4'b0001; #10; 
        in = 4'b0010; #10; 
        in = 4'b0100; #10; 
        in = 4'b1000; #10; 

        in = 4'b0011; #10; 
        in = 4'b0110; #10;
        in = 4'b1100; #10;
    
        $display("Simulation complete");
        $finish;
    end
  
    initial begin
      $monitor("time = %0t, in= %b, out = %b", $time, in, out);
    end
endmodule
