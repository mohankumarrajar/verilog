module dram #(
        parameter addr_width=8,
        parameter data_width=16)(
        input wire clk,
        input wire[addr_width-1:0]addr_a,
        input wire[addr_width-1:0]addr_b,
        input wire[data_width-1:0]write_data_a,
        input wire[data_width-1:0]write_data_b,
        input wire write_en_a,
        input wire write_en_b,
        input wire read_en_a,
        input wire read_en_b,
        output reg[data_width-1:0]read_data_a,
        output reg[data_width-1:0]read_data_b);

         reg[data_width-1:0]mem[0:(1<<addr_width)-1];

         always @(posedge clk)begin
                 if(write_en_a)begin
                         mem[addr_a]<=write_data_a;
                 end
                 if(read_en_a)begin
                         read_data_a<=mem[addr_a];
                 end
         end

         always@(posedge clk)begin
                 if(write_en_b)begin
                         mem[addr_b]<=write_data_b;
                 end
                 if(read_en_b)begin
                         read_data_b<=mem[addr_b];
                 end
         end
         endmodule
