module sram_tb;
    reg clk;
    reg reset;
    reg [7:0] addr;
    reg [15:0] write_data;
    reg write_en;
    reg read_en;
    wire [15:0] read_data;


    sram dut (
        .clk(clk),
        .reset(reset),
        .addr(addr),
        .write_data(write_data),
        .write_en(write_en),
        .read_en(read_en),
        .read_data(read_data)
    );


    initial clk = 0;
    always #5 clk = ~clk;


    initial begin

        reset = 1;
        addr = 0;
        write_data = 0;
        write_en = 0;
        read_en = 0;
       #10 reset = 0;


        #10 addr = 5; write_data = 16'hABCD; write_en = 1;
        #10 write_en = 0;


        #10 addr = 5; read_en = 1;
        #10 read_en = 0;


        #10 addr = 10; write_data = 16'h1234; write_en = 1;
        #10 write_en = 0;


        #10 addr = 10; read_en = 1;
        #10 read_en = 0;

        #20 $finish;
    end


    initial begin
        $monitor("Time=%0t reset=%b addr=%h write_data=%h write_en=%b read_en=%b read_data=%h",
                 $time, reset, addr, write_data, write_en, read_en, read_data);
    end
endmodule
                 
