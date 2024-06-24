module dff_test;
reg D,clk,RST;
wire Q,Qb;

dff d1(D,clk,RST,Q,Qb);
initial
clk=0;
always #5 clk<=~clk; 
initial 
begin
RST=1;#10
RST=0;
D=1'b0;#10
D=1'b1;#10
D=1'b0;#10
D=1'b1;#10
D=1'b0;#10
D=1'b1;#10
D=1'b0;#10
D=1'b1;#10

#100
$finish;
end
endmodule
