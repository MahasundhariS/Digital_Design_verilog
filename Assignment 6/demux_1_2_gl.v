module demux_2_1_gl(
input d, 
input s,
output y0, y1);
wire s_bar;

not (s_bar, s);
and (y0, d, s_bar);
and (y1, d, s);
endmodule
