
Data flow model
module exnor(input a,b,output y);
assign y=~(a^b);
endmodule

structural model
module exnor(input a,b,output y);
xnor gate(y,a,b);
endmodule

behavioral model
module exnor(input a,b,output y);
always @(a or b);
assign y=~(a^b);
endmodule
