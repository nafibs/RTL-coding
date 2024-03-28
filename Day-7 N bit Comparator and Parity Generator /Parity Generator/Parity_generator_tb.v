
module Parity_generator_tb;
reg[7:0]A;
wire ep,op;
Parity_generator p(A,ep,op);
initial 
begin
A=4'b1000;#5
A=4'b1011;#5
A=4'b1010;#5
A=4'b1111;#5
A=4'b1010;#5
A=4'b1100;#5
$stop;
end
endmodule
