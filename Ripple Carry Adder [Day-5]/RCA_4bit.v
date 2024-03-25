// 1bit Full adder
module full_adder(A,B,Cin,Sum,Cout);
input A,B,Cin;
output  Sum,Cout;
assign Sum=A^B^Cin;
assign Cout=(A&B)|(B&Cin)| (A&Cin);
endmodule
//4 bit Ripple carry adder
module RCA_4bit(A,B,Cin,Sum,Cout);
input [3:0]A,B;
input Cin;
output [3:0]Sum;
output Cout;
wire [2:0]C;
full_adder x1(A[0],B[0],Cin,Sum[0],C[0]);
full_adder x2(A[1],B[1],C[0],Sum[1],C[1]);
full_adder x3(A[2],B[2],C[1],Sum[2],C[2]);
full_adder x4(A[3],B[3],C[2],Sum[3],Cout);
endmodule


