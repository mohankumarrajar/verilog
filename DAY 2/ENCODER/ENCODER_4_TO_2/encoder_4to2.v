module encoder_4_to_2 (
    input [3:0] in,
    output [1:0] out
);
    assign out[1] = in[2] | in[3];
    assign out[0] = in[1] | in[3];
endmodule
