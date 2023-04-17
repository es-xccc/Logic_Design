`timescale 1ns / 1ps

//using 4 full adder

module fa(a,b,c,s,cout);
input a,b,c;
output s,cout;
wire w1,w2,w3;
xor ga1(s,a,b,c);
and ga2(w1,a,b);
and ga3(w2,c,b);
and ga4(w3,a,c);
or ga5(cout,w1,w2,w3);
endmodule

module hw1_2(A,B,Cin,S,Cout);
input [3:0] A,B;
input Cin;
output [3:0] S;
output Cout;
wire c1,c2,c3;

fa fa1(A[0],B[0],Cin,S[0],c1);
fa fa2(A[1],B[1],c1,S[1],c2);
fa fa3(A[2],B[2],c2,S[2],c3);
fa fa4(A[3],B[3],c3,S[3],Cout);

endmodule