/*Truth table
i2 i1 i0 o7 o6 o5 o4 o3 o2 o1 o0
0  0   0  0  0  0  0  0  0  0  1
0  0   1  0  0  0  0  0  0  1  0
0  1   0  0  0  0  0  0  1  0  0
0  1   1  0  0  0  0  1  0  0  0
1  0   0  0  0  0  1  0  0  0  0
1  0   1  0  0  1  0  0  0  0  0
1  1   0  0  1  0  0  0  0  0  0
1  1   1  1  0  0  0  0  0  0  0
*/



module decoder_3_8(
    input  [2:0] i,
    output [7:0] o
);

assign o[0] = ~i[2] & ~i[1] & ~i[0];
assign o[1] = ~i[2] & ~i[1] &  i[0];
assign o[2] = ~i[2] &  i[1] & ~i[0];
assign o[3] = ~i[2] &  i[1] &  i[0];
assign o[4] =  i[2] & ~i[1] & ~i[0];
assign o[5] =  i[2] & ~i[1] &  i[0];
assign o[6] =  i[2] &  i[1] & ~i[0];
assign o[7] =  i[2] &  i[1] &  i[0];

endmodule
