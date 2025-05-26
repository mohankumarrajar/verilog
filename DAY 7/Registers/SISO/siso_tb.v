module siso_tb;
reg si,clk,clr;
wire so;
siso uut(.si(si),.clk(clk),.clr(clr),.so(so));

initial begin
        $dumpfile("a.vcd");
        $dumpvars();
end
initial begin
        clk=0;
        forever #5 clk=~clk;
end
initial begin
        clr=1;
        #5 si=0;

        clr=0;
        si=1;

        si=1;#10;
        si=1;#10;
        si=1;#10;
        si=0;#10;
        si=0;#10;
        si=0;#10;
        si=0;#10;

        $finish;
end
endmodule
