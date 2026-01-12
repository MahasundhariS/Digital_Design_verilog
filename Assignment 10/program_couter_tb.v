module tb_program_counter;

reg clk;
reg rst;
reg pc_src;
reg [31:0] pc_target;
wire [31:0] pc;

program_counter dut (.clk(clk),.rst(rst),.pc_src(pc_src),.pc_target(pc_target),.pc(pc));

// clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    pc_src = 0;
    pc_target = 0;

    #12;
    rst = 0;          // release reset

    #20;
    pc_target = 32'd100;
    pc_src = 1;

    #10;
    pc_src = 0;

    #40;
    $finish;
end

endmodule
