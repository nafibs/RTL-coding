module demux1x4_tb;
reg I;
reg [1:0]S;
wire [3:0]D;
demux1x4 dem1(I,S,D);
initial
begin
{I,S}=3'b100;#10
{I,S}=3'b101;#10
{I,S}=3'b110;#10
{I,S}=3'b111;#10
{I,S}=3'b000;#10
{I,S}=3'b001;#10
{I,S}=3'b010;#10
{I,S}=3'b011;#10
$stop;
end
endmodule
