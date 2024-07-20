module mux2x1(A,B,S,F);
input A,B,S;
output F;
assign F=~S&A|S&B;
endmodule

module ANDmuxRealized(A,B,Y);
input A,B;
output Y;
mux2x1 x1(0,B,A,Y); //mux2x1(A,B,S,F);
endmodule
