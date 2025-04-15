
behavioral model
module fa(input a,b,cin,output sum,cout);
wire x,y,z;
always @(a or b or cin);
assign sum=(a^b^cin);
assign cout=(a&b|cin&b|a&cin);
endmodule

structural model
module fa(input a,b,cin,output sum,cout);
wire x,y,z;
xor g1(sum,cin,a,b);
and g2(x,a,b);
and g3(y,cin,b);
and g4(z,a,cin);
or g5(cout,x,y,z);
endmodule

Data flow model
module fa(input a,b,cin,output sum,cout);
assign sum=(a^b^cin);
assign cout=(a&b|cin&b|a&cin);
endmodule
