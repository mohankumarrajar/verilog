module sram #(
    parameter addr_width = 8,
    parameter data_width = 16
)(
    input wire clk,
    input wire reset,
    input wire [addr_width-1:0] addr,
    input wire [data_width-1:0] write_data,
    input wire write_en,
    input wire read_en,
    output reg [data_width-1:0] read_data
);

    reg [data_width-1:0] mem [0:(1<<addr_width)-1];

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            read_data <= 0;
        end
        else begin
            if (write_en) begin
                mem[addr] <= write_data;
            end
            if (read_en) begin
                read_data <= mem[addr];
            end
        end
    end
endmodule
