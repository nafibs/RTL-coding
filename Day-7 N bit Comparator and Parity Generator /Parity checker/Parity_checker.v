
module Parity_checker(data,p,e);
input [7:0]data;
input p;
output e;
assign e=((^data)^p)==1;
endmodule

