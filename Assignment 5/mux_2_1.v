//data flow modelling
module mux_2_1(
input [2:0] i0,i1,
input sel,
output out);
//if sel=0 * i0 sel=1 * i1
assign out = sel ? i1:i0;
endmodule 
