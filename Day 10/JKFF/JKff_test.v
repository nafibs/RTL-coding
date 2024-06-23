
module JKff_test;
reg J,K,CLK,RST;
wire Q,Qbar;

JKflipflop x1(J,K,CLK,RST,Q,Qbar);
initial
CLK=0;
always #5 CLK<=~CLK; 
initial 
begin
RST=1;#10
RST=0;
{J,K}=2'b00;#10
{J,K}=2'b01;#10
{J,K}=2'b10;#10
{J,K}=2'b11;#10
{J,K}=2'b00;#10
{J,K}=2'b01;#10
{J,K}=2'b10;#10
{J,K}=2'b11;#10

#100
$finish;
end
endmodule
