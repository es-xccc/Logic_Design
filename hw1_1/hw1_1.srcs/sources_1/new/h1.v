`timescale 1ns / 1ps
/*
(AB)(C'D')+(EF+G)'
=ABC'D'+((E'+F')G')
=ABC'D'+E'G'+F'G'
*/
module hw1_1(a,b,c,d,e,f,g,ans);
input a,b,c,d,e,f,g;
output ans;
wire c1,d1,e1,f1,g1;
wire w1,w2,w3;
not ga1(c1,c);
not ga2(d1,d);
not ga3(e1,e);
not ga4(f1,f);
not ga5(g1,g);
and ga6(w1,a,b,c1,d1);//ABC'D'
and ga7(w2,e1,g1);//E'G'
and ga8(w3,f1,g1);//F'G'
or ga9(ans,w1,w2,w3);//ABC'D'+E'G'+F'G''
endmodule
