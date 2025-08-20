module tb_sync_fifo;

    parameter WIDTH = 8;
    parameter DEPTH = 16;

    reg clk, rst;
    reg wr_en, rd_en;
    reg [WIDTH-1:0] din;
    wire [WIDTH-1:0] dout;
    wire full, empty;

    sync_fifo #(WIDTH, DEPTH) uut (
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .din(din),
        .dout(dout),
        .full(full),
        .empty(empty)
    );

    always #5 clk = ~clk;

    initial begin
      $dumpfile("syn.vcd");
        $dumpvars();

        clk = 0;
        rst = 1;
        wr_en = 0;
        rd_en = 0;
        din = 0;

        #12 rst = 0;

        $display("Starting Write Operations...");
        repeat (10) begin
            @(posedge clk);
            wr_en = 1;
//             din = $random % 256;
          din = 1001;
            $display("WRITE: Data = %0d, Full=%b, Empty=%b", din, full, empty);
        end
        wr_en = 0;

        #20;

        $display("Starting Read Operations...");
        repeat (10) begin
            @(posedge clk);
            rd_en = 1;
            $display("READ: Data = %0d, Full=%b, Empty=%b", dout, full, empty);
        end
        rd_en = 0;
      $display("simulation finished");
#200;
        $finish;
    end
endmodule
