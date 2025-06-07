Write Verilog code where a task can call both a task and a function.

ANSWER : 

module task_calls;
  function [7:0] square;
    input [7:0] x;
    square = x * x;
  endfunction

  task process;
    input [7:0] val;
    reg [7:0] sq;
    begin
      sq = square(val);
      $display("Square = %d", sq);
      display_message();
    end
  endtask

  task display_message;
    begin
      $display("Task called inside another task");
    end
  endtask
