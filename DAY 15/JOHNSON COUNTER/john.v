module john(
        input clk,rst,
        output reg[3:0] q);
reg [3:0]a;

always@(posedge clk) begin
        if(rst)begin
                a=4'b0000;
        end
        else begin
                a[3]<=a[2];
                a[2]<=a[1];
                a[1]<=a[0];
                a[0]<=(~a[3]);

        end
        assign q=a;
end
        endmodule
