module Subtractor_tb;
reg A,B,Bin;
wire  Diff,Bout;
Subtractor x1(A,B,Bin,Diff,Bout);
initial 
begin
{A,B,Bin}=3'b000;#10
{A,B,Bin}=3'b001;#10
{A,B,Bin}=3'b010;#10
{A,B,Bin}=3'b011;#10
{A,B,Bin}=3'b100;#10
{A,B,Bin}=3'b101;#10
{A,B,Bin}=3'b110;#10
{A,B,Bin}=3'b111;#10
$stop;
end
endmodule
