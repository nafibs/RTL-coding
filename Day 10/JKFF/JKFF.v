module JKflipflop(J,K,CLK,RST,Q,Qbar);
input J,K,CLK,RST;
output reg Q,Qbar;
always@(negedge CLK,negedge RST)
if(!RST)
begin
if(J==0 & K==1)
begin
Q=0;
Qbar =~Q;
end
else if(J==1 & K==0)
begin
Q=1;
Qbar=~Q;
end
else if(J==1 & K==1)
begin
Q<=Qbar;
Qbar<=Q;
end
end
else begin
Q=0;
Qbar=~Q;
end
endmodule

