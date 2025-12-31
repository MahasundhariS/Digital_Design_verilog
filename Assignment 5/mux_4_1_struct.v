module mux_4_1_struct (
input i0, i1, i2, i3,
input s0, s1,
output y
);
// structural model
wire s0_bar, s1_bar;
wire w0, w1, w2, w3;
// NOT gate
not (s0_bar, s0);
not (s1_bar, s1);
// AND gate
and (w0, i0, s0_bar, s1_bar);
and (w1, i1, s0_bar, s1);
and (w2, i2, s0, s1_bar);
and (w3, i3, s0, s1);
// OR gate
or (y, w0, w1, w2, w3);
endmodule
