module tb;
reg A,B;
wire Y;
NOTmuxRealized x1(A,B,Y); 
initial
begin
A=0;B=0;#5
A=0;B=1;#5
A=1;B=0;#5
A=1;B=1;#5
$stop;
end
endmodule
