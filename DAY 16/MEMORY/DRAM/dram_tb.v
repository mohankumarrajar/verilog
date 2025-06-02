module d_tb;

    reg clk;
    reg [7:0] addr_a, addr_b;
    reg [15:0] write_data_a, write_data_b;
    reg write_en_a, write_en_b;
    reg read_en_a, read_en_b;
    wire [15:0] read_data_a, read_data_b;


    d #(
        .addr_width(8),
        .data_width(16)
    ) dut (
        .clk(clk),
        .addr_a(addr_a),
        .addr_b(addr_b),
        .write_data_a(write_data_a),
        .write_data_b(write_data_b),
        .write_en_a(write_en_a),
        .write_en_b(write_en_b),
        .read_en_a(read_en_a),
        .read_en_b(read_en_b),
        .read_data_a(read_data_a),
        .read_data_b(read_data_b)
    );


    initial clk = 0;
    always #5 clk = ~clk;


    initial begin

        addr_a = 0; addr_b = 0;
        write_data_a = 0; write_data_b = 0;
        write_en_a = 0; write_en_b = 0;
        read_en_a = 0; read_en_b = 0;
       #10 addr_a = 8'h10; write_data_a = 16'hDEAD; write_en_a = 1;
        #10 write_en_a = 0;


        #10 read_en_a = 1; addr_a = 8'h10;
        #10 read_en_a = 0;


        #10 addr_b = 8'h20; write_data_b = 16'hBEEF; write_en_b = 1;
        #10 write_en_b = 0;


        #10 read_en_b = 1; addr_b = 8'h20;
        #10 read_en_b = 0;

        #10 addr_a = 8'h30; write_data_a = 16'hAAAA; write_en_a = 1;
            addr_b = 8'h40; write_data_b = 16'hBBBB; write_en_b = 1;
        #10 write_en_a = 0; write_en_b = 0;


        #10 addr_a = 8'h30; read_en_a = 1;
            addr_b = 8'h40; read_en_b = 1;
        #10 read_en_a = 0; read_en_b = 0;


        #20 $finish;
    end


    initial begin
        $monitor("Time=%0t | AddrA=%h WDataA=%h WE_A=%b RE_A=%b RDataA=%h || AddrB=%h WDataB=%h WE_B=%b RE_B=%b RDataB=%h",
                  $time, addr_a, write_data_a, write_en_a, read_en_a, read_data_a,
                         addr_b, write_data_b, write_en_b, read_en_b, read_data_b);
    end

endmodule

                                      
