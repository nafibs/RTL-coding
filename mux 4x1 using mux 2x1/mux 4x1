
module mux2x1(A,B,S,F);
input A,B,S;
output F;
assign F=(~S&A)|(S&B);
endmodule

module mux4x1(A,B,C,D,S,F);
input A,B,C,D;
input [1:0]S;
output F;
wire w1,w2;
mux2x1 x1(A,B,S[0],w1);
mux2x1 x2(C,D,S[0],w2);
mux2x1 x3(w1,w2,S[1],F);
endmodule

