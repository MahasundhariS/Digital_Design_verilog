module demux_2_1_be(
input y,sel,
output reg o0,o1);

always @ (y or sel) begin
if (sel) begin o1=y;end
else begin o0=y;end
end 
endmodule
