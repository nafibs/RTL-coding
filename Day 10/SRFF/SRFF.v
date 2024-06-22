module SRff(S,R,CLK,RST,Q,Qbar);
input S,R,CLK,RST;
output reg Q,Qbar;
always@(posedge CLK,posedge RST)
if(!RST)
begin
if(S==0 & R==1)
begin
Q=0;
Qbar =~Q;
end
else if(S==1 & R==0)
begin
Q=1;
Qbar=~Q;
end
end
else begin
Q=0;
Qbar=~Q;
end
endmodule



