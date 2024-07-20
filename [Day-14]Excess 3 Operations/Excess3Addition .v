module Excess3Addition(A,B,Exc3Sum,Exc3Carry,BCDSum,BCDCarry);
input [3:0]A,B;
output reg [3:0] Exc3Sum,Exc3Carry,BCDSum,BCDCarry;
reg [3:0]AExc3,BExc3;
reg [7:0]Sum;
always@*
begin 
AExc3= A+ 4'b0011;
BExc3= B+ 4'b0011;
Sum = AExc3 + BExc3;
if(Sum[4])
    begin
    Exc3Sum = Sum[3:0] + 4'b0011;
    Exc3Carry = Sum[7:4] + 4'b0011;
    BCDSum = Sum[3:0] ;
    BCDCarry = Sum[7:4];
    end
    else
    begin
    Exc3Sum = Sum[3:0] - 4'b0011;
    Exc3Carry = Sum[7:4];
    BCDSum = Exc3Sum - 4'b0011;
    BCDCarry = Sum[7:4];
    end
end
endmodule


