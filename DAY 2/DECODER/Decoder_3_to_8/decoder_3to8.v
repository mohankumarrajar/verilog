module decoder_3to8_dataflow(
    input [2:0] in,
    input enable,
    output [7:0] out
);
    assign out[0] = enable & ~in[2] & ~in[1] & ~in[0];
    assign out[1] = enable & ~in[2] & ~in[1] &  in[0];
    assign out[2] = enable & ~in[2] &  in[1] & ~in[0];
    assign out[3] = enable & ~in[2] &  in[1] &  in[0];
    assign out[4] = enable &  in[2] & ~in[1] & ~in[0];
    assign out[5] = enable &  in[2] & ~in[1] &  in[0];
    assign out[6] = enable &  in[2] &  in[1] & ~in[0];
    assign out[7] = enable &  in[2] &  in[1] &  in[0];

endmodule
