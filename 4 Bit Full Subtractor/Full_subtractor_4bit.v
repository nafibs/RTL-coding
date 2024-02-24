`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nafi Bin Sulaiman
// 
// Create Date: 02/24/2024 05:10:43 PM
// Design Name: 
// Module Name: Full_subtractor_4bit
// Project Name: 
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


module Full_subtractor(A,B,Bin,Diff,Bout);
input A,B,Bin;
output Diff,Bout;
assign Diff=A^B^Bin;
assign Bout=(~A&B)|(B&Bin)|(~A&Bin);
endmodule


module Full_subtractor_4bit(A,B,Bin,Diff,Bout);
input [3:0]A,B;
input Bin;
output [3:0]Diff;
output Bout;
wire [2:0]b;
Full_subtractor FS1(A[0],B[0],Bin,Diff[0],b[0]);
Full_subtractor FS2(A[1],B[1],b[0],Diff[1],b[1]);
Full_subtractor FS3(A[2],B[2],b[1],Diff[2],b[2]);
Full_subtractor FS4(A[3],B[3],b[2],Diff[3],Bout);
endmodule
