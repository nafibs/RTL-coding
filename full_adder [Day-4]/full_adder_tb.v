module full_adder_tb;
reg A,B,Cin;
wire  Sum,Cout;
full_adder x1(A,B,Cin,Sum,Cout);
initial 
begin
{A,B,Cin}=3'b000;#10
{A,B,Cin}=3'b001;#10
{A,B,Cin}=3'b010;#10
{A,B,Cin}=3'b011;#10
{A,B,Cin}=3'b100;#10
{A,B,Cin}=3'b101;#10
{A,B,Cin}=3'b110;#10
{A,B,Cin}=3'b111;#10
$stop;
end
endmodule
