module Adder_subtractor_tb;
reg [3:0]A,B;
reg cin;
wire [3:0]Sum;
wire Carry;
Adder_subtractor c1(A,B,cin,Sum,Carry); 
initial 
begin
{A,B}=8'b1001_0010;cin=0;#5//9+2
{A,B}=8'b1011_0110;cin=1;#5//11+6
$stop;
end
endmodule
