module Nbit_comparator_tb;
reg [N-1:0]A,B;
parameter N=4;
wire  Less,Great,Equal;
Nbit_comparator x1(A,B,Less,Great,Equal);
initial 
begin
{A,B}=8'b1000_0001;#5
{A,B}=8'b1010_0111;#5
{A,B}=8'b1101_1111;#5
{A,B}=8'b1011_0101;#5
{A,B}=8'b1111_1111;#5

$stop;
end
endmodule
