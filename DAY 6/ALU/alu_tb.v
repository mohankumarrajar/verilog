module alu_tb;
 reg[15:0]a,b;
 reg[3:0]in;
 wire[15:0]out;

 alu uut(
         .a(a),.b(b),.in(in),.out(out));

 initial begin
         $dumpfile("a.vcd");
         $dumpvars();

        $monitor($time,"a=%b,b=%b,in=%b,out=%b",a,b,in,out);
   //addition
   $display ("addition");
alu_in =4'b0000;
#5 a=15'b111111111111111; b=15'b000000000000001;
#8 a=15'b000000000000000; b=15'b000000000000001;

//subtraction
   $display ("subtraction");
alu_in =4'b0001;
a=15'b101001011100011; b=15'b110010110101100; 
#10 a=15'b111111111111111; b=15'b11111111111111;




//multipilication
$display ("multipilication");
alu_in =4'b0010;
a=15'b101001011100011; b=15'b110010110101100; 
#30 a=15'b101001011100011; b=15'b110010110101100;


//division
$display ("divide");
alu_in =4'b0011;
a=15'b101001011100011; b=15'b110010110101100; 
#40 a=15'b101001011100011; b=15'b110010110101100;


//left shif
$display ("left shif");
alu_in =4'b0100;
a=15'b101001011100011; b=15'b110010110101100; 
#50 a=15'b101001011100011; b=15'b110010110101100;


//right shift
$display ("right shift");
alu_in =4'b0101;
a=15'b101001011100011; b=15'b110010110101100; 
#60 a=15'b101001011100011; b=15'b110010110101100;


//rotate right
$display ("rotate right");
alu_in =4'b0110;
a=15'b101001011100011; b=15'b110010110101100; 
#75 a=15'b101001011100011; b=15'b110010110101100;


//rotate left
$display ("rotate left");
alu_in =4'b0111;
a=15'b101001011100011; b=15'b110010110101100; 
#85 a=15'b101001011100011; b=15'b110010110101100;


//and gate
$display ("and gate");
alu_in =4'b1000;
a=15'b101001011100011; b=15'b110010110101100; 
#95 a=16'b1111111111111111; b=16'b1111111111111111;


//or gate
$display ("or gate");
alu_in =4'b1001;
a=15'b101001011100011; b=15'b110010110101100; 
#100 a=15'b111111111111111; b=15'b000000000000000;


//ex or gate
$display ("ex or gate");
alu_in =4'b1010;
a=15'b101001011100011; b=15'b110010110101100; 
#115 a=15'b101001011100011; b=15'b110010110101100;


//nand gate
$display ("nand gate");
alu_in =4'b1011;
a=15'b101001011100011; b=15'b110010110101100; 
#125 a=15'b101001011100011; b=15'b110010110101100;


//ex nor gate
$display ("exnor");
alu_in =4'b1100;
a=15'b101001011100011; b=15'b110010110101100; 
#135 a=15'b101001011100011; b=15'b110010110101100; 


//greater than
$display ("greater than");
alu_in =4'b1101;
a=15'b101001011100011; b=15'b110010110101100; 
#145 a=15'b101001011100011; b=15'b110010110101100; 


//lessthan
$display ("lessthan");
alu_in =4'b1111;
a=15'b101001011100011; b=15'b110010110101100; 
#155 a=15'b101001011100011; b=15'b110010110101100;
end
endmodule
