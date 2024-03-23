
module priority_encoder(I,en,F);
input en;
input [7:0]I;
output reg[2:0]F;
always@(*)
if(en)
begin
casex(I)
8'b0000_0001: F=3'b000;
8'b0000_001x: F=3'b001;
8'b0000_01xx: F=3'b010;
8'b0000_1xxx: F=3'b011;
8'b0001_xxxx: F=3'b100;
8'b001x_xxxx: F=3'b101;
8'b01xx_xxxx: F=3'b110;
8'b1xxx_xxxx: F=3'b111;
default:F=3'bzzz;
endcase
end
else  F=3'bxxx;
endmodule



