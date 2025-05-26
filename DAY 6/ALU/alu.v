module alu(
        input[15:0]a,b,
        input[3:0]in,
        output reg [15:0]out);

always@(*)begin
        case({in})
                4'b0000 : out=a+b;
                4'b0001 : out = a-b;
                4'b0010 : out = a*b;
                4'b0011 : out = a/b;
                4'b0100 : out = a<<1;
                4'b0101 : out = a>>1;
                4'b0110 : out = {a[6:0],a[7]};
                4'b0111 : out = {a[0],a[7:1]};
                4'b1001 : out = a&b;
                4'b1010 : out = a|b;
                4'b1011 : out = a^b;
                4'b1100 : out = ~(a&b);
                4'b1101 : out = ~(a^b);
                4'b1110 : out = (a>b);
                4'b1111 : out = (a<b);
                default : out=15'bx;
        endcase
end
endmodule
