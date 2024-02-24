`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2024 03:46:54 PM
// Design Name: Nafi Bin Sulaiman
// Module Name: Full_adder_4bit
// Project Name: 100 days of RTL coding
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Full_adder(A,B,Cin,Sum,Cout);
input A,B,Cin;
output Sum,Cout;
assign Sum=A^B^Cin;
assign Cout=(A&B)|(B&Cin)|(A&Cin);
endmodule


module Full_adder_4bit(A,B,Cin,Sum,Cout);
input [3:0]A,B;
input Cin;
output [3:0]Sum;
output Cout;
wire [2:0]c;
Full_adder F1(A[0],B[0],Cin,Sum[0],c[0]);
Full_adder F2(A[1],B[1],c[0],Sum[1],c[1]);
Full_adder F3(A[2],B[2],c[1],Sum[2],c[2]);
Full_adder F4(A[3],B[3],c[2],Sum[3],Cout);
endmodule
