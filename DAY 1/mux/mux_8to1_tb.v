`timescale 1ns/1ps

module mux8to1_tb;
    reg [7:0] in; 
    reg [2:0] sel;   
    wire out;        

   mux8to1 DUT (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        $dumpfile("mux8to1.vcd");
        $dumpvars(0, mux8to1_tb);

        in = 8'b10101010;
        sel = 3'b000;
        
        $display("Testing with input pattern: %b", in);
        
        sel = 3'b000; #10;
        $display("sel = %b, out = %b (should be %b)", sel, out, in[0]);
        
        sel = 3'b001; #10;
        $display("sel = %b, out = %b (should be %b)", sel, out, in[1]);
        
        sel = 3'b010; #10;
        $display("sel = %b, out = %b (should be %b)", sel, out, in[2]);
        
        sel = 3'b011; #10;
        $display("sel = %b, out = %b (should be %b)", sel, out, in[3]);
        
        sel = 3'b100; #10;
        $display("sel = %b, out = %b (should be %b)", sel, out, in[4]);
        
        sel = 3'b101; #10;
        $display("sel = %b, out = %b (should be %b)", sel, out, in[5]);
        
        sel = 3'b110; #10;
        $display("sel = %b, out = %b (should be %b)", sel, out, in[6]);
        
        sel = 3'b111; #10;
        $display("sel = %b, out = %b (should be %b)", sel, out, in[7]);
        in = 8'b11001100;
        $display("\nTesting with new input pattern: %b", in);
        
        sel = 3'b010; #10;
        $display("sel = %b, out = %b (should be %b)", sel, out, in[2]);
        
        sel = 3'b110; #10;
        $display("sel = %b, out = %b (should be %b)", sel, out, in[6]);
        #10 $finish;
    end
    initial begin
        $monitor("Time = %0t, in = %b, sel = %b, out = %b", 
                 $time, in, sel, out);
    end
    
endmodule
