
Dataflow model
module nandgate(input a,b,output y);
assign y=~(a&b);
endmodule

structural model
module nandgate(input a,b,output y);
nand gate(y,a,b);
endmodule

behavioral modeling 
module nandgate(input a,b,output y);
always @(a or b);
y=~(a&b);
endmodule
