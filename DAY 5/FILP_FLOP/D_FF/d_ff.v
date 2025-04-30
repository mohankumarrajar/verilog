module dff(input d,clk,rs,output reg q,output qb);
always @ (posedge clk) begin
if (rs) begin
q<=1;
end
else
case ({d})
1'b0 : q<=1'b1; 
1'b1 : q<=1'b0; 
endcase
end
assign qb = ~q;
endmodule
