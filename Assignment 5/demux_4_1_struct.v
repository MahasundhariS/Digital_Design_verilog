module demux_1_4_struct (
input d,
input s0, s1,
output y0, y1, y2, y3
);
wire s0_bar, s1_bar;
// NOT gates
not (s0_bar, s0);
not (s1_bar, s1);
// AND gates
and (y0, d, s0_bar, s1_bar); 
and (y1, d, s0,     s1_bar); 
and (y2, d, s0_bar, s1);     
and (y3, d, s0,     s1); 
endmodule
