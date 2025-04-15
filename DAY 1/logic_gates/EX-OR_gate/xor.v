
Data flow model model
module exor(input a,b,output y);
assign y=(a^b);
endmodule

structural model
module exor(input a,b,output y);
xor tb(y,a,b);
endmodule

behavioral model
module exor(input a,b,output y);
always @(a or b);
assign y=(a^b);
endmodule
