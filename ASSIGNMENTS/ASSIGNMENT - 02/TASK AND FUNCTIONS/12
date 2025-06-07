Write Verilog code to generate odd or even numbers using a function.

ANSWER : 

ODD

  module generate_numbers;
  function [7:0] get_even;
    input [4:0] index;
    begin
      get_even = index * 2+1;
    end
  endfunction

  integer i;
  initial begin
    for (i = 0; i < 20; i = i + 1)
      $display("odd[%0d] = %0d", i, get_even(i));
  end
endmodule


EVEN 

module generate_numbers;
  function [7:0] get_even;
    input [4:0] index;
    begin
      get_even = index * 2;
    end
  endfunction

  integer i;
  initial begin
    for (i = 0; i < 20; i = i + 1)
      $display("Even[%0d] = %0d", i, get_even(i));
  end
endmodule
