
//test bench for SOP function f(A, B, C) = m(0, 1, 4, 6, 7) and MUX 
module Fn1_using_mux_tb;
reg A,B,C;
wire Y;
Fn_using_mux m1(A,B,C,Y);
initial
begin
{A,B,C}=3'b000;#5
{A,B,C}=3'b001;#5
{A,B,C}=3'b010;#5
{A,B,C}=3'b011;#5
{A,B,C}=3'b100;#5
{A,B,C}=3'b101;#5
{A,B,C}=3'b110;#5
{A,B,C}=3'b111;#5
$stop;
end
endmodule
