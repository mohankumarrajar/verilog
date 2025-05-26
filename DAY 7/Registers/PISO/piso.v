module piso(
        input [3:0]pi,input clk,clr,load,
        output reg so);

reg [3:0]store;

always@(posedge clk)begin
        if(clr==1)begin
                store <=4'b0000;
        end
        else if (load!=1)begin
store <= pi;
end
else begin
so<= store[0];
store = store >>1;
end
end
endmodule
