module tb_demux_1_4;
reg i;
reg [1:0] sel;
wire y0, y1, y2, y3;
demux_1_4 DUT (.i(i),.sel(sel),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
initial begin
    i = 1'b1; sel = 2'b00; #10;
    i = 1'b1; sel = 2'b01; #10;
    i = 1'b1; sel = 2'b10; #10;
    i = 1'b1; sel = 2'b11; #10;
    $finish;
end
always@(*)begin
$display("Time=%0t i=%b sel=%b y0=%b y1=%b y2=%b y3=%b",$time,i,sel,y0,y1,y2,y3);
end
endmodule
