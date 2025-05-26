module jkff(input j,k,clk,rs,output reg q,output qb);
always @ (posedge clk) begin
if (rs) begin
q<=1;
end
else
case ({j,k})
2'b00 : q<=q; //nochange
2'b01 : q<=1'b0; // reset
2'b10 : q<=1'b1; //set
2'b11 : q<=1'bx; //toggle
endcase
end
assign qb=~q;
endmodule
