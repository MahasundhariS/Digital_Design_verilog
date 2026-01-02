module mux_2_1(
input a, b,
input s,
output y);
wire s_bar, w1, w2;
not (s_bar, s);
and (w1, a, s_bar);
and (w2, b, s);
or (y, w1, w2);
endmodule
