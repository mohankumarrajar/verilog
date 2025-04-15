
Data flow modeling
module notgate(input a,output y);
 assign y=~a;
endmodule

structural modeling 
module notgate(input a,output y);
 not n1(y,a);
endmodule

behavioral modeling
module notgate(input a,output reg y);
always @ (a)
y=~a;
endmodule
