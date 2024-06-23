module tff_test;
reg t,clk,RST;
wire Q,Qbar;
tff t1(t,clk,RST,Q,Qbar);
initial
begin
clk=0;
RST=1;#5
RST=0;
t=0;#5
t=1;#5
t=0;#5
t=1;#5
t=0;#5
t=1;#5
t=0;#5
t=1;#5
#100
$stop;
end
always #5 clk=~clk;
endmodule
