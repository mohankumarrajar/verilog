module mealay_11011(
        input in,clk,rst,
        output out);

parameter a = 4'd1;
parameter b = 4'd2;
parameter c = 4'd3;
parameter d = 4'd4;
parameter e = 4'd5;

reg[4:0] state,next_state;

always@(posedge clk or negedge rst)begin

        if (!rst)begin
                state<=a;
        end
        else
                state<=next_state;
end
always @ (*)begin
case (state)
a : next_state = in ? b : a;
b : next_state = in ? c : a;
c : next_state = in ? c : d;
d : next_state = in ? e : a;
e : next_state = in ? a : a;
default : next_state = a;
endcase
end
  assign out = (state==e) && (in==1);
endmodule
