
module demux1x4(I,S,D);
input I;
input [1:0]S;
output [3:0]D;

assign D[0]=~S[1]&~S[0]&I;
assign D[1]=~S[1]&S[0]&I;
assign D[2]=S[1]&~S[0]&I;
assign D[3]=S[1]&S[0]&I;

endmodule

