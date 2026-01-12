module tb_instr_mem;

reg [31:0] pc;
wire [31:0] instr ;
instruction_memory dut(.pc(pc),.instr(instr));

initial begin

pc=0;

repeat (8) begin
#10;
$display(" %4t | 0x%08h | 0x%08h", $time,pc,instr);
pc=pc+4;
end 

$display("------------------------------------");
$finish;

end
endmodule
