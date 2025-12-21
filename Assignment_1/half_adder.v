module half_adder (
 input  A, B,
 output sum,
 output  Cout);
//continues assignment
//half adder
xor x1 (sum, A, B);
and a1 (Cout, A, B);

endmodule
