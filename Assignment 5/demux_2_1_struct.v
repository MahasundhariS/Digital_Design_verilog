module demux_1_2_struct (
input d,
input s,
output y0, y1
);
wire s_bar;
// NOT gate
not (s_bar, s);
// AND gates
and (y0, d, s_bar);  // s = 0 ? y0 = d
and (y1, d, s);      // s = 1 ? y1 = d
endmodule
