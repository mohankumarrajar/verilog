module and_gate (
  input wire a,
  input wire b,
  output wire y
);

  assign y = a & b;

endmodule

//test bench//

`timescale 1ns / 1ps

module and_gate_tb;

  reg a, b;
  wire y;

  
  and_gate uut (
    .a(a),
    .b(b),
    .y(y)
  );

  initial begin
    
    $dumpfile("out.vcd");      
    $dumpvars(0, and_gate_tb); 

    // Apply test vectors
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
  end

endmodule
