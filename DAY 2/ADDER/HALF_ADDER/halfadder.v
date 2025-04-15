
Data flow model
module hf(input a,b,output sum,carry);
assign sum =a^b;
assign carry =a&b;
endmodule

structural model
module hf(input a,b,output sum,carry);
xor u(sum,a,b);
and uu(carry,a,b);
endmodule

behavioral model
module hf(input a,b,output sum,carry);
always @(a or b);
assign sum=(a^b);
assign carry=(a&b);
endmodule
