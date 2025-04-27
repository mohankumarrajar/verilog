module jk(input j,k,output reg q,output qb); 
assign qb=~q;
always @(*) begin
case ({j,k})
2'b00:q=q;
2'b01:q=1'b0;
2'b10:q=1'b1;
2'b11:q=1'bx;
endcase
end
endmodule
