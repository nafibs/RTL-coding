module fifteencompSub_tb;
reg [15:0]A;  
reg [15:0]B;  
wire [15:0]Diff;
wire Sign;
fifteencompSub x1(A,B,Diff,Sign);
initial 
begin
A = 16'hFF04; B = 16'h2454; #10//55984
B = 16'h00ff; A = 16'h0f21; #10//3618
$stop;
end
endmodule
