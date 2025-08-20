module sram(
    input clk,
    input rst,      
    input wr,       
    input [3:0] din,
    input [2:0] add,
    output reg [3:0] dout
);

   
    reg [3:0] ram [7:0];
    integer i;

    always @(posedge clk) begin
        if (rst) begin
            dout <= 4'b0000;
            for (i = 0; i < 8; i = i + 1)
                ram[i] <= 4'b0000;  
        end
        else if (wr) begin
            ram[add] <= din;       
        end
        else begin
            dout <= ram[add];       
        end
    end
endmodule
