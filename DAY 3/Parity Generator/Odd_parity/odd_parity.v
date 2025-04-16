module odd(input a,b,c, output y);
always@(a or b or c);
assign y = ~(a^b^c);
endmodule
