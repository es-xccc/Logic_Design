`timescale 1ns / 1ps

module hw1_4(bcd,seg);
input [3:0] bcd;
output [6:0] seg;
wire r[3:0];
wire m[9:0];
not ga1(r[3],bcd[3]);
not ga2(r[2],bcd[2]);
not ga3(r[1],bcd[1]);
not ga4(r[0],bcd[0]);
and ga5(m[0],r[3],r[2],r[1],r[0]);
and ga6(m[1],r[3],r[2],r[1],bcd[0]);
and ga7(m[2],r[3],r[2],bcd[1],r[0]);
and ga8(m[3],r[3],r[2],bcd[1],bcd[0]);
and ga9(m[4],r[3],bcd[2],r[1],r[0]);
and ga10(m[5],r[3],bcd[2],r[1],bcd[0]);
and ga11(m[6],r[3],bcd[2],bcd[1],r[0]);
and ga12(m[7],r[3],bcd[2],bcd[1],bcd[0]);
and ga13(m[8],bcd[3],r[2],r[1],r[0]);
and ga14(m[9],bcd[3],r[2],r[1],bcd[0]);
or ga15(seg[0],m[1],m[4],m[6]);
or ga16(seg[1],m[5],m[6]);
or ga17(seg[2],m[2]);
or ga18(seg[3],m[1],m[4],m[7],m[9]);
or ga19(seg[4],m[1],m[3],m[4],m[5],m[7],m[9]);
or ga20(seg[5],m[1],m[2],m[3],m[7]);
or ga21(seg[6],m[0],m[1],m[7]);
endmodule
