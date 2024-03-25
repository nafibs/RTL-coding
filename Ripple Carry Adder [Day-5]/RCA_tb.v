
module RCA_tb;
reg [3:0]A,B;
reg Cin;
wire  [3:0]Sum;
wire Cout;
RCA_4bit x1(A,B,Cin,Sum,Cout);
initial 
begin
//A-4bit ,B-4bit,Cin -1bit total=9
{A,B,Cin}=9'b100100111;#10  //9+3+1=13
{A,B,Cin}=9'b100100110;#10  //9+3+0=12
{A,B,Cin}=9'b110100010;#10  //13+1+0=14
{A,B,Cin}=9'b110100011;#10  //13+1+1=15
{A,B,Cin}=9'b100111000;#10  //9+12+0=21
{A,B,Cin}=9'b100111001;#10  //9+12+1=22
{A,B,Cin}=9'b000110001;#10  //1+8+1=10
{A,B,Cin}=9'b111001110;#10  //14+7+0=21
$stop;
end
endmodule
