module tb_mux_4_1;

reg i0, i1, i2, i3;
reg s0, s1;
wire y;

// Instantiate the DUT
mux_4_1 DUT (.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(y));
initial begin
    // Apply inputs
    i0 = 1'b0; i1 = 1'b1; i2 = 1'b0; i3 = 1'b1;
    s1 = 1'b0; s0 = 1'b0;  // Select i0
    #10;
    s1 = 1'b0; s0 = 1'b1;  // Select i1
    #10;
    s1 = 1'b1; s0 = 1'b0;  // Select i2
    #10;
    s1 = 1'b1; s0 = 1'b1;  // Select i3
    #10;
    $finish;
end
always@(s0 or s1)
$display("time %0t INPUT VALUES:i0=%b i1=%b i2=%b i3=%b s0=%b s1=%b OUTPUT VALUES: y=%b",$time,i0,i1,i2,i3,s0,s1,y);

endmodule
