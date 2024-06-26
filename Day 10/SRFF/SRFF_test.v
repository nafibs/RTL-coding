module SRff_test;
reg S,R,CLK,RST;
wire Q,Qbar;

SRff x1(S,R,CLK,RST,Q,Qbar);
initial
CLK=0;
always #5 CLK<=~CLK; 
initial 
begin
RST=1;#10
RST=0;
{S,R}=2'b00;#10
{S,R}=2'b01;#10
{S,R}=2'b10;#10
{S,R}=2'b00;#10
{S,R}=2'b01;#10
{S,R}=2'b10;#10

#100
$finish;
end
endmodule
