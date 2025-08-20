
module tb_sram;

    reg clk;
    reg rs;
    reg wr;
    reg [3:0] din;
    reg [2:0] add;
    wire [3:0] dout;

    sram uut (
        .clk(clk),
        .rs(rs),
        .wr(wr),
        .din(din),
        .add(add),
        .dout(dout)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rs = 1; wr = 0; din = 0; add = 0;

        #10 rs = 0;

        #10 wr = 1; din = 4'b1010; add = 3'b000;
        #10 wr = 1; din = 4'b1100; add = 3'b001;
        #10 wr = 1; din = 4'b1111; add = 3'b010;

        #10 wr = 0; add = 3'b000;
        #10 wr = 0; add = 3'b001;
        #10 wr = 0; add = 3'b010;

        #10 wr = 1; din = 4'b0011; add = 3'b011;
        #10 wr = 0; add = 3'b011;

        #20 $finish;
    end

    initial begin
        $monitor("Time=%0t | wr=%b | add=%b | din=%b | dout=%b",
                 $time, wr, add, din, dout);
    end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end

endmodule
