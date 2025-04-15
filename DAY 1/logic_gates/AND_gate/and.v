Dataflow modeling                       //dataflow modeling
module andgate(input a,b,output y);  
assign y=a&b;
endmodule

structural modeling              //structural modeling
module andgate(input a,b,output y);
and gate(y,a,b);
endmodule

behavioral modeling      //behavioral modeling
module andgate(input a,b,output reg y);
always @ (a or b)
y=a&b;
endmodule
