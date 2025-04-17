module half_subtractor(input a,b,output diff,bor);
assign diff=(a^b);
assign bor=~(a)&b;
endmodule
