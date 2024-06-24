module dff(D,clk,RST,Q,Qb);
input D,clk,RST;
output reg Q,Qb;
initial
begin
Q=0;
Qb=~Q; 
end
always@(posedge clk,posedge RST)
if(!RST)
begin
if(D==0)
begin
Q=0;
Qb=~Q;
end 
else 
begin
Q=1;
Qb=~Q;
end
end
endmodule

