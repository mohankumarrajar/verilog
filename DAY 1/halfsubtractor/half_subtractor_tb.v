module half_subtractor_tb;
reg a,b;
wire diff,bor;
    half_subtractor v(.a(a),.b(b),.diff(diff),.bor(bor));
initial begin
    $dumpfile("half_subtractor.vcd");
$dumpvars;
    $monitor($time,"a=%b,b=%b,diff=%b,bor=%b",a,b,diff,bor);
a=0;b=0;
#5a=0;b=0;
#5a=0;b=1;
#5a=1;b=0;
#5a=1;b=1;
end
endmodule
