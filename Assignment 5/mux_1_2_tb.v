module tb_mux_2_1;
  reg i0, i1, sel;
  wire y;

  mux_2_1 DUT (.y(y), .i0(i0), .i1(i1), .sel(sel));

  initial begin
    i0 = 1'b0;
    i1 = 1'b1;
    sel = 1'b0;
    #40 $finish;
  end

  always #10 sel = ~sel;

  always @(sel)
    $display("At time=%0t i0=%b i1=%b sel=%b y=%b",
              $time, i0, i1, sel, y);
endmodule
