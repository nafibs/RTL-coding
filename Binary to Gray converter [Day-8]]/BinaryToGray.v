module BinaryToGray(binary,gray);
input [N-1:0]binary;
output reg [N-1:0]gray;
parameter N=4;
integer i;
always@(*)begin
gray[N-1] = binary[N-1];
 for(i=0 ; i<N-1 ; i=i+1) begin
    gray[i]=binary[i]^binary[i+1];
    end end
endmodule

