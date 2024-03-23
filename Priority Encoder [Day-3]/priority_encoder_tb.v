module priority_encoder_tb;
reg en;
reg [7:0]I;
wire [2:0]F;

priority_encoder x1(I,en,F);

initial
begin
{en,I}=9'b00000_0001; #10
{en,I}=9'b10000_0010; #10
{en,I}=9'b10000_0100; #10
{en,I}=9'b10000_1000; #10
{en,I}=9'b10001_0000; #10
{en,I}=9'b10010_1110; #10
{en,I}=9'b10110_1110; #10
{en,I}=9'b11010_1110; #10
{en,I}=9'b10001_0000; #10
{en,I}=9'b11010_1111; #10
{en,I}=9'b10110_1111; #10
{en,I}=9'b10011_1110; #10
{en,I}=9'b10000_0000; #10
$stop;
end
endmodule
