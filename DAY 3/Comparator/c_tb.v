module c_tb;
        reg [3:0]a,b;
        wire a_lt_b,a_gt_b,a_eq_b;

        c uut(
                .a(a),.b(b),.a_lt_b(a_lt_b),.a_gt_b(a_gt_b),.a_eq_b(a_eq_b));

        initial begin
                $dumpfile("c.vcd");
                $dumpvars();

                $monitor($time,"a=%b,b=%b,a_lt_b=%b,a_gt_b=%b,a_eq_b=%b",a,b,a_lt_b,a_gt_b,a_eq_b);

                #5 a=0000;b=0011;
                #5 a=0110;b=0111;
                #5 a=1100;b=1101;
                #5 a=1111;b=1001;
                #5 a=0001;b=0001;


        end
        endmodule
(ALTER)
module c_tb;
        reg [3:0]a,b;
        wire a_lt_b,a_gt_b,a_eq_b;

        c uut(
                .a(a),.b(b),.a_lt_b(a_lt_b),.a_gt_b(a_gt_b),.a_eq_b(a_eq_b));

        initial begin
                $dumpfile("c.vcd");
                $dumpvars();

                $monitor($time,"a=%b,b=%b,a_lt_b=%b,a_gt_b=%b,a_eq_b=%b",a,b,a_lt_b,a_gt_b,a_eq_b);

        repeat(5)begin
                a=$random;b=$random;#5;
        end

        end
        endmodule
