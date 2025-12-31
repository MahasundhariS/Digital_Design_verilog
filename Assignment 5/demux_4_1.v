module demux_4_1(
input y,
input [1:0] sel,
output o0 , o1,o2,o3);

//00->o0 ; 01->o1 ; 10->o2 ; 11->o3
assign o0=y & (~sel0) & (~sel1);
assign o1=y & (~sel0) & (sel1);
assign o2=y & (sel0) & (~sel1);
assign o3=y & (sel0) & (sel1);
endmodule
