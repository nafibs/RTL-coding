module ninescompSub_tb;
reg [3:0]A,B;
wire [3:0]Diff;
wire Sign;
ninescompSub x1(A,B,Diff,Sign);
initial
begin
A=4'b1001;B=4'b0101;#5//9-5
A=4'b0001;B=4'b1000;#5//1-8
A=4'b0011;B=4'b0111;#5//3-7
A=4'b0101;B=4'b1001;#5//5-9
$stop;
end
endmodule
