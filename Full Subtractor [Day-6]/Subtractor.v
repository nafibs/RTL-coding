module Subtractor(A,B,Bin,Diff,Bout);
input A,B,Bin;
output  Diff,Bout;
assign Diff=A^B^Bin;
assign Bout=(~A&B)|(B&Bin)| (~A&Bin);
endmodule
