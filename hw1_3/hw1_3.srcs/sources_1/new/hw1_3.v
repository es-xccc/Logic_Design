`timescale 1ns / 1ps
/*
m(1,3,6,7)=S'D1'D0+S'D1D0+SD1D0'+SD1D0
*/
module hw1_3(S,D1,D0,Y);
input S,D1,D0;
output Y;
wire m1,m2,m3,m4;
wire rs,rd1,rd0;
not ga1(rs,S);
not ga2(rd1,D1);
not ga3(rd0,D0);
and ga4(m1,rs,rd1,D0);
and ga5(m2,rs,D1,D0);
and ga6(m3,S,D1,rd0);
and ga7(m4,S,D1,D0);
or ga8(Y,m1,m2,m3,m4);
endmodule
