module Parity_checker_tb;
reg [7:0]data;
reg p;
wire e;
Parity_checker pe(data,p,e);
initial
begin
{data,p}=9'b100110011;#10//1
{data,p}=9'b110111111;#10//0
{data,p}=9'b100111111;#10//1
{data,p}=9'b100110010;#10//0
{data,p}=9'b100110000;#10//1
{data,p}=9'b100110111;#10//0
$stop;
end
endmodule
