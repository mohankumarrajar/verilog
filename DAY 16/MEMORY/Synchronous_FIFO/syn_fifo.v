module sync_fifo #(parameter WIDTH=8, DEPTH=16) (
    input clk, rst,
    input wr_en, rd_en,
    input [WIDTH-1:0] din,
    output reg [WIDTH-1:0] dout,
    output full, empty
);

reg [WIDTH-1:0] mem [DEPTH-1:0];
reg [$clog2(DEPTH):0] wp, rp;

assign full  = ((wp+1) == rp);
assign empty = (wp == rp);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        wp <= 0; rp <= 0; dout <= 0;
    end else begin
        if (wr_en && !full) begin
            mem[wp] <= din;
            wp <= wp + 1;
        end
        if (rd_en && !empty) begin
            dout <= mem[rp];
            rp <= rp + 1;
        end
    end
end
endmodule
