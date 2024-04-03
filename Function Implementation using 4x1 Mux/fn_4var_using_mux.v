//F (A, B, C, D) = ?(0, 2, 5, 7, 8, 10, 13, 15)
module function_using_mux(A,B,C,D,Y);
input A,B,C,D;
output Y;
mux4x1x mux1(~D,D,~D,D,B,A,Y);
endmodule

