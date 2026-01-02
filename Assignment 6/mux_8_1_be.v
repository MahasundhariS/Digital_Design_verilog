module mux_8_1_be(
input i0, i1, i2, i3, i4, i5, i6, i7, s2, s1, s0,
output reg y);

always @(i0 or i1 or i2 or i3 or i4 or i5 or i6 or i7)begin
case({s2, s1, s0})
3'b000: y = i0;
3'b001: y = i1;
3'b010: y = i2;
3'b011: y = i3;
3'b100: y = i4;
3'b101: y = i5;
3'b110: y = i6;
3'b111: y = i7;
endcase

end
endmodule
