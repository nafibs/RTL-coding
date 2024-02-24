`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nafi Bin Sulaiman
// 
// Create Date: 02/24/2024 05:23:48 PM
// Design Name: 
// Module Name: TB_Full_subtractor_4bit
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


module TB_Full_subtractor_4bit;
reg [3:0]A,B;
reg Bin;
wire [3:0]Diff;
wire Bout;
Full_subtractor_4bit f1(A,B,Bin,Diff,Bout);
initial 
begin
A=4'b0011;B=4'b0100;Bin=0;#10 //carry 0
A=4'b0011;B=4'b0100;Bin=1;#10// carry 1

A=4'b1011;B=4'b1101;Bin=0;#10 //carry 0
A=4'b1011;B=4'b1101;Bin=1;#10 //carry 1

A=4'b0111;B=4'b0101;Bin=0;#10 //carry 0
A=4'b0111;B=4'b0101;Bin=1;#10 //carry 1

A=4'b1001;B=4'b0011;Bin=0;#10 //carry 0
A=4'b1001;B=4'b0011;Bin=1;#10 //carry 1
$stop;
end
endmodule
