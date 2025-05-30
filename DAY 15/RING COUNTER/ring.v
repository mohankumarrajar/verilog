module ring (
    input clk,
    input rst,
    output reg [3:0] q
);

reg [3:0]a;

always @(posedge clk) begin
    if (rst)
        a <= 4'b0001;
    else
        a <= {a[2:0], a[3]};  // Rotate left
end

always @(*) begin
    q = a;
end

endmodule
