module seven(
        input[3:0]bcd,
        output reg[6:0]led
);
        always@(bcd)begin
                case (bcd)
                        0 : led=7'b1111110;
                        1 : led=7'b0110000;
                        2 : led=7'b1101101;
                        3 : led=7'b1111001;
                        4 : led=7'b0110011;
                        5 : led=7'b1011011;
                        6 : led=7'b1011111;
                        7 : led=7'b1110000;
                        8 : led=7'b1111111;
                        9 : led=7'b1111011;
                        default: led=7'bxxxxxxx;
endcase
end
endmodule
