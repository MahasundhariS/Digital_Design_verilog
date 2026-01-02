module mux_4_1 (
input i0,i1, i2, i3,
input s0, s1,
output y);
wire s0_bar, s1_bar;
wire w0, w1, w2, w3;

not (s0_bar, s0);
not (s1_bar, s1);

and (w0, i0, s1_bar, s0_bar);
and (w1, i1, s_bar, s0);
and (w2, i2, s1, s0_bar);
and (w3, i3, s1, s0);
endmodule
