module tff(t,clk,RST,Q,Qbar);
input t,clk,RST;
output reg Q,Qbar;
initial 
begin
Q=0;
Qbar=~Q; 
end
always@(negedge clk,negedge RST)
if(!RST)
begin
if(t==1)
begin
Q<=Qbar;
Qbar<=Q;
end
end
endmodule
