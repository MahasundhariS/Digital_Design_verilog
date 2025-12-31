module demux_1_4_be (
input d,
input s0, s1,
output reg y0, y1, y2, y3
);
//behaviorial model
always @(*) begin
if (s1 == 0 && s0 == 0) begin
    y0 = d;
    y1 = 0;
    y2 = 0;
    y3 = 0;
end
else if (s1 == 0 && s0 == 1) begin
    y0 = 0;
    y1 = d;
    y2 = 0;
    y3 = 0;
end
else if (s1 == 1 && s0 == 0) begin
    y0 = 0;
    y1 = 0;
    y2 = d;
    y3 = 0;
end
else begin
    y0 = 0;
    y1 = 0;
    y2 = 0;
    y3 = d;
end
end
endmodule
