module not_gate (
  input wire a,
  output wire y
);

  assign y = ~a;

endmodule

\\test bench

`timescale 1ns / 1ps

module not_gate_tb;

  reg a;
  wire y;

  // Instantiate the NOT gate
  not_gate uut (
    .a(a),
    .y(y)
  );

  initial begin
  
    $dumpfile("out.vcd");        
    $dumpvars(0, not_gate_tb);   

    $display("Time\t a | y");
    $monitor("%g\t %b | %b", $time, a, y);

    #10 a = 0; 
    #10 a = 1; 

    $finish;
  end

endmodule
