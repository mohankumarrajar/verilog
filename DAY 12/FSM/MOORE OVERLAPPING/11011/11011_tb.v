module moore_11011_tb;
reg in,clk,rst;
wire out;
moore_11011 uut(in,clk,rst,out);
initial clk=0;
always #2 clk=~clk;
initial begin
  $dumpfile("11011.vcd");
$dumpvars;
$monitor($time,"in=%d,clk=%d,rst=%d,out=%d",in,clk,rst,out);

in=0;
#5 rst =0; #10 rst=1;

#5 in=1; 

#5 in=1; 

#5 in=1; 

#5 in=1; 

#5 in=1; 

#5 in=1;

#5 in=1;

#5 in=1;

#5 in=1;

#5 in=1;

#5 in=1;


 

#15;
$finish;
end
endmodule
