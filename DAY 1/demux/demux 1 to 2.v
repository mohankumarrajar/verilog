module demux1to2 (
    input wire in,      
    input wire a,       
    output wire [1:0] y 
);
   
    assign y[0] = in & ~a; 
    assign y[1] = in & a;  

endmodule
      
