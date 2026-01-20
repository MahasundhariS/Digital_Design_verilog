module data_memory (
input clk,
input mem_read,
input mem_write,
input [31:0] addr,
input [31:0] write_data,
input [2:0] funct3,
output reg [31:0] read_data);

reg [7:0] mem [0:4095];

wire [31:0] aligned_addr = {addr[31:2],2'b00};

always @(posedge clk) begin
if (mem_write) begin
	case (funct3)
		3'b000: begin 
		mem[addr] <= write_data[7:0];
	end
		3'b001: begin // SB - Store Halfword
		mem[addr] <= write_data[7:0];
		mem[addr +1] <= write_data[15:8]; end
		3'b010: begin
		mem[addr] <= write_data[7:0];
		mem[addr + 1] <= write_data[15:8];
		mem[addr + 2] <= write_data[23:16];
		mem[addr + 3] <= write_data[31:24]; end
	endcase
	end
end
// read operation
/* LB,LH,Lw */
always @(*) begin
	if (mem_read) begin
	  case (funct3)
	    3'b000: begin // Load Byte - LB // signed
		read_data = {{24{mem[addr][7]}},mem[addr]}; //sign extension
	end
	3'b001 : begin //LH - signed
	   read_data = {{16{mem[addr + 1][7] }}, mem[addr +1], mem[addr]};
	 end
	3'b010 :begin //LW - load word
	  	read_data = {mem[addr + 3],mem[addr + 2],mem[addr +1],mem[addr]};
	 end
	3'b100: begin //LB - unsign
		read_data = {24'b0,mem[addr]};
	end
	3'b101: begin //LH - unsign
		read_data = {16'b0,mem[addr+1],mem[addr]};
	end
	default: read_data = 31'h00000000;
endcase
end
else begin 
 read_data = 32'h00000000;
end
end
endmodule
