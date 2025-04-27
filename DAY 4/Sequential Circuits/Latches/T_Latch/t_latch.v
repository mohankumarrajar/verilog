module t(input t,output reg q,output qb);
assign qb=~q;
always @(*) begin
case ({t})
1'b0:q=q; //reset
1'b1:q=1'b1; //toggle
endcase
end
endmodule
