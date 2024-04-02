//4x1 Multiplexer
module mux4x1(A,B,C,D,S0,S1,Y);
input A,B,C,D,S0,S1;
output Y;
assign Y= S1?S0?D:C:S0?B:A;
endmodule

//Implentation of SOP function f(A, B, C) = m(0, 1, 4, 6, 7) and MUX :

module Fn1_using_mux(A,B,C,Y);
input A,B,C;
output Y;
mux4x1 m(1,0,~C,1,B,A,Y);
endmodule


