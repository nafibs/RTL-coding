module Nbit_comparator(A,B,Less,Great,Equal);
input [N-1:0]A,B;
parameter N=4;
output reg Less,Great,Equal;

always@(*)begin
if(A>B) 
begin 
Less=1'b0;Great=1'b1;Equal=1'b0;
end
else if(A<B) 
begin 
Less=1'b1;Great=1'b0;Equal=1'b0;
end
else if(A==B) 
begin 
Less=1'b0;Great=1'b0;Equal=1'b1;
end
end
endmodule
