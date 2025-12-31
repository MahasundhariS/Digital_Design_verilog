module mux_2_1_struct (
input i0, i1,
input s,
output y
);
//structural model
wire s_bar;
wire w0, w1;
// NOT gate
not (s_bar, s);
// AND gate
and (w0, i0, s_bar);
and (w1, i1, s);
//OR gate
or (y, w0, w1);
endmodule
