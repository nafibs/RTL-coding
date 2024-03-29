module BinaryToGray_tb;
reg [N-1:0]binary;
wire [N-1:0]gray;
parameter N=4;
initial
begin
binary=4'b1010;#5
binary=4'b1010;#5
binary=4'b1011;#5
binary=4'b1110;#5
binary=4'b1101;#5
binary=4'b1010;#5
$stop;
end
endmodule
