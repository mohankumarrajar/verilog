module siso(
        input si,clk,clr,
        output reg so);

        reg[3:0] store;
        always @(posedge clk)begin
                if(clr==1)begin
                        store =4'b0;
        end
        else begin
                store=store>>1;
                store[3]<=si;
                so<=store[0];
        end
end
endmodule
