module mux_4_1(
input  i0,i1,i2,i3,
input  sel0,sel1,
output reg out);
//00-> i0 , 01-> i1
//10-> i2,  11-> i3
assign out = sel1 ? (sel0 ? i3 : i2) : (sel0 ? i1 : i0);
endmodule
