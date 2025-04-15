
module hftb;
reg a,b;
wire sum,carry;
hf u(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
$dumpfile("halfadder.vcd");
$dumpvars;
$monitor($time,"a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
a=0;b=0;
#5a=0;b=0;
#5a=0;b=1;
#5a=1;b=0;
#5a=1;b=1;
end
endmodule
