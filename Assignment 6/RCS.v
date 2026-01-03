module full_adder (
    input a, b, cin,
    output sum, cout
);
assign sum  = a ^ b ^ cin;
assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

module ripple_carry_subtractor (
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] Diff,
    output Cout
);

wire [3:0] B_comp;
wire c1, c2, c3;

// 1's complement of B
assign B_comp = ~B;

// Full Adder chain
full_adder fa0 (A[0], B_comp[0], 1'b1, Diff[0], c1);
full_adder fa1 (A[1], B_comp[1], c1,   Diff[1], c2);
full_adder fa2 (A[2], B_comp[2], c2,   Diff[2], c3);
full_adder fa3 (A[3], B_comp[3], c3,   Diff[3], Cout);

endmodule
