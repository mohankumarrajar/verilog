`timescale 1ns/1ps

module tb_mux_2to1;
    reg A, B, sel;
    wire Y;
    mux_2to1 uut (
        .A(A),
        .B(B),
        .sel(sel),
        .Y(Y)
    );

    initial begin
  
        $dumpfile("mux_2to1.vcd");
        $dumpvars(0, tb_mux_2to1);
        A = 0; B = 0; sel = 0; #10;
        A = 0; B = 1; sel = 0; #10;
        A = 1; B = 0; sel = 0; #10;
        A = 1; B = 1; sel = 0; #10;
        A = 0; B = 0; sel = 1; #10;
        A = 0; B = 1; sel = 1; #10;
        A = 1; B = 0; sel = 1; #10;
        A = 1; B = 1; sel = 1; #10;

        $finish;
    end
endmodule
