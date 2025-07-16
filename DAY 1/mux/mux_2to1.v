module mux_2to1(
        input wire a,b,
        input wire s0,
        output y);
assign y=~s0&a|s0&b;
endmodule

             
