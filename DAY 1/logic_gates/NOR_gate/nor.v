
Data flow model 
module norgate(input a,b,output y);
assign y=~(a|b);
endmodule

structural model
module norgate(input a,b,output y);
nor gate(y,a,b);
endmodule

behavioral modeling 
module norgate(input a,b,output y);
always @(a or b);
y=~(a|b);
endmodule
