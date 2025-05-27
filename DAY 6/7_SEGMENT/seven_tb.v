module seven_tb;
reg [3:0]bcd;
wire[6:0]led;
integer i;
seven ut(
        .bcd(bcd),.led(led));

initial begin
        $dumpfile("a.vcd");
        $dumpvars();

        $monitor($time,"bcd=%b,led=%b",bcd,led);

        for (i=0;i<15;i=i+1) begin
                bcd=i;
                #10;
        end
end
endmodule
