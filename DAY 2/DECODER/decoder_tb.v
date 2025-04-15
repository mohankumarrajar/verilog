module tb_decoder_2to4;
    reg [1:0] in;
    reg en;
    wire [3:0] out;
    decoder_2to4 dut (
        .in(in),
        .en(en),
        .out(out)
    );
    
    initial begin
        $dumpfile("decoder_dataflow.vcd");
        $dumpvars();
        
        en = 0; in = 2'b00; #10;
        en = 1; in = 2'b00; #10;
        en = 1; in = 2'b01; #10;
        en = 1; in = 2'b10; #10;
        en = 1; in = 2'b11; #10;
        en = 0; in = 2'b11; #10;
        
        $display("Dataflow model ");
        $finish;
    end
endmodule
