module tb_half_subtractor;
    reg A, B;
    wire D, B_out;
    half_subtractor hs (
        .A(A), .B(B),
        .D(D), .B_out(B_out)
    );

    initial begin
        $dumpfile("half_subtractor.vcd");  
        $dumpvars(0, tb_half_subtractor);
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
endmodule
