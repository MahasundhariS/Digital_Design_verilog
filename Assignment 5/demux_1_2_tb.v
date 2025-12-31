module tb_demux_1_2;
reg i, sel;
wire y0, y1;
demux_1_2 DUT (.i(i), .sel(sel), .y0(y0), .y1(y1));
initial begin
    i=1'b1; sel=1'b0; #10;
    i=1'b1; sel=1'b1; #10;
    i=1'b0; sel=1'b0; #10;
    i=1'b0; sel=1'b1; #10;
    $finish;
end
always @(*) begin
    $display("Time=%0t i=%b sel=%b y0=%b y1=%b",
            $time, i, sel, y0, y1);
end
endmodule
