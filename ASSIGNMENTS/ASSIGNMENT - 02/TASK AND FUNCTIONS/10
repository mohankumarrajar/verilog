Write Verilog code to perform arithmetic operations using tasks.

ANSWER : 

module task_arithmetic;
  task add(input [7:0] a, b,
          output [7:0] r);
  r = a + b;
 endtask
  task sub(input [7:0] a, b,
          output [7:0] r);
  r = a - b;
 endtask
  task mul(input [7:0] a, b,
          output [15:0] r);
  r = a * b;
endtask
  task div(input [7:0] a, b,
          output [7:0] r);
  r = a / b;
 endtask

  reg [7:0] ra, rs, rd;
  reg [15:0] rm;

  initial begin
    #5 add(10, 5, ra);
    #5 sub(10, 5, rs);
    #5 mul(10, 5, rm);
    #5 div(10, 5, rd);
    $display("Add=%d Sub=%d Mul=%d Div=%d", ra, rs, rm, rd);
  end
endmodule
