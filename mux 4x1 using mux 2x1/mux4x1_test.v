module mux4x1_test;
reg A,B,C,D;
reg [1:0]S;
wire F;
mux4x1 x1(A,B,C,D,S,F);
initial
begin

{A,B,C,D,S}=6'b101000;#10
{A,B,C,D,S}=6'b101001;#10
{A,B,C,D,S}=6'b101010;#10
{A,B,C,D,S}=6'b101011;#10
{A,B,C,D,S}=6'b110000;#10
{A,B,C,D,S}=6'b110001;#10
{A,B,C,D,S}=6'b110010;#10
{A,B,C,D,S}=6'b110011;#10
{A,B,C,D,S}=6'b100100;#10
{A,B,C,D,S}=6'b100101;#10
{A,B,C,D,S}=6'b100110;#10
{A,B,C,D,S}=6'b100111;

$stop;
end
endmodule
