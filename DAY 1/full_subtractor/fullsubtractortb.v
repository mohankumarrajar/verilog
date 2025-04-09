module tb_full_subtractor;
    reg A, B, Bin;
    wire D, B_out;
    full_subtractor fs (
        .A(A), .B(B), .Bin(Bin),
        .D(D), .B_out(B_out)
    );

    initial begin
        $dumpfile("full_subtractor.vcd");  
        $dumpvars(0, tb_full_subtractor);
        A = 0; B = 0; Bin = 0; #10;
        A = 0; B = 0; Bin = 1; #10;
        A = 0; B = 1; Bin = 0; #10;
        A = 0; B = 1; Bin = 1; #10;
        A = 1; B = 0; Bin = 0; #10;
        A = 1; B = 0; Bin = 1; #10;
        A = 1; B = 1; Bin = 0; #10;
        A = 1; B = 1; Bin = 1; #10;

        $finish;
    end
endmodule
