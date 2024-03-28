module Parity_generator(A,ep,op);
input [3:0]A;
output reg ep,op;
always@(*)
if(^A==0)
begin 
ep=1;op=0;
end
else if(^A==1)
begin 
ep=0;op=1;
end
endmodule
