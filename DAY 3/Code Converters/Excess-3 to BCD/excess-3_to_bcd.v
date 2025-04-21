module etobcd(
    input [3:0] e,
    output reg [3:0] bcd
);

    always @(e) begin
        case(e)
            4'b0011: bcd = 4'b0000;
            4'b0100: bcd = 4'b0001;
            4'b0101: bcd = 4'b0010;
            4'b0110: bcd = 4'b0011;
            4'b0111: bcd = 4'b0100;
            4'b1000: bcd = 4'b0101;
            4'b1001: bcd = 4'b0110;
            4'b1010: bcd = 4'b0111;
            4'b1011: bcd = 4'b1000;
            4'b1100: bcd = 4'b1001;
            default: bcd = 4'bxxxx;
        endcase
    end
endmodule
