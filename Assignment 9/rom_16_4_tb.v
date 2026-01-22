`timescale 1ns/1ps

module rom16_4_tb;

    // Testbench signals
    reg [3:0] addr;
    wire [3:0] data;

    // Instantiate the ROM module
    rom16_4 uut (
        .addr(addr),
        .data(data)
    );

    // Test sequence
    initial begin

        $display("Addr  Data");
        $display("-----------");

        addr = 4'b0000; #10;
        addr = 4'b0001; #10;
        addr = 4'b0010; #10;
        addr = 4'b0011; #10;
        addr = 4'b0100; #10;
        addr = 4'b0101; #10;
        addr = 4'b0110; #10;
        addr = 4'b0111; #10;
        addr = 4'b1000; #10;
        addr = 4'b1001; #10;
        addr = 4'b1010; #10;
        addr = 4'b1011; #10;
        addr = 4'b1100; #10;
        addr = 4'b1101; #10;
        addr = 4'b1110; #10;
        addr = 4'b1111; #10;

        $finish;
    end

    // Monitor output
    initial begin
        $monitor("%b    %b", addr, data);
    end

endmodule
