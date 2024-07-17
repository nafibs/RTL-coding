

module sixteencompSub(A,B,Diff,Sign);
input [15:0]A;  
input [15:0]B;  
output reg [15:0]Diff ;
output reg Sign;
reg [16:0]SumOut; 
reg [15:0]Bcomp;
always@(*)
begin
assign Bcomp =~B+1;
assign SumOut = A+Bcomp;
if(SumOut[16])
begin Diff = SumOut; Sign = 0; end
else
begin Diff = ~SumOut +1; Sign = 1; end
end
endmodule

