module xnor_gate (
    input wire a,
    input wire b,
    output wire y
);
    assign y = ~(a ^ b); 
endmodule

\\test bench

`timescale 1ns / 1ps

module tb_xnor_gate;
  
    reg a;
    reg b;
    wire y;
    xnor_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );
    initial begin
        $dumpfile("xnor_dump.vcd");  
        $dumpvars(0, tb_xnor_gate);  
    end
    initial begin
    
        $display("Time\tA B | Y");
        $display("----------------");

        a = 0; b = 0; #10;
        $display("%0t\t%b %b | %b", $time, a, b, y);

        a = 0; b = 1; #10;
        $display("%0t\t%b %b | %b", $time, a, b, y);

        a = 1; b = 0; #10;
        $display("%0t\t%b %b | %b", $time, a, b, y);

        a = 1; b = 1; #10;
        $display("%0t\t%b %b | %b", $time, a, b, y);

        $finish;
    end

endmodule
