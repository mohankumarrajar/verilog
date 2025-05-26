module pipotb;
reg [3:0]pi;
reg clk,rs;
wire [3:0]po;
pipo uut(pi,clk,rs,po);
initial begin
clk=1;
$dumpfile("pipo.vcd");
$dumpvars;
$monitor($time,"pi=%b,clk=%b,rs=%b,po=%b",pi,clk,rs,po);
forever #5 clk=~clk;
end

initial begin
rs=1;
pi=4'b1110; #10
rs=0;
pi=4'b1110; #10
$finish;
end
endmodule
