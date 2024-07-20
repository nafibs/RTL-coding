module Excess3Addition_tb;
reg [3:0]A,B;
wire  [3:0] Exc3Sum,Exc3Carry,BCDSum,BCDCarry;
excess3 x1(A,B,Exc3Sum,Exc3Carry,BCDSum,BCDCarry);
initial
begin
A=4'b1001;B=4'b0101;#5//9-5
A=4'b0001;B=4'b1000;#5//1-8
A=4'b0011;B=4'b0111;#5//3-7
A=4'b0101;B=4'b1001;#5//5-9
$stop;
end
endmodule
