module pipo(input [3:0] pi,input clk,rs,output reg [3:0] po);
always @ (posedge clk)begin
if(rs==1)begin
po<=4'b0000;
end

else begin
po<=pi;
end
end
endmodule
