module demux_4_1_gl(
input d, 
input s0, s1,
output y0, y1, y2,y3);
wire so_bar, s1_bar;

not (s0_bar, so);
not (s1_bar,s1);

and (y0, d, s1_bar, s0_bar);
and (y1, d, s1_bar, s0);
and (y2, d, s1, s0_bar);
and (y3, d, s1,s0);
endmodule
