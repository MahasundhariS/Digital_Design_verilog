module priority_encoder_8_3(
    input  i0,i1,i2,i3,i4,i5,i6,i7,
    output [2:0] O
);

assign O[2] = i4 | i5 | i6 | i7;

assign O[1] = (i6 | i7) |
              (~i7 & ~i6 & (i2 | i3 | i4 | i5));

assign O[0] = (i7 | i5 | i3 | i1) &
              ~(i6 | i4 | i2 | i0);

endmodule
