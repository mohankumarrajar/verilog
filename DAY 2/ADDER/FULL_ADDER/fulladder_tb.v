
module fatb;
reg a,b,cin;
wire sum,carry;
fa u(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$dumpfile("fa.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,sum,cin,cout);
a=0;b=0;cin=0;
#5 a=0;b=0;cin=0;
#5 a=0;b=0;cin=1;
#5 a=0;b=1;cin=0;
#5 a=0;b=1;cin=1;
#5 a=1;b=0;cin=0;
#5 a=1;b=0;cin=1;
#5 a=1;b=1;cin=0;
#5 a=1;b=1;cin=1;

end
endmodule
