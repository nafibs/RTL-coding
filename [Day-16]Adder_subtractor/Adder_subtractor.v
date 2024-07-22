module full_adder(A,B,cin,Sum,Carry);
input A,B;
input cin;
output Sum;
output Carry;
assign {Carry,Sum}=A+B+cin;
endmodule

module Adder_subtractor(A,B,cin,Sum,Carry);
input [3:0]A,B;
input cin;
output [3:0]Sum;
output Carry;
wire w0,w1,w2,w3;
wire c0,c1,c2;
xor x1(w0,B[0],cin);
xor x2(w1,B[1],cin);
xor x3(w2,B[2],cin);
xor x4(w3,B[3],cin);
full_adder f1(A[0],w0,cin,Sum[0],c0);
full_adder f2(A[1],w1,c0,Sum[1],c1);
full_adder f3(A[2],w2,c1,Sum[2],c2);
full_adder f4(A[3],w3,c2,Sum[3],Carry);
endmodule


