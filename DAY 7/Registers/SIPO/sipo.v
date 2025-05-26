module sipo(
        input si,clk,clr,
        output reg [3:0]po);

        reg[3:0]store;

        always@(posedge clk)begin
                if(clr==1)begin
                        store=4'b0;
                end
                else begin
                        store<=store>>1;
                        store[3]<=si;
                end
                po<=store;
        end
        endmodule
