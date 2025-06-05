Write a Verilog code to create two functions for multiplication and division.

ANSWER : 

function [15:0] multiply;
    input [7:0] a, b;
    initial begin
        multiply = a * b;
    end
endfunction

function [7:0] divide;
    input [7:0] a, b;
    initial begin
        divide = (b != 0) ? a / b : 0;
    end
endfunction
